package de.jonas.wordtrainer.model;

import lombok.Data;

@Data
public class Feedback {
    String username;
    String cardId;
    String prompt;
    String diff;
    String userInput;
    String isCorrect;
    String timestamp;
    String issueDescription;
}
