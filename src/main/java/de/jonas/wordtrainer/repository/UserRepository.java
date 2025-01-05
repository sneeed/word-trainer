package de.jonas.wordtrainer.repository;

import de.jonas.wordtrainer.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User getUserByUsername(String username);
}
