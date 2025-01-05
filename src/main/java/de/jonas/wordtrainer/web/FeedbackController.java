package de.jonas.wordtrainer.web;

import de.jonas.wordtrainer.model.Feedback;
import de.jonas.wordtrainer.service.FeedbackService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/feedback")
@Slf4j
public class FeedbackController {

    @Autowired
    FeedbackService feedbackService;

    @PostMapping
    public ResponseEntity<String> sendFeedback(@ModelAttribute("feedback") Feedback feedback) {
        feedbackService.sendFeedback(feedback);
        log.info("Feedback sent with content" + feedback);
        return ResponseEntity.ok().build();
    }


}
