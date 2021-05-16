package fr.cpe.s8.atelier2.view.controllers;

import fr.cpe.s8.atelier2.model.assemblers.CardBaseAssembler;
import fr.cpe.s8.atelier2.model.assemblers.UserBaseAssembler;
import fr.cpe.s8.atelier2.model.dto.CardBase;
import fr.cpe.s8.atelier2.model.dto.UserBase;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.services.UserService;
import fr.cpe.s8.atelier2.view.controllers.annotations.GetConnectedUser;
import fr.cpe.s8.atelier2.view.exceptions.RuntimeException;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@CrossOrigin(origins = "*")
@RestController("User")
@RequestMapping("/user")
public class UserController
{
    @Autowired()
    private UserService service;

    @Autowired
    private UserBaseAssembler userAssembler;

    @Autowired
    private CardBaseAssembler cardBaseAssembler;

    @Operation(summary = "Get connected user's information")
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Connected user's information",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = UserBase.class))
            ),
            @ApiResponse(
                    responseCode = "406",
                    description = "You must be logged to use this endpoint",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = RuntimeException.class))
            ),
    })
    @RequestMapping(value = "/connected", method = RequestMethod.GET, produces = "application/json")
    @ResponseStatus(code = HttpStatus.OK)
    @Parameter(name = "connectedUser", hidden = true)
    public UserBase getAuthenticatedUser(@GetConnectedUser UserEntity connectedUser)
    {
        if (connectedUser != null && connectedUser.getUserId() != null)
        {
            return userAssembler.toDto(connectedUser);
        }
        throw new ResponseStatusException(HttpStatus.NOT_ACCEPTABLE, "You must be logged to use this endpoint");
    }

    @Operation(summary = "Get connected user's cards")
    @ApiResponses({
            @ApiResponse(
                    responseCode = "200",
                    description = "Connected user's cards",
                    content = @Content(
                            mediaType = "application/json",
                            array = @ArraySchema(schema = @Schema(implementation = CardBase.class))
                    )
            ),
            @ApiResponse(
                    responseCode = "406",
                    description = "You must be logged to use this endpoint",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = RuntimeException.class))
            ),
    })
    @RequestMapping(value = "/cards", method = RequestMethod.GET, produces = "application/json")
    @ResponseStatus(code = HttpStatus.OK)
    @Parameter(name = "connectedUser", hidden = true)
    public List<CardBase> getUserCards(@GetConnectedUser UserEntity connectedUser)
    {
        if (connectedUser != null && connectedUser.getUserId() != null)
        {
            return service.getUserCards(connectedUser)
                    .stream()
                    .map(cardBaseAssembler::toDto)
                    .collect(Collectors.toList());
        }
        throw new ResponseStatusException(HttpStatus.NOT_ACCEPTABLE, "You must be logged to use this endpoint");
    }

}
