package de.jonas.wordtrainer.service;

import de.jonas.wordtrainer.repository.CardContentRepository;
import io.netty.handler.logging.LogLevel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.http.client.reactive.ReactorClientHttpConnector;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.ExchangeFilterFunction;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;
import reactor.netty.http.client.HttpClient;
import reactor.netty.transport.logging.AdvancedByteBufFormat;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Locale;

@Service
@Slf4j
public class TTSService {

    private final WebClient webClient;

    @Autowired
    private CardContentRepository cardContentRepository;

    @Value("${word-trainer.tts.narakeet.api-key}")
    private String NARAKEET_API_KEY;

    @Value("${word-trainer.tts.scheduler.enabled}")
    private boolean ttsSchedulerEnabled;

    public TTSService(WebClient.Builder webClientBuilder) {
        HttpClient httpClient = HttpClient
                .create()
                .wiretap("reactor.netty.http.client.HttpClient",
                        LogLevel.DEBUG, AdvancedByteBufFormat.TEXTUAL);

        this.webClient = webClientBuilder
                .baseUrl("https://api.narakeet.com")
                .defaultHeader("Accept", "audio/mpeg")
                .defaultHeader("Content-Type", "text/plain")
                .defaultHeader("x-api-key", NARAKEET_API_KEY)
                .clientConnector(new ReactorClientHttpConnector(httpClient))
                .filter(logRequest())
                .build();
    }

    public static String computeFilename(String content, String voiceId) {
        String contentProcessed = content
                .strip()
                .toLowerCase(Locale.ENGLISH)
                .replaceAll("[^a-z0-9]", "_")
                .replaceAll("_+", "_");

        String hashContent = String.valueOf(content.hashCode());

        return voiceId + "_" + contentProcessed + "_" + hashContent + ".mp3";
    }

    @Scheduled(cron = "${word-trainer.tts.scheduler.create-tts.cron-expression}")
    public void createTTS() {
        if (ttsSchedulerEnabled) {
            cardContentRepository.findAll().stream()
                    .filter(cardContent -> cardContent.getLanguage().equals("en"))
                    .filter(cardContent -> cardContent.getPriority() == 1)
                    .forEach(cardContent -> convertTextToAudio(cardContent.getContent()));
        }
    }

    public void convertTextToAudio(String content) {
        String VOICE_ID = "keira";
        String filename = computeFilename(content, VOICE_ID);
        boolean audioFileExists = Files.exists(Path.of("src/main/resources/static/sounds/tts_english", filename));

        if (audioFileExists) {
            log.info("Audio file for '" + content + "' already exists.");
            return;
        }

        byte[] bodyBytes = content.getBytes(StandardCharsets.UTF_8);

        byte[] audioBytes = webClient.post()
                .uri("/text-to-speech/m4a?voice=" + VOICE_ID)
                .bodyValue(bodyBytes)
                .accept(MediaType.APPLICATION_OCTET_STREAM)
                .retrieve()
                .bodyToMono(byte[].class)
                .block(); // blocking for simplicity, consider using reactive programming for non-blocking

        if (audioBytes != null) {
            saveBytesToStaticFolder(audioBytes, filename);
        }
    }

    private void saveBytesToStaticFolder(byte[] bytes, String filename) {
        try {
            Path filePath = Path.of("src/main/resources/static/sounds/tts_english", filename);
            Files.write(filePath, bytes);
            log.info("Successfully saved audio to the static folder.");
        } catch (IOException e) {
            log.error("Error while saving audio file.", e);
            // Handle the exception
        }
    }

    private ExchangeFilterFunction logRequest() {
        return ExchangeFilterFunction.ofRequestProcessor(clientRequest -> {
            log.info("Request: {} {}", clientRequest.method(), clientRequest.url());
            clientRequest.headers().forEach((name, values) ->
                    values.forEach(value -> log.info("{}={}", name, value)));
            clientRequest.body();
            log.info("Request Body: {}", clientRequest.body());
            return Mono.just(clientRequest);
        });
    }
}
