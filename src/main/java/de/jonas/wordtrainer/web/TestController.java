package de.jonas.wordtrainer.web;

import de.jonas.wordtrainer.model.Card;
import de.jonas.wordtrainer.model.Progress;
import de.jonas.wordtrainer.model.SolveAttempt;
import de.jonas.wordtrainer.model.User;
import de.jonas.wordtrainer.model.Feedback;
import de.jonas.wordtrainer.repository.UserRepository;
import de.jonas.wordtrainer.service.*;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/test")
@Slf4j
public class TestController {

    @Autowired
    private CardService cardService;

    @Autowired
    private DiffService diffService;

    @Autowired
    private SolveAttemptService solveAttemptService;

    @Autowired
    private ProgressService progressService;

    @Value("${word-trainer.diff.html-opening-tag}")
    private String HTML_OPENING_TAG;

    @Autowired
    private UserRepository userRepository;

    private static void logGettingCard(Long userId, User user, Card randomCard, String prompt) {
        log.info("----------------------------------------------------------");
        log.info("Getting card for user with id {} and name {}", userId, user.getUsername());
        log.info("Getting random card: {}", randomCard);
        log.info("With prompt: {}", prompt);
        log.info("----------------------------------------------------------");
    }

    @GetMapping("/cards/get")
    public String getCard(@AuthenticationPrincipal UserDetails userDetails, Model model, HttpSession session) throws Exception {
        User user = userRepository.getUserByUsername(userDetails.getUsername());
        Long userId = user.getId();
        String formToken = UUID.randomUUID().toString();

        Long latestRandomCardId = (Long) session.getAttribute("latestRandomCardId");
        Optional<SolveAttempt> latestSolveAttempt = solveAttemptService.getLatestSolveAttemptByUserId(userId);

        Card randomCard;
        if (latestRandomCardId != null && latestSolveAttempt.isPresent() && !latestSolveAttempt.get().getCardId().equals(latestRandomCardId)) {
            randomCard = cardService.getById(latestRandomCardId);
        } else {
            randomCard = cardService.getRandomCardOfDueCards(userId).orElse(null);
        }

        if (randomCard != null) {
            session.setAttribute("latestRandomCardId", randomCard.getId());
        }

        String prompt = "";

        String textCardLastSeen = "";
        if (randomCard != null) {
            textCardLastSeen = cardService.getTextCardLastSeen(randomCard);
            prompt = cardService.getCardContentWithHighestPriority(randomCard, "de");
        }

        logGettingCard(userId, user, randomCard, prompt);

        session.setAttribute("formToken", formToken);

        addProgressBarModelAttributes(model, userId);
        model.addAttribute("formToken", formToken);
        model.addAttribute("card", randomCard);
        model.addAttribute("prompt", prompt);
        model.addAttribute("textCardLastSeen", textCardLastSeen);
        model.addAttribute("solveAttempt", new SolveAttempt());
        model.addAttribute("feedback", new Feedback());

        return "test/askCard";
    }

    private void addProgressBarModelAttributes(Model model, Long userId) {
        int dueCardsCntToday = cardService.getDueCards(userId, "today").size();
        int dueCardsCntNow = cardService.getDueCards(userId, "now").size();
        int cardsProgressInPercent = dueCardsCntToday == 0 ? 100 : (dueCardsCntToday - dueCardsCntNow) * 100 / dueCardsCntToday;

        model.addAttribute("dueCardsCntToday", dueCardsCntToday);
        model.addAttribute("dueCardsCntNow", dueCardsCntNow);
        model.addAttribute("cardsProgressInPercent", cardsProgressInPercent);
    }

    @GetMapping("/cards/check")
    public String getResult(@AuthenticationPrincipal UserDetails userDetails, Model model) {
        User user = userRepository.getUserByUsername(userDetails.getUsername());
        Long userId = user.getId();

        Card card = ((Card) model.getAttribute("card"));
        String prompt;

        if (card == null) {
            return "redirect:/test/cards/get";
        } else {
            prompt = cardService.getCardContentWithHighestPriority(card, "de");

            Long cardId = card.getId();
            Progress progress = progressService.getLatestProgress(userId, cardId);

            Integer level = (progress != null) ? progress.getLevel() : 0;

            log.info("----------------------------------------------------------");
            log.info("Getting result for user with id {} and name {}", userId, user.getUsername());
            if (model.getAttribute("isCorrect") != null) {
                log.info("Answer was " + ((Boolean) model.getAttribute("isCorrect") ? "correct" : "incorrect"));
            }
            log.info("Moving card with id {} to level {}", cardId, level);
            log.info("----------------------------------------------------------");

            String ttsFilename = TTSService.computeFilename(cardService.getCardContentWithHighestPriority(card, "en"), "keira");

            addProgressBarModelAttributes(model, userId);
            model.addAttribute("level", level);
            model.addAttribute("prompt", prompt);
            model.addAttribute("isCorrect", model.getAttribute("isCorrect"));
            model.addAttribute("feedback", new Feedback());
            model.addAttribute("ttsFilename", ttsFilename);

            return "test/resultCard";
        }
    }

    @PostMapping("/cards/check")
    public String checkCard(@AuthenticationPrincipal UserDetails userDetails,
                            @ModelAttribute("solveAttempt") SolveAttempt solveAttempt,
                            RedirectAttributes redirectAttributes,
                            @RequestParam("formToken") String formToken,
                            HttpSession session) throws Exception {
        Long userId = userRepository.getUserByUsername(userDetails.getUsername()).getId();

        Long cardId = solveAttempt.getCardId();
        Card card = cardService.getById(cardId);

        String solveAttemptLanguage = "en";

        String sampleSolution = cardService.getCardContentWithHighestPriority(card, solveAttemptLanguage);

        Progress progress = progressService.getLatestProgress(userId, cardId);

        Boolean isCorrect = cardService.isCardCorrect(solveAttempt.getUserInput(), solveAttemptLanguage, cardId);
        cardService.updateLevel(userId, cardId, progress, isCorrect);

        solveAttempt.setIsCorrect(isCorrect);
        solveAttempt.setUser(userRepository.getUserByUsername(userDetails.getUsername()));
        solveAttemptService.save(solveAttempt);

        String storedToken = (String) session.getAttribute("formToken");
        if (!formToken.equals(storedToken)) {
            redirectAttributes.addFlashAttribute("alreadyPosted", true);
        }

        String diff = isCorrect
                ? sampleSolution
                : diffService.getDiffOf(solveAttempt.getUserInput(), sampleSolution, HTML_OPENING_TAG);

        log.info("----------------------------------------------------------");
        log.info("Checking card for user with id {} and name {}", userId, userDetails.getUsername());
        log.info("User input: {}", solveAttempt.getUserInput());
        log.info("Sample solution: {}", sampleSolution);
        log.info("Diff: {}", diff);
        log.info("----------------------------------------------------------");

        redirectAttributes.addFlashAttribute("card", card);
        redirectAttributes.addFlashAttribute("diff", diff);
        redirectAttributes.addFlashAttribute("isCorrect", isCorrect);

        session.removeAttribute("formToken");

        return "redirect:/test/cards/check";
    }

}
