package de.jonas.wordtrainer.repository;

import de.jonas.wordtrainer.model.SubUnit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SubUnitRepository extends JpaRepository<SubUnit, Long> {
}
