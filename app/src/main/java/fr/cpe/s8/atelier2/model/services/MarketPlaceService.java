package fr.cpe.s8.atelier2.model.services;

import fr.cpe.s8.atelier2.model.repositories.CardRepository;
import fr.cpe.s8.atelier2.model.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.server.ResponseStatusException;


@Component
public class MarketPlaceService
{

    @Autowired()
    private CardRepository cardRepository;

    @Autowired()
    private UserRepository userRepository;

    public double buy(Long idUser, Long idCard)
    {
        var card = cardRepository.findById(idCard);
        if(card.isPresent()) {
            var cardValue = card.get();
            if(cardValue.getUser() == null) {
                var user = userRepository.findById(idUser);
                if(user.isEmpty()) {
                    throw new ResponseStatusException(HttpStatus.NOT_FOUND, String.format("Could not found the user with id %d", idUser));
                }
                var userValue = user.get();
                double deltaMoney = userValue.getMoney() - cardValue.getPrice();
                if(deltaMoney < 0) {
                    throw new ResponseStatusException(HttpStatus.FORBIDDEN, String.format("User %d can't afford %d", idUser, idCard));
                }

                userValue.setMoney(deltaMoney);
                cardValue.setUser(userValue);

                cardRepository.save(cardValue);
                userRepository.save(userValue);

                return deltaMoney;
            }
            else {
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, String.format("The card %d is already linked to a user", idCard));

            }
        }
        else {
            throw new HttpClientErrorException(HttpStatus.NOT_FOUND);
        }
    }
    public List<CardEntity> getCards()
    {
        return new ArrayList<>();
    }

}
