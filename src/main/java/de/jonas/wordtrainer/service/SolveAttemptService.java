package de.jonas.wordtrainer.service;

import de.jonas.wordtrainer.model.SolveAttempt;
import de.jonas.wordtrainer.repository.SolveAttemptRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

@Service
public class SolveAttemptService {
    @Autowired
    SolveAttemptRepository solveAttemptRepository;

    public void save(SolveAttempt solveAttempt) {
        solveAttemptRepository.save(solveAttempt);
    }

    private static String convertLocalTimeToString(LocalTime localTime) {
        return String.format("%d %s, %d %s, %d %s",
                localTime.getHour(), (localTime.getHour() == 1 ? "Stunde" : "Stunden"),
                localTime.getMinute(), (localTime.getMinute() == 1 ? "Minute" : "Minuten"),
                localTime.getSecond(), (localTime.getSecond() == 1 ? "Sekunde" : "Sekunden"));
    }

    public String[][] getTimeSpentOnSolveAttemptsLast30Days(Long userId, int minutesThreshold) {
        String[][] timeSpent = new String[30][2];
        LocalDate today = LocalDate.now();

        for (int i = 0; i < 30; i++) {
            LocalDate date = today.minusDays(i);
            timeSpent[29 - i][0] = date.toString();
            timeSpent[29 - i][1] = "0000-00-00T" + getTimeSpentOnSolveAttemptsOfDay(userId, date, minutesThreshold).toString();
        }

        return timeSpent;
    }

    public String getAverageTimeSpentOnSolveAttemptsLast30Days(String[][] timeSpentOnSolveAttemptsLast30Days) {
        Duration totalDuration = Duration.ZERO;
        for (String[] timeSpentOnSolveAttemptsLast30Day : timeSpentOnSolveAttemptsLast30Days) {
            LocalTime localTimes = LocalTime.parse(timeSpentOnSolveAttemptsLast30Day[1].substring(11));
            Duration duration = Duration.ofSeconds(localTimes.toSecondOfDay());
            totalDuration = totalDuration.plus(duration);
        }
        LocalTime localTimeGes = LocalTime.MIDNIGHT.plus(totalDuration.dividedBy(30));

        return convertLocalTimeToString(localTimeGes);
    }

    public LocalTime getTimeSpentOnSolveAttemptsOfDay(Long userId, LocalDate date, int minutesThreshold) {
        LocalDateTime startOfDay = date.atStartOfDay();
        LocalDateTime endOfDay = date.plusDays(1).atStartOfDay();
        List<SolveAttempt> solveAttemptsOfDate = solveAttemptRepository.findAllByUserIdAndCreatedOnBetween(userId, startOfDay, endOfDay).stream()
                .sorted(Comparator.comparing(SolveAttempt::getCreatedOn))
                .toList();

        Duration totalDuration = solveAttemptsOfDate.stream()
                .skip(1)
                .map(s -> Duration.between(solveAttemptsOfDate.get(solveAttemptsOfDate.indexOf(s) - 1).getCreatedOn(), s.getCreatedOn()))
                .filter(d -> d.toMinutes() < minutesThreshold)
                .reduce(Duration::plus)
                .orElse(Duration.ZERO);

        return LocalTime.MIDNIGHT.plus(totalDuration);
    }

    public Optional<SolveAttempt> getLatestSolveAttemptByUserId(Long userId) {
        return solveAttemptRepository.findFirstByUser_IdOrderByCreatedOnDesc(userId);
    }

    public void changeLatestSolveAttemptToCorrect(Long userId) {
        Optional<SolveAttempt> latestSolveAttempt = getLatestSolveAttemptByUserId(userId);
        if (latestSolveAttempt.isPresent()) {
            SolveAttempt solveAttempt = latestSolveAttempt.get();
            solveAttempt.setIsCorrect(true);
            solveAttemptRepository.save(solveAttempt);
        }
    }

}
