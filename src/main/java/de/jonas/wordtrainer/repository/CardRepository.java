package de.jonas.wordtrainer.repository;

import de.jonas.wordtrainer.model.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CardRepository extends JpaRepository<Card, Long> {

    List<Card> findAllByIsApprovedFalseAndSubUnit_Unit_Book_Isbn(String isbn);
}
