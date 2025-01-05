package de.jonas.wordtrainer.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "books")
@Getter
@Setter
public class Book extends CommonColumns {

    @Column(name = "name")
    String name;

    @Column(name = "isbn")
    String isbn;

    @OneToMany(mappedBy = "book")
    private Set<Unit> units;
}
