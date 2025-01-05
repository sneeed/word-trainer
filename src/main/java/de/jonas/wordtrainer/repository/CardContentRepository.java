package de.jonas.wordtrainer.repository;

import de.jonas.wordtrainer.model.CardContent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CardContentRepository extends JpaRepository<CardContent, Long> {

    List<CardContent> findAllByCard_IdAndLanguage(Long cardId, String language);

}
