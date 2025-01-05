package de.jonas.wordtrainer.service;

import com.github.difflib.text.DiffRow;
import com.github.difflib.text.DiffRowGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DiffService {

    @Autowired
    private UtilService utilService;

    public String getDiffOf(String userInput, String solution, String htmlTag) {
        // # NO REAL DIFF

        // more letters than in solution
        if (userInput.length() > solution.length()) {
            return encloseStringWithHtmlTag(solution, htmlTag);
        }

        // # TECHNICALLY CORRECT BUT NOT THE SOLUTION
        userInput = utilService.processStringForComparison(userInput);
        solution = utilService.processStringForComparison(solution);

        // # REAL DIFF

        // some letters wrong or missing
        DiffRowGenerator generator = DiffRowGenerator.create()
                .showInlineDiffs(true)
                .inlineDiffByWord(false)
                .oldTag(f -> htmlTag) // marking left out or wrong letters
                .newTag(f -> htmlTag) // marking too many letters
                .build();

        DiffRow diffRow = generator.generateDiffRows(List.of(solution), List.of(userInput)).get(0);

        String diff = replaceEverySecondTagWithCloseTag(diffRow.getOldLine(), htmlTag);

        // show as completely wrong if more than one error
        int errorCount = countOccurencesOfSubstringInString(diff, htmlTag);
        if (errorCount > 1) {
            return encloseStringWithHtmlTag(solution, htmlTag);
        }

        // show only wrong letters if only one error
        return diff;
    }

    private static String encloseStringWithHtmlTag(String solution, String htmlTag) {
        return htmlTag + solution + getHtmlClosingTag(htmlTag);
    }

    public static String replaceEverySecondTagWithCloseTag(String string, String htmlOpeningTag) {
        StringBuilder result = new StringBuilder();
        int htmlOpeningTagCount = 0;

        int startIndex = 0;  // Start index for searching
        int nextIndex;       // Index of the next occurrence of the HTML tag

        while ((nextIndex = string.indexOf(htmlOpeningTag, startIndex)) != -1) {
            // Append the text before the HTML tag
            result.append(string, startIndex, nextIndex);

            htmlOpeningTagCount++;

            if (htmlOpeningTagCount % 2 == 0) {
                result.append(getHtmlClosingTag(htmlOpeningTag));
            } else {
                result.append(htmlOpeningTag);
            }

            startIndex = nextIndex + htmlOpeningTag.length();  // Update the start index for the next search
        }

        // Append the remaining text after the last occurrence of the HTML tag
        result.append(string.substring(startIndex));

        return result.toString();
    }

    private static String getHtmlClosingTag(String htmlOpeningTag) {
        boolean htmlOpeningTagHasAttributes = htmlOpeningTag.contains(" ");

        String htmlClosingTag;
        if (htmlOpeningTagHasAttributes) {
            htmlClosingTag = htmlOpeningTag.split(" ")[0].replace("<", "</") + ">";
        } else {
            htmlClosingTag = htmlOpeningTag.replace("<", "</");
        }

        return htmlClosingTag;
    }


    public static int countOccurencesOfSubstringInString(String string, String substring) {
        int count = 0;
        int index = string.indexOf(substring);

        while (index != -1) {
            count++;
            index = string.indexOf(substring, index + 1);
        }

        return count;
    }
}
