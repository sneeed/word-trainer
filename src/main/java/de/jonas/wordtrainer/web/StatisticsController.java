package de.jonas.wordtrainer.web;

import de.jonas.wordtrainer.repository.UserRepository;
import de.jonas.wordtrainer.service.CardService;
import de.jonas.wordtrainer.service.SolveAttemptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/statistics")
public class StatisticsController {
    @Autowired
    UserRepository userRepository;

    @Autowired
    CardService cardService;

    @Autowired
    SolveAttemptService solveAttemptService;

    @GetMapping
    public String getStatistics(@AuthenticationPrincipal UserDetails userDetails, Model model) {
        Long userId = userRepository.getUserByUsername(userDetails.getUsername()).getId();

        String[][] timeSpentOnSolveAttemptsLast30Days = solveAttemptService.getTimeSpentOnSolveAttemptsLast30Days(userId, 2);

        model.addAttribute("cardCountByLevel", cardService.getCardCountByLevel(userId));
        model.addAttribute("dueCards", cardService.getDueCards(userId, "now"));
        model.addAttribute("timeSpentLast30Days", timeSpentOnSolveAttemptsLast30Days);
        model.addAttribute("averageTimeSpentLast30Days", solveAttemptService.getAverageTimeSpentOnSolveAttemptsLast30Days(timeSpentOnSolveAttemptsLast30Days));
        model.addAttribute("levelIntervals", cardService.getLevelIntervals());

        return "statistics";
    }

}
