package de.jonas.wordtrainer.service;

import de.jonas.wordtrainer.model.Card;
import de.jonas.wordtrainer.model.CardContent;
import de.jonas.wordtrainer.model.Progress;
import de.jonas.wordtrainer.model.SolveAttempt;
import de.jonas.wordtrainer.repository.CardContentRepository;
import de.jonas.wordtrainer.repository.CardRepository;
import de.jonas.wordtrainer.repository.ProgressRepository;
import de.jonas.wordtrainer.repository.SolveAttemptRepository;
import jakarta.transaction.Transactional;
import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.stream.Collectors;

@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Service
@Slf4j
public class CardService {

    @Autowired
    private UtilService utilService;

    @Autowired
    private CardRepository cardRepository;

    @Autowired
    private CardContentRepository cardContentRepository;

    @Autowired
    private ProgressRepository progressRepository;

    @Autowired
    private SolveAttemptRepository solveAttemptRepository;

    @Getter
    @Value("${word-trainer.level-intervals}")
    private int[] levelIntervals;

    public Boolean isCardCorrect(String solveAttempt, String solveAttemptLanguage, Long cardId) {
        List<CardContent> cardContents = cardContentRepository.findAllByCard_IdAndLanguage(cardId, solveAttemptLanguage);

        List<String> sampleSolutionsProcessed = cardContents.stream()
                .map(CardContent::getContent)
                .map(utilService::processStringForComparison)
                .toList();

        String solveAttemptProcessed = utilService.processStringForComparison(solveAttempt);

        return sampleSolutionsProcessed.stream()
                .anyMatch(sampleSolutionProcessed -> sampleSolutionProcessed.equals(solveAttemptProcessed));
    }

    public void updateLevel(Long userId, Long cardId, Progress oldProgress, Boolean isCorrect) {
        boolean isNewCard = (oldProgress == null || oldProgress.getLevel() == 0);
        Progress progress = Progress.builder()
                .userId(userId)
                .cardId(cardId)
                .build();

        if (isCorrect) {
            if (isNewCard) {
                progress.setLevel(1);
            } else {
                int oldLevel = oldProgress.getLevel();
                progress.setLevel(oldLevel < levelIntervals.length ? oldLevel + 1 : oldLevel);
            }
        } else {
            progress.setLevel(isNewCard ? 0 : 1);
        }

        progressRepository.save(progress);
    }

    @Transactional
    public void setLevelToLevelBeforeLastTry(Long userId, Long cardId) {
        List<Progress> progressList = progressRepository.findTop2ByUserIdAndCardIdOrderByCreatedOnDesc(userId, cardId);
        Progress latestProgress = progressList.getLast();
        Progress secondLatestProgress = progressList.getFirst();

        int secondLatestLevel = secondLatestProgress.getLevel();
        int correctedLevel = secondLatestLevel < levelIntervals.length ? secondLatestLevel + 1 : secondLatestLevel;

        Progress newProgress = Progress.builder()
                .userId(userId)
                .cardId(cardId)
                .level(correctedLevel)
                .build();

        progressRepository.delete(latestProgress);
        progressRepository.save(newProgress);
    }

    public Map<Integer, Long> getCardCountByLevel(Long userId) {
        // TODO later add logic to add cards to progress table when a new user is created

        Map<Integer, Long> cardCountByLevel = new HashMap<>();

        // get all approved cards
        List<Card> cardList = cardRepository.findAll().stream()
                .filter(Card::getIsApproved)
                .toList();

        // get all cards that are already in progress
        List<Progress> progressList = progressRepository.findAll().stream()
                .filter(progress -> progress.getUserId().equals(userId))
                .toList();

        // get all approved cards that are not in progress or in level 0
        long newCardsCnt = cardList.stream()
                .filter(card -> progressList.stream()
                        .noneMatch(progress -> progress.getCardId().equals(card.getId())))
                .toList().size() + progressList.stream()
                .filter(progress -> progress.getLevel() == 0)
                .count();

        // add new cards count to progress table
        cardCountByLevel.put(0, newCardsCnt);

        // add all other levels to progress table
        Map<Integer, Long> cardCountByLevelInProgress = progressList.stream()
                .filter(progress -> progress.getLevel() > 0)
                .collect(Collectors.groupingBy(Progress::getLevel, Collectors.counting()));

        cardCountByLevel.putAll(cardCountByLevelInProgress);

        return cardCountByLevel;
    }

    public Optional<Card> getRandomCardOfDueCards(Long userId) {
        List<Card> dueCards = getDueCards(userId, "now");

        return getRandomCard(dueCards);
    }

    public List<Card> getDueCards(Long userId, String when) {
        List<SolveAttempt> solveAttempts = solveAttemptRepository.findLastSolveAttemptsByUserGroupedByCard(userId);

        if (Objects.equals(when, "today")) {
            solveAttempts = solveAttempts.stream().filter(solveAttempt -> !Objects.equals(solveAttempt.getCreatedOn().toLocalDate(), LocalDate.now())).toList();
        }

        List<Card> cardList = cardRepository.findAll().stream()
                .filter(Card::getIsApproved)
                .toList();

        Map<Long, SolveAttempt> latestAttemptsPerCard = getLatestAttemptsPerCardId(solveAttempts);

        return cardList.stream()
                .filter(card -> {
                    SolveAttempt latestSolveAttempt = latestAttemptsPerCard.get(card.getId());

                    if (latestSolveAttempt == null || !latestSolveAttempt.getIsCorrect()) {
                        return true;
                    } else {
                        LocalDateTime createdAtBefore = "today".equals(when) ? LocalDate.now().atStartOfDay() : LocalDateTime.now();
                        int level = progressRepository.findFirstByUserIdAndCardIdAndCreatedOnBeforeOrderByCreatedOnDesc(userId, card.getId(), createdAtBefore)
                                .map(Progress::getLevel)
                                .orElse(1); // since we know the latest attempt was correct, we can assume the level is at least 1

                        long daysSinceLatestAttempt = ChronoUnit.DAYS.between(latestSolveAttempt.getCreatedOn().toLocalDate(), LocalDate.now());
                        return daysSinceLatestAttempt >= levelIntervals[level - 1];
                    }
                })
                .collect(Collectors.toList());
    }

    private static Map<Long, SolveAttempt> getLatestAttemptsPerCardId(List<SolveAttempt> solveAttemptList) {
        // Group all attempts by cardId and find the latest attempt for each card
        Map<Long, SolveAttempt> latestAttempts = new HashMap<>();

        for (SolveAttempt attempt : solveAttemptList) {
            long cardId = attempt.getCardId();
            SolveAttempt latestAttempt = latestAttempts.get(cardId);

            // If no latest attempt exists or the current attempt is newer, update it
            if (latestAttempt == null || attempt.getCreatedOn().isAfter(latestAttempt.getCreatedOn())) {
                latestAttempts.put(cardId, attempt);
            }
        }

        return latestAttempts;
    }


    private static Optional<Card> getRandomCard(List<Card> filteredCards) {
        if (filteredCards.isEmpty()) {
            return Optional.empty();
        }

        int randomCardIndex = (int) (Math.random() * filteredCards.size());
        Card randomCard = filteredCards.get(randomCardIndex);

        return Optional.of(randomCard);
    }

    public String getTextCardLastSeen(Card card) {
        Optional<SolveAttempt> latestSolveAttemptCard = solveAttemptRepository.findById(card.getId());

        return latestSolveAttemptCard
                .map(solveAttempt -> createTextLastSeen(solveAttempt.getCreatedOn()))
                .orElse("neue Karte");
    }

    private String createTextLastSeen(LocalDateTime lastShown) {
        Duration timeSinceLastSeen = Duration.between(lastShown, LocalDateTime.now());
        final String LAST_ANSWERED = "zuletzt beantwortet vor";

        if (timeSinceLastSeen.toMinutes() < 1) {
            long seconds = timeSinceLastSeen.getSeconds();
            return LAST_ANSWERED + " " + seconds + " Sekunden";
        } else if (timeSinceLastSeen.toHours() < 1) {
            long minutes = timeSinceLastSeen.toMinutes();
            return LAST_ANSWERED + " " + minutes + " Minuten";
        } else if (timeSinceLastSeen.toDays() < 1) {
            long hours = timeSinceLastSeen.toHours();
            return LAST_ANSWERED + " " + hours + " Stunden";
        } else {
            long days = timeSinceLastSeen.toDays();
            return LAST_ANSWERED + " " + days + " Tagen";
        }
    }

    public List<Card> getNotApprovedCards() {
        return cardRepository.findAll().stream()
                .filter(card -> !card.getIsApproved())
                .toList();
    }

    public Card getById(Long id) throws Exception {
        return cardRepository.findById(id).orElseThrow(Exception::new);
    }

    public void approveCards(int count) {
        String isbnRedLine1 = "978-3-12-546076-8";
        String isbnRedLine2 = "978-3-12-546077-5";
        if (!getAllByIsApprovedFalseAndBookIsbn(isbnRedLine2).isEmpty()) {
            log.info("Scheduler: Approving unapproved cards of Red Line 2");
            approveUnapprovedCardsOfBook(isbnRedLine2, count);
        } else {
            log.info("Scheduler: Approving unapproved cards of Red Line 1");
            approveUnapprovedCardsOfBook(isbnRedLine1, count);
        }
    }

    public List<Card> getAllByIsApprovedFalseAndBookIsbn(String isbn) {
        return cardRepository.findAllByIsApprovedFalseAndSubUnit_Unit_Book_Isbn(isbn);
    }

    public void approveUnapprovedCardsOfBook(String isbn, int count) {
        List<Card> unapprovedCards = getAllByIsApprovedFalseAndBookIsbn(isbn).stream()
                .sorted(Comparator.comparing(Card::getPageNumber, Comparator.nullsFirst(Comparator.naturalOrder())))
                .limit(count).limit(count)
                .toList();

        approveCards(unapprovedCards);
    }

    private void approveCards(List<Card> unapprovedCards) {
        for (Card card : unapprovedCards) {
            card.setIsApproved(true);
            try {
                log.info("Approving card: " + card);
                cardRepository.save(card);

                String promp = getCardContentWithHighestPriority(card, "de");
                log.info("Card with id {} and prompt '{}' was saved.", card.getId(), promp);
            } catch (Exception e) {
                log.info("Card with id " + card.getId() + " could not be saved.\ne.getMessage()");
            }
        }
    }

    public String getCardContentWithHighestPriority(Card card, String language) {
        return card.getCardContent().stream()
                .filter(cardContent -> cardContent.getLanguage().equals(language))
                .min(Comparator.comparing(CardContent::getPriority))
                .map(CardContent::getContent)
                .orElse("");
    }

}
