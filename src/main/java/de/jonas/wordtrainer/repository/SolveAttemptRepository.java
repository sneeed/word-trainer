package de.jonas.wordtrainer.repository;

import de.jonas.wordtrainer.model.SolveAttempt;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface SolveAttemptRepository extends JpaRepository<SolveAttempt, Long> {
    Optional<SolveAttempt> findFirstByUser_IdOrderByCreatedOnDesc(Long userId);

    List<SolveAttempt> findAllByUserIdAndCreatedOnBetween(Long userId, LocalDateTime startOfDay, LocalDateTime endOfDay);

    @Query("SELECT sa FROM SolveAttempt sa WHERE sa.user.id = :userId AND sa.id IN " +
            "(SELECT MAX(sa2.id) FROM SolveAttempt sa2 WHERE sa2.user.id = :userId GROUP BY sa2.cardId)")
    List<SolveAttempt> findLastSolveAttemptsByUserGroupedByCard(Long userId);
}
