package de.jonas.wordtrainer.service;

import de.jonas.wordtrainer.model.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class FeedbackService {

    @Autowired
    EmailService emailService;

    @Value("${word-trainer.mail.recipient.mail}")
    private String RECIPIENT_MAIL;

    public void sendFeedback(Feedback feedback) {
        String body = "Feedback from: " + feedback.getUsername() + "\n" +
                "Card ID: " + feedback.getCardId() + "\n" +
                "Prompt: " + feedback.getPrompt() + "\n" +
                "Diff: " + feedback.getDiff() + "\n" +
                "User input: " + feedback.getUserInput() + "\n" +
                "Correct: " + feedback.getIsCorrect() + "\n" +
                "Timestamp: " + feedback.getTimestamp() + "\n" +
                "Issue description: " + feedback.getIssueDescription();
        emailService.sendEmail(RECIPIENT_MAIL, "Word-Trainer: Feedback", body);
    }
}
