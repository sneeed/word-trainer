package de.jonas.wordtrainer.scheduler;

import de.jonas.wordtrainer.service.CardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Component
@Slf4j
public class CardUpdateScheduler {
    @Autowired
    private CardService cardService;

    @Value("${scheduler.approve-cards.enabled}")
    private boolean schedulerApproveCardsEnabled;

    @Value("${scheduler.keep-awake.enabled}")
    private boolean schedulerKeepAwakeEnabled;

    //    TODO Config var keys should use only alphanumeric characters and the underscore character (_) to ensure that they are accessible from all programming languages. Config var keys should not include the hyphen character.
    @Value("${HEROKU_APP_DEFAULT_DOMAIN_NAME}")
    private String baseUrl;

    @Scheduled(cron = "${scheduler.approve-cards.cron-expression}")
    public void approveUnapprovedCards() {
        if (!schedulerApproveCardsEnabled) {
            log.info("Scheduler: Scheduler for approving cards is disabled, won't approve unapproved cards");
            return;
        }

        LocalDateTime lastDayBeforeSummerHolidays2024 = LocalDate.of(2024, 7, 26).atStartOfDay();
        int unapprovedCardsCnt = cardService.getNotApprovedCards().size();
        int daysTillSummerHolidays2024 = (int) Duration.between(LocalDateTime.now(), lastDayBeforeSummerHolidays2024).toDaysPart();
        int cardsToApproveCnt = (int) Math.ceil((double) unapprovedCardsCnt / daysTillSummerHolidays2024);

        log.info(String.format("Scheduler: %s days till the last day before summer holidays 2024.\n%s unapproved cards. Approving %s unapproved cards to have no unapproved cards left till then:", daysTillSummerHolidays2024, unapprovedCardsCnt, cardsToApproveCnt));

        cardService.approveCards(cardsToApproveCnt);
    }

    @Scheduled(fixedRate = 1000 * 60 * 30)
    public void keepAwake() {
        if (!schedulerKeepAwakeEnabled) {
            log.info("Scheduler: Scheduler for keeping awake is disabled, won't keep awake");
            return;
        }
        WebClient webClient = WebClient.create(baseUrl);
        String queryParam = "/?keep-awake";
        log.info("Scheduler: Keeping awake with uri: " + baseUrl + queryParam);

        webClient.get()
                .uri(queryParam)
                .retrieve()
                .bodyToMono(String.class)
                .block();
    }
}

