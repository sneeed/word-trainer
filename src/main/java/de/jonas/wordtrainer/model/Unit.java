package de.jonas.wordtrainer.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "units")
@Getter
@Setter
public class Unit extends CommonColumns {

    @Column(name = "name")
    String name;

    @ManyToOne
    @JoinColumn(name = "book_id")
    private Book book;
}
