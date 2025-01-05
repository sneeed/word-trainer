package de.jonas.wordtrainer.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String redirectToNextCard() {
        return "redirect:/test/cards/get";
    }

}

