package de.jonas.wordtrainer;

import de.jonas.wordtrainer.model.*;
import de.jonas.wordtrainer.repository.CardRepository;
import de.jonas.wordtrainer.repository.ProgressRepository;
import de.jonas.wordtrainer.repository.SolveAttemptRepository;
import de.jonas.wordtrainer.repository.UserRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@Transactional
public class TestControllerTests extends BaseTest {
    @Autowired
    MockMvc mockMvc;

    @Autowired
    CardRepository cardRepository;

    @Autowired
    SolveAttemptRepository solveAttemptRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    ProgressRepository progressRepository;

    @ParameterizedTest
    @WithMockUser(username = "user", roles = "USER")
    @CsvSource({"0,10,0", "1,9,10", "2,9,10", "3,9,10", "4,9,10", "5,9,10", "6,9,10"})
    void answerCorrectDecrementsTodayDueCardsIfCardNotNewTest(int level, int expectedDueCardsCntNow, int expectedCardsProgressInPercent) throws Exception {
        cardRepository.deleteAll();
        assertThat(cardRepository.count(), equalTo(0L));

        // create 10 example cards
        CardContent cardContent = CardContent.builder()
                .content("content")
                .language("en")
                .priority(1)
                .build();

        for (int i = 0; i < 10; i++) {
            Card card = Card.builder()
                    .isApproved(true)
                    .cardContent(List.of(cardContent))
                    .build();
            cardRepository.save(card);
        }

        assertThat(cardRepository.count(), equalTo(10L));

        // 10 due cards today, 10 due cards now, 0% progress
        mockMvc.perform(get("/test/cards/get"))
                .andExpect(status().isOk())
                .andExpect(view().name("test/askCard"))
                .andExpect(model().attributeExists("dueCardsCntToday"))
                .andExpect(model().attribute("dueCardsCntToday", equalTo(10)))
                .andExpect(model().attributeExists("dueCardsCntNow"))
                .andExpect(model().attribute("dueCardsCntNow", equalTo(10)))
                .andExpect(model().attributeExists("cardsProgressInPercent"))
                .andExpect(model().attribute("cardsProgressInPercent", equalTo(0))
                );

        // answer one card correctly
        solveAttemptRepository.deleteAll();
        assertThat(solveAttemptRepository.count(), equalTo(0L));

        long cardId = cardRepository.findAll().getFirst().getId();
        User user = userRepository.getUserByUsername("user");

        Progress progress = Progress.builder()
                .userId(user.getId())
                .cardId(cardId)
                .level(level < 6 ? level + 1 : 6)
                .build();
        progressRepository.save(progress);

        SolveAttempt solveAttempt = SolveAttempt.builder()
                .cardId(cardId)
                .isCorrect(true)
                .user(user)
                .build();
        solveAttemptRepository.save(solveAttempt);

        assertThat(solveAttemptRepository.findAll().stream()
                .filter(SolveAttempt::getIsCorrect)
                .filter(s -> s.getUser().equals(user))
                .count(), equalTo(1L));

        // 10 due cards today, 9 due cards now, 10% progress
        mockMvc.perform(get("/test/cards/get"))
                .andExpect(status().isOk())
                .andExpect(view().name("test/askCard"))
                .andExpect(model().attributeExists("dueCardsCntToday"))
                .andExpect(model().attribute("dueCardsCntToday", equalTo(10)))
                .andExpect(model().attributeExists("dueCardsCntNow"))
                .andExpect(model().attribute("dueCardsCntNow", equalTo(expectedDueCardsCntNow)))
                .andExpect(model().attributeExists("cardsProgressInPercent"))
                .andExpect(model().attribute("cardsProgressInPercent", equalTo(expectedCardsProgressInPercent))
                );
    }
}