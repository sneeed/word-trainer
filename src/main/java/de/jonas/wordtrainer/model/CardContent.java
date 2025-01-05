package de.jonas.wordtrainer.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "card_contents")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CardContent extends CommonColumns {

    @Column(name = "content")
    String content;

    @Column(name = "language")
    String language; // TODO change to enum

    @Column(name = "priority")
    Integer priority;

    @ManyToOne
    @JoinColumn(name = "card_id")
    Card card;
}
