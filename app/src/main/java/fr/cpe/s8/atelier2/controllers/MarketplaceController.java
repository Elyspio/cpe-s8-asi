package fr.cpe.s8.atelier2.controllers;

import fr.cpe.s8.atelier2.model.services.MarketPlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.server.PathParam;

@RestController("marketplace")
public class MarketplaceController
{
    @Autowired()
    private MarketPlaceService service;



    @RequestMapping(value = "marketplace/sell", method = RequestMethod.POST)
    public void sell()
    {
    }

    @RequestMapping(value = "marketplace/buy/{idCard}", method = RequestMethod.POST)
    public double buy(@PathVariable("idCard") Long idCard)
    {
        return  service.buy(0L, idCard);
    }

    @RequestMapping(value = "marketplace/cards", method = RequestMethod.GET)
    public void getCards()
    {

    }

}
