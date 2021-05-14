package fr.cpe.s8.atelier2.view.controllers;

import fr.cpe.s8.atelier2.model.dto.UserBase;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.services.UserService;
import fr.cpe.s8.atelier2.model.assemblers.UserAssembler;
import fr.cpe.s8.atelier2.view.controllers.annotations.GetConnectedUser;
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
import org.springframework.web.server.ResponseStatusException;

@CrossOrigin(origins = "*")
@RestController("User")
@RequestMapping("/user")
public class UserController
{
    @Autowired()
    private UserService service;

    @Autowired
    private UserAssembler userAssembler;

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
        if (connectedUser != null)
        {
            return userAssembler.toDto(connectedUser);
        }
        throw new ResponseStatusException(HttpStatus.NOT_ACCEPTABLE, "You must be logged to use this endpoint");
    }

}
