package de.jonas.wordtrainer.repository;

import de.jonas.wordtrainer.model.Progress;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public interface ProgressRepository extends JpaRepository<Progress, Long> {

    Optional<Progress> findFirstByUserIdAndCardIdOrderByCreatedOnDesc(Long userId, Long cardId);

    List<Progress> findTop2ByUserIdAndCardIdOrderByCreatedOnDesc(Long userId, Long cardId);

    Optional<Progress> findFirstByUserIdAndCardIdAndCreatedOnBeforeOrderByCreatedOnDesc(Long userId, Long cardId, LocalDateTime createdAt);
}
