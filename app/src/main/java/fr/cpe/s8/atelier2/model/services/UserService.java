package fr.cpe.s8.atelier2.model.services;

import fr.cpe.s8.atelier2.model.entities.CardEntity;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.repositories.CardRepository;
import fr.cpe.s8.atelier2.model.repositories.UserRepository;
import fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class UserService
{

    @Autowired()
    private UserRepository userRepository;

    @Autowired()
    private CardRepository cardRepository;

    @Autowired()
    private AuthenticationService authenticationService;

    /**
     * Get user from its login
     *
     * @param login
     * @return
     */
    public UserEntity getUserFromLogin(String login)
    {
        return userRepository.findByLogin(login);
    }

    /**
     * Get cards of a user
     *
     * @param user
     * @return
     */
    public List<CardEntity> getUserCards(UserEntity user)
    {
        return cardRepository.findUserCards(user);
    }


    /**
     * Refresh cache data of a user
     *
     * @param user
     * @return
     */
    public UserEntity refreshUser(UserEntity user)
    {
        user = userRepository.save(user);
        authenticationService.refreshCache(user);
        return user;
    }

}
