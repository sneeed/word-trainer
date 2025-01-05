package de.jonas.wordtrainer.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "sub_units")
@Getter
@Setter
public class SubUnit extends CommonColumns {

    @Column(name = "name")
    String name;

    @ManyToOne
    @JoinColumn(name = "unit_id")
    private Unit unit;

    @OneToMany(mappedBy="subUnit")
    private Set<Card> cards;
}
