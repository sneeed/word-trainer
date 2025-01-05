package de.jonas.wordtrainer.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "progress")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Progress extends CommonColumns {

    @Column(name = "user_id")
    Long userId;

    @Column(name = "card_id")
    Long cardId;

    @Column(name = "level")
    Integer level;
}
