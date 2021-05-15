package fr.cpe.s8.atelier2.model.services;

import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class UserService
{

    @Autowired()
    private UserRepository userRepository;

    public UserEntity getUserFromLogin(String login)
    {
        return userRepository.findByLogin(login);
    }


}
