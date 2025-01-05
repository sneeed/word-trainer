package de.jonas.wordtrainer.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "solve_attempts")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SolveAttempt extends CommonColumns {

    @Column(name = "card_id")
    Long cardId;

    @Column(name = "user_input")
    String userInput;

    @Column(name = "is_correct")
    Boolean isCorrect;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    User user;
}
