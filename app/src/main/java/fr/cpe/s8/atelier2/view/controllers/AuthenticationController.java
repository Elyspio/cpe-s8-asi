package fr.cpe.s8.atelier2.view.controllers;

import fr.cpe.s8.atelier2.model.dto.UserBase;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.services.UserService;
import fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService;
import fr.cpe.s8.atelier2.view.assemblers.UserAssembler;
import fr.cpe.s8.atelier2.view.controllers.annotations.GetConnectedUser;
import fr.cpe.s8.atelier2.view.controllers.requests.UserLoginRequest;
import fr.cpe.s8.atelier2.view.controllers.requests.UserRegisterRequest;
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

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@RestController("authentication")
@RequestMapping("/authentication")
public class AuthenticationController
{

    public static final String authenticationToken = "authentication_token";

    @Autowired()
    private AuthenticationService service;

    @Autowired()
    private UserService userService;

    @Autowired
    private UserAssembler userAssembler;

    @Operation(summary = "Create a new account for a user")
    @ApiResponses({
            @ApiResponse(responseCode = "201", description = "Account created",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = UserBase.class))
            ),
            @ApiResponse(responseCode = "409", description = "Login already used",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = RuntimeException.class)
                    )
            ),
    })
    @RequestMapping(value = "/register", method = RequestMethod.POST, produces = "application/json")
    @ResponseStatus(code = HttpStatus.CREATED)
    public UserBase register(@RequestBody UserRegisterRequest param)
    {
        return userAssembler.toDto(service.register(param));
    }

    @Operation(summary = "Init login")
    @ApiResponses({
            @ApiResponse(responseCode = "201", description = "Account created",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = UserBase.class))
            ),
            @ApiResponse(responseCode = "403", description = "Forbidden",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = RuntimeException.class)
                    )
            ),
    })
    @RequestMapping(value = "/login/init", method = RequestMethod.POST, produces = "application/json")
    @ResponseStatus(code = HttpStatus.OK)
    public String loginInit(@RequestBody String login)
    {
        return service.initLogin(login);
    }


    @Operation(summary = "Finish login")
    @ApiResponses({
            @ApiResponse(responseCode = "202", description = "Login complete",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = UserBase.class))
            ),
            @ApiResponse(responseCode = "403", description = "Forbidden",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = RuntimeException.class)
                    )
            ),
    })
    @RequestMapping(value = "/login/validate", method = RequestMethod.POST, produces = "application/json")
    @ResponseStatus(code = HttpStatus.ACCEPTED)
    public UserBase loginValidate(@RequestBody UserLoginRequest loginInfo, HttpServletResponse response)
    {
        String hash = service.loginVerify(loginInfo.getLogin(), loginInfo.getHash());
        var user = userService.getUserFromLogin(loginInfo.getLogin());
        Cookie cookie = new Cookie(authenticationToken, hash);
        cookie.setHttpOnly(true);
        cookie.setMaxAge(60 * 5); // 5 minutes
        response.addCookie(cookie);
        return userAssembler.toDto(user);
    }

    @Operation(summary = "Logout")
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    @Parameter(hidden = true, name = "connectedUser")
    @ApiResponses({
            @ApiResponse(responseCode = "204", description = "Logout complete",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = UserBase.class))
            ),
            @ApiResponse(responseCode = "406", description = "You must be logged in before logout :)",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = RuntimeException.class)
                    )
            ),
    })
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void logout(HttpServletResponse response, @GetConnectedUser UserEntity connectedUser)
    {
        if (connectedUser == null)
        {
            throw new ResponseStatusException(HttpStatus.NOT_ACCEPTABLE, "You must be logged in before logout");
        }
        service.logout(connectedUser.getUserId());
        var cookie = new Cookie(authenticationToken, "");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
    }


}