package fr.cpe.s8.atelier2.model.services;

import fr.cpe.s8.atelier2.model.entities.CardEntity;
import fr.cpe.s8.atelier2.model.repositories.CardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class CardService
{

    @Autowired()
    private CardRepository cardRepository;

    /**
     * Get full data of a card
     *
     * @param cardId id of the card
     * @return the card or null
     */
    public CardEntity getDetail(Long cardId)
    {
        return cardRepository.findById(cardId).orElse(null);
    }


}
