package de.jonas.wordtrainer.web;

import de.jonas.wordtrainer.service.CardService;
import de.jonas.wordtrainer.service.SubUnitService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cards")
@Slf4j
public class CardController {

    @Autowired
    SubUnitService subUnitService;
    @Autowired
    CardService cardService;

    @GetMapping("/approve")
    public String approveCards(@RequestParam int count) {
        cardService.approveCards(count);

        return "Approved " + count + " cards.";
    }


//    @GetMapping("/create")
//    public String showCreateCardForm(Model model) {
//        List<SubUnit> subUnitList = subUnitService.getAll().stream()
//                .sorted(Comparator
//                        .comparing((SubUnit subUnit) -> subUnit.getUnit().getId())
//                        .thenComparing(SubUnit::getId))
//                .toList();
//
//        model.addAttribute("subUnits", subUnitList);
//        if (!model.containsAttribute("newCard")) {
//            model.addAttribute("newCard", new CardPostDto());
//        }
//        model.addAttribute("lastCreatedCardSubUnitId", cardService.getLastCreatedCard().getSubUnit().getId());
//        return "createCard";
//    }

//    @PostMapping
//    public String createCard(@ModelAttribute("newCard") CardPostDto cardPostDto) throws Exception {
//        Card card = Card.builder()
//                .textSideA(cardPostDto.getTextSideA())
//                .textSideB(cardPostDto.getTextSideB())
//                .subUnit(subUnitService.getById(cardPostDto.getSubUnitId()))
//                .isApproved(false)
//                .build();
//
//        card = cardService.save(card);
//
//        log.info(String.format("Added a new card: " + card));
//
//        return "redirect:cards/create";
//    }

//    @DeleteMapping("{id}")
//    public String deleteCard(@PathVariable Long id) {
//        cardService.deleteById(id);
//
//        return "redirect:/cards/approve-cards";
//    }

//    @PutMapping("{id}/approve")
//    public String approveCard(@PathVariable Long id) throws Exception {
//        Card card = cardService.getById(id);
//
//        card.setIsApproved(true);
//
//        cardService.save(card);
//
//        return "redirect:/cards/approve-cards";
//    }

//    @GetMapping("/approve-cards")
//    public String showApproveCardsForm(Model model) {
//        List<Card> cardsNotApproved = cardService.getNotApprovedCards();
//        model.addAttribute("cardList", cardsNotApproved);
//        return "checkCards";
//    }

}
