package de.jonas.wordtrainer.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "cards")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Card extends CommonColumns {
//     TODO add book, unit and subunit for these cards
// TODO make sure that progress is deleted cascade by cards

    @Column(name = "page_number")
    Integer pageNumber;

    @Column(name = "is_approved")
    Boolean isApproved = false;

    @OneToMany(mappedBy = "card", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    @ToString.Exclude
    List<CardContent> cardContent;

    @ManyToOne
    @JoinColumn(name = "sub_unit_id")
    private SubUnit subUnit;
}
