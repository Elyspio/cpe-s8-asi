package fr.cpe.s8.atelier2.model.services.authentication;

import fr.cpe.s8.atelier2.view.controllers.requests.UserRegisterRequest;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ResponseStatusException;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;


@Component
public class AuthenticationService
{

    static private final Set<UserLoginData> users = new HashSet<>();

    @Autowired()
    private UserRepository userRepository;

    @Autowired()
    private Security security;

    public String initLogin(String login)
    {
        var salt = generateSalt(10);

        users.add(new UserLoginData(login, salt));

        return salt;
    }


    /**
     * Get information about a cached user from its token
     * @param token user's token
     * @return user's information
     */
    public static UserLoginData getUserCached(String token) {
        return users.stream().filter(user -> user.getToken().equals(token)).findAny().orElse(null);
    }


    public String loginVerify(String login, String userHash)
    {
        var data = users.stream().filter(x -> x.getLogin().equals(login)).findAny().orElse(null);
        if (data != null)
        {
            var salt = data.getSalt();
            var user = userRepository.findByLogin(login);
            if (user != null)
            {
                var hash = security.md5(user.getPassword(), salt);
                var isAuthorized = hash.equals(userHash);
                if (isAuthorized)
                {
                    var token = generateSalt(30);
                    data.setToken(token);
                    data.setUser(user);
                    new java.util.Timer().schedule(
                            new java.util.TimerTask()
                            {
                                @Override
                                public void run()
                                {
                                    logout(user.getUserId());
                                }
                            },
                            5000
                    );

                    return token;
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
        else
        {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
        }


    }


    public void logout(Long userId)
    {
        users.removeIf(x -> x.getUser().getUserId().equals(userId));
    }

    // TODO use lib in frontend https://unpkg.com/md5@2.3.0/md5.js
    public UserEntity register(UserRegisterRequest param)
    {
        if (userRepository.findByLogin(param.getLogin()) != null)
        {
            throw new ResponseStatusException(HttpStatus.CONFLICT, String.format("The login %s is already used", param.getLogin()));
        }

        var user = new UserEntity(
                0L,
                param.getFirstname(),
                param.getLastname(),
                5000,
                param.getLogin(),
                param.getPassword(),
                new ArrayList<>()
        );

        user = userRepository.save(user);

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
