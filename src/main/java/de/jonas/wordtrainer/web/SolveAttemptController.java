package de.jonas.wordtrainer.web;

import de.jonas.wordtrainer.repository.UserRepository;
import de.jonas.wordtrainer.service.CardService;
import de.jonas.wordtrainer.service.SolveAttemptService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/solveAttempts")
@Slf4j
public class SolveAttemptController {

    @Autowired
    SolveAttemptService solveAttemptService;

    @Autowired
    CardService cardService;

    @Autowired
    UserRepository userRepository;

    @PostMapping("/changeLatestToCorrect")
    public String changeLatestSolveAttemptToCorrect(@AuthenticationPrincipal UserDetails userDetails) {
        Long userId = userRepository.getUserByUsername(userDetails.getUsername()).getId();

        if (solveAttemptService.getLatestSolveAttemptByUserId(userId).isPresent()) {
            Long cardId = solveAttemptService.getLatestSolveAttemptByUserId(userId).get().getCardId();
            cardService.setLevelToLevelBeforeLastTry(userId, cardId);
        }

        solveAttemptService.changeLatestSolveAttemptToCorrect(userId);

        log.info("Changed latest solve attempt to correct for user with id {}", userId);

        return "redirect:/test/cards/get";
    }

}