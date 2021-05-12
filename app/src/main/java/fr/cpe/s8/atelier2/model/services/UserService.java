package fr.cpe.s8.atelier2.model.services;

import fr.cpe.s8.atelier2.model.entities.CardEntity;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import fr.cpe.s8.atelier2.model.repositories.CardRepository;
import fr.cpe.s8.atelier2.model.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ResponseStatusException;

import java.util.ArrayList;
import java.util.List;


@Component
public class UserService
{

    @Autowired()
    private UserRepository userRepository;

    public UserEntity getUserFromLogin(String login) {
        return userRepository.findByLogin(login);
    }


}
