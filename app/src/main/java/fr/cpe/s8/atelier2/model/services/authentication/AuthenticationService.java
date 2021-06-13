package fr.cpe.s8.atelier2.model.services.authentication;

import fr.cpe.s8.atelier2.model.entities.CardEntity;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.repositories.CardRepository;
import fr.cpe.s8.atelier2.model.repositories.UserRepository;
import fr.cpe.s8.atelier2.view.controllers.requests.UserRegisterRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.Cookie;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.stream.Collectors;


@Component
public class AuthenticationService
{

    public static final String authenticationToken = "authentication_token";
    static private final Set<UserLoginData> users = new HashSet<>();

    @Autowired()
    private UserRepository userRepository;

    @Autowired()
    private CardRepository cardRepository;

    @Autowired()
    private Security security;

    /**
     * Get information about a cached user from its token
     *
     * @param token user's token
     * @return user's information
     */
    public static UserLoginData getUserCached(String token)
    {
        return users
                .stream()
                .filter(user -> token.equals(user.getToken()))
                .findAny()
                .orElse(null);
    }

    public static Cookie createAuthenticationCookie(@Nullable String val)
    {
        Cookie cookie = new Cookie(authenticationToken, val);
        cookie.setPath("/");
        cookie.setHttpOnly(true);
        cookie.setMaxAge(val == null ? 0 : 600);
        return cookie;
    }

    public void refreshCache(UserEntity user)
    {
        users
                .stream()
                .filter(x -> x.getUser() != null && x.getUser().getUserId().equals(user.getUserId()))
                .findAny().ifPresent(userLoginData -> userLoginData.setUser(user));

    }

    /**
     * Initialize the connection with a user
     * A Salt is generated and linked with this login
     * @param login Login of the user
     * @return the user's salt
     */
    public String initLogin(String login)
    {
        var info = users.stream().filter(x -> login.equals(x.getLogin())).findAny().orElse(null);
        if (info != null) return info.getSalt();

        var salt = generateSalt(10);
        users.add(new UserLoginData(login, salt));

        return salt;
    }

    /**
     * Finalize the connection with a user
     * @param login the user's login
     * @param userHash the user's hash md5(login + password) + salt
     * @return the user's token
     */
    public String loginVerify(String login, String userHash)
    {

        UserLoginData alreadyLoggedUser = users
                .stream()
                .filter(x -> login.equals(x.getLogin()) && x.getToken() != null)
                .findFirst()
                .orElse(null);

        if (alreadyLoggedUser != null)
        {
            return alreadyLoggedUser.getToken();
        }

        var data = users
                .stream()
                .filter(x -> x.getLogin().equals(login))
                .findAny()
                .orElse(null);

        // If a userData with this login was found
        if (data != null)
        {
            var salt = data.getSalt();
            var user = userRepository.findByLogin(login);
            // If a user with this login exists in database
            if (user != null)
            {
                var hash = user.getPassword() + salt;
                var isAuthorized = hash.equals(userHash);
                // If the passwords match
                if (isAuthorized)
                {
                    var token = generateSalt(30);
                    users.remove(data);
                    data.setToken(token);
                    data.setUser(user);
                    users.add(data);
                    new java.util.Timer().schedule(
                            new java.util.TimerTask()
                            {
                                @Override
                                public void run()
                                {
                                    logout(user.getUserId());
                                }
                            },
                            600*1000
                    );

                    return token;
                }
                else
                {
                    logout(user.getUserId());
                    throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
                }
            }
            else
            {
                throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
            }

        }
        else
        {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
        }


    }

    public void logout(Long userId)
    {
        boolean removed = users.removeIf(x -> x.getUser().getUserId().equals(userId));
        System.out.printf("Removing %d %s%n", userId, removed);
    }

    public UserEntity register(UserRegisterRequest param)
    {
        if (userRepository.findByLogin(param.getLogin()) != null)
        {
            throw new ResponseStatusException(HttpStatus.CONFLICT, String.format("The login %s is already used", param.getLogin()));
        }

        var availableCards = cardRepository.findMarketCars();
        var defaultCards = new Random()
                .ints(5, 0, availableCards.size())
                .mapToObj(availableCards::get)
                .collect(Collectors.toList());


        UserEntity user = new UserEntity(
                null,
                param.getFirstname(),
                param.getLastname(),
                5000,
                param.getLogin(),
                param.getPassword(),
                defaultCards
        );

        user = userRepository.save(user);


        for (CardEntity x : defaultCards)
        {
            x.setUser(user);
        }

        cardRepository.saveAll(defaultCards);

        return user;
    }

    String generateSalt(@Nullable Integer length)
    {
        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = length != null ? length : 10;

        return new Random()
                .ints(leftLimit, rightLimit + 1)
                .limit(targetStringLength)
                .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
                .toString();

    }


}
