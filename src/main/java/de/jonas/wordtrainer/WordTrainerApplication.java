package de.jonas.wordtrainer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class WordTrainerApplication {

	public static void main(String[] args) {
		SpringApplication.run(WordTrainerApplication.class, args);
	}

}
