package de.jonas.wordtrainer.web.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CardPostDto {
    String textSideA;
    String textSideB;
    Long subUnitId;
}
