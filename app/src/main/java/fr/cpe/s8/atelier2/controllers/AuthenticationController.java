package fr.cpe.s8.atelier2.controllers;

import fr.cpe.s8.atelier2.assemblers.UserAssembler;
import fr.cpe.s8.atelier2.controllers.requests.UserLoginRequest;
import fr.cpe.s8.atelier2.controllers.requests.UserRegisterRequest;
import fr.cpe.s8.atelier2.model.dto.UserBase;
import fr.cpe.s8.atelier2.model.services.UserService;
import fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService;
import fr.cpe.s8.atelier2.model.services.authentication.UserLoginData;
import io.swagger.v3.oas.annotations.Operation;
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
                            schema = @Schema(implementation = ResponseStatusException.class)
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
                            schema = @Schema(implementation = ResponseStatusException.class)
                    )
            ),
    })
    @RequestMapping(value = "/login/init", method = RequestMethod.POST, produces = "application/json")
    @ResponseStatus(code = HttpStatus.OK)
    public String loginInit(@RequestBody String login)
    {
        return service.initLogin(login);
    }


    @Operation(summary = "Complish login")
    @ApiResponses({
            @ApiResponse(responseCode = "202", description = "Login complete",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = UserBase.class))
            ),
            @ApiResponse(responseCode = "403", description = "Forbidden",
                    content = @Content(
                            mediaType = "application/json",
                            schema = @Schema(implementation = ResponseStatusException.class)
                    )
            ),
    })
    @RequestMapping(value = "/login/validate", method = RequestMethod.POST, produces = "application/json")
    @ResponseStatus(code = HttpStatus.ACCEPTED)
    public UserBase loginValidate(@RequestBody UserLoginRequest loginInfo, HttpServletResponse response)
    {
        String hash = service.loginVerify(loginInfo.getLogin(), loginInfo.getHash());
        var user = userService.getUserFromLogin(loginInfo.getLogin());
        Cookie cookie = new Cookie("authentication_token", hash);
        cookie.setHttpOnly(true);
        cookie.setMaxAge(60 * 5); // 5 minutes
        response.addCookie(cookie);
        return userAssembler.toDto(user);
    }






}
