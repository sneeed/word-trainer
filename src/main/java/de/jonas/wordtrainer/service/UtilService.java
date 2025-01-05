package de.jonas.wordtrainer.service;

import org.springframework.stereotype.Service;

@Service
public class UtilService {
    public String processStringForComparison(String input) {
        return input.strip()
                .replaceAll("[()]", "")
                .replaceFirst("^to ", "")
                .replaceAll("'", "’") // see https://en.wikipedia.org/wiki/Apostrophe#Unicode
                .replaceAll("[ ]*\\.\\.\\.\\?$", " ...?")
                .replaceAll("[ ]*\\.\\.\\.!$", " ...!");
    }
}
