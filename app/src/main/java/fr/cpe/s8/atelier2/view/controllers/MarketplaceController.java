package fr.cpe.s8.atelier2.view.controllers;

import fr.cpe.s8.atelier2.model.assemblers.CardBaseAssembler;
import fr.cpe.s8.atelier2.model.dto.CardBase;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.services.MarketPlaceService;
import fr.cpe.s8.atelier2.view.controllers.annotations.GetConnectedUser;
import io.swagger.v3.oas.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@CrossOrigin(origins = "*")
@RestController("marketplace")
@RequestMapping("/marketplace")

public class MarketplaceController
{
    @Autowired()
    private MarketPlaceService service;


    @Autowired
    private CardBaseAssembler cardAssembler;

    @RequestMapping(value = "/sell/{idCard}", method = RequestMethod.POST)
    @Parameter(name = "connectedUser", hidden = true)
    public double sell(@PathVariable("idCard") Long idCard, @GetConnectedUser UserEntity connectedUser)
    {
        if (connectedUser != null && connectedUser.getUserId() != null)
        {
            return service.sell(connectedUser.getUserId(), idCard);
        }
        throw new ResponseStatusException(HttpStatus.NOT_ACCEPTABLE, "You must be logged to use this endpoint");
    }

    @RequestMapping(value = "/buy/{idCard}", method = RequestMethod.POST)
    @Parameter(name = "connectedUser", hidden = true)
    public double buy(@PathVariable("idCard") Long idCard, @GetConnectedUser UserEntity connectedUser)
    {
        if (connectedUser != null && connectedUser.getUserId() != null)
        {
            return service.buy(connectedUser.getUserId(), idCard);
        }
        throw new ResponseStatusException(HttpStatus.NOT_ACCEPTABLE, "You must be logged to use this endpoint");

    }

    @RequestMapping(value = "/cards", method = RequestMethod.GET)
    public List<CardBase> getCards()
    {
        return service.getCards().stream()
                .map(x -> cardAssembler.toDto(x))
                .collect(Collectors.toList());
    }

}
