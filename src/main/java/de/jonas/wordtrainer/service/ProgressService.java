package de.jonas.wordtrainer.service;

import de.jonas.wordtrainer.model.Progress;
import de.jonas.wordtrainer.repository.ProgressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProgressService {

    @Autowired
    ProgressRepository progressRepository;

    public Progress getLatestProgress(Long userId, Long cardId) {
        return progressRepository.findFirstByUserIdAndCardIdOrderByCreatedOnDesc(userId, cardId).orElse(null);
    }
}
