package fr.cpe.s8.atelier2.model.services;

import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.repositories.UserRepository;
import fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class UserService
{

    @Autowired()
    private UserRepository userRepository;

    @Autowired()
    private AuthenticationService authenticationService;

    public UserEntity getUserFromLogin(String login)
    {
        return userRepository.findByLogin(login);
    }


    public UserEntity refreshUser(UserEntity user)
    {
        user = userRepository.save(user);
        authenticationService.refreshCache(user);
        return user;
    }

}
