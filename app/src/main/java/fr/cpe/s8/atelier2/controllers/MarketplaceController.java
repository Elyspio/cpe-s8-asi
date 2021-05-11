package fr.cpe.s8.atelier2.controllers;

import fr.cpe.s8.atelier2.assemblers.CardAssembler;
import fr.cpe.s8.atelier2.model.dto.CardBase;
import fr.cpe.s8.atelier2.model.services.MarketPlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;


@RestController("marketplace")
public class MarketplaceController
{
    @Autowired()
    private MarketPlaceService service;


    @Autowired
    private CardAssembler cardAssembler;

    @RequestMapping(value = "marketplace/sell", method = RequestMethod.POST)
    public double sell(@PathVariable("idCard") Long idCard)
    {
        return service.sell(0L, idCard);
    }

    @RequestMapping(value = "marketplace/buy/{idCard}", method = RequestMethod.POST)
    public double buy(@PathVariable("idCard") Long idCard)
    {
        return service.buy(0L, idCard);
    }

    @RequestMapping(value = "marketplace/cards", method = RequestMethod.GET)
    public List<CardBase> getCards()
    {
        return service.getCards().stream()
                .map(x -> cardAssembler.toDto(x))
                .collect(Collectors.toList());
    }

}
