package fr.cpe.s8.atelier2.view.controllers;

import fr.cpe.s8.atelier2.model.assemblers.CardDetailAssembler;
import fr.cpe.s8.atelier2.model.dto.CardDetail;
import fr.cpe.s8.atelier2.model.services.CardService;
import fr.cpe.s8.atelier2.view.exceptions.RuntimeException;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*")
@RestController("Card")
@RequestMapping("/card")
public class CardController
{
    @Autowired()
    private CardService service;
    @Autowired()
    private CardDetailAssembler cardDetailAssembler;

    @Operation(summary = "Get connected user's information")
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Connected user's information",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = CardDetail.class))
            ),
            @ApiResponse(
                    responseCode = "401",
                    description = "You must be logged to use this endpoint",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = RuntimeException.class))
            ),
    })
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, produces = "application/json")
    @ResponseStatus(code = HttpStatus.OK)
    @Parameter(name = "connectedUser", hidden = true)
    public CardDetail getCardDetail(@PathVariable("id") Long id)
    {
        return cardDetailAssembler.toDto(service.getDetail(id));
    }

}
