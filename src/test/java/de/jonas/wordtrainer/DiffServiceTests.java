package de.jonas.wordtrainer;

import de.jonas.wordtrainer.service.DiffService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.springframework.beans.factory.annotation.Autowired;

public class DiffServiceTests extends BaseTest {
    @Autowired
    DiffService diffService;

    @ParameterizedTest
    @CsvSource(delimiter = '|', value = {
            // with <mark> tag
            "<mark>|sentense|sentence|senten<mark>c</mark>e", // single wrong letter in the middle
            "<mark>|hole|whole|<mark>w</mark>hole", // missing letter in front
            "<mark>|to|too|to<mark>o</mark>", // missing letter at the end
            "<mark>|bye|goodbye|<mark>good</mark>bye", // missing letters in front
            "<mark>|goye|goodbye|go<mark>odb</mark>ye", // missing letters in the middle
            "<mark>|good|goodbye|good<mark>bye</mark>", // missing letters at the end
            "<mark>|somesomeone|someone|<mark>someone</mark>", // too many letters in front
            "<mark>|someoneone|someone|<mark>someone</mark>", // too many letters at the end
            "<mark>|onesomeoneone|someone|<mark>someone</mark>", // too many letters in front and at the end
            "<mark>|mad|crazy|<mark>crazy</mark>", // wrong word
            "<mark>|Whats a shame!|What a shame!|<mark>What a shame!</mark>", // one letter too much in the middle

            // with <span style="font-weight: bold;background-color: #ffd85e;"> tag
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|sentense|sentence|senten<span style=\"font-weight: bold;background-color: #ffd85e;\">c</span>e", // single wrong letter in the middle
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|hole|whole|<span style=\"font-weight: bold;background-color: #ffd85e;\">w</span>hole", // missing letter in front
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|to|too|to<span style=\"font-weight: bold;background-color: #ffd85e;\">o</span>", // missing letter at the end
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|bye|goodbye|<span style=\"font-weight: bold;background-color: #ffd85e;\">good</span>bye", // missing letters in front
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|goye|goodbye|go<span style=\"font-weight: bold;background-color: #ffd85e;\">odb</span>ye", // missing letters in the middle
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|good|goodbye|good<span style=\"font-weight: bold;background-color: #ffd85e;\">bye</span>", // missing letters at the end
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|somesomeone|someone|<span style=\"font-weight: bold;background-color: #ffd85e;\">someone</span>", // too many letters in front
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|someoneone|someone|<span style=\"font-weight: bold;background-color: #ffd85e;\">someone</span>", // too many letters at the end
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|onesomeoneone|someone|<span style=\"font-weight: bold;background-color: #ffd85e;\">someone</span>", // too many letters in front and at the end
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|mad|crazy|<span style=\"font-weight: bold;background-color: #ffd85e;\">crazy</span>", // wrong word
            "<span style=\"font-weight: bold;background-color: #ffd85e;\">|Whats a shame!|What a shame!|<span style=\"font-weight: bold;background-color: #ffd85e;\">What a shame!</span>" // one s too much in the middle
    })
    public void getDiffTest(String htmlOpeningTag, String userInput, String sampleSolution, String expectedValue) {
        String diff = diffService.getDiffOf(userInput, sampleSolution, htmlOpeningTag);
        Assertions.assertThat(diff).isEqualTo(expectedValue);
    }
}
