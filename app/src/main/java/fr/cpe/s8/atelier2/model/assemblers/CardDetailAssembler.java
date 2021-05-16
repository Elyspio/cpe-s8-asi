package fr.cpe.s8.atelier2.model.assemblers;

import fr.cpe.s8.atelier2.model.dto.CardDetail;
import fr.cpe.s8.atelier2.model.entities.CardEntity;
import org.springframework.stereotype.Component;

@Component
public class CardDetailAssembler implements Assembler<CardEntity, CardDetail>
{
    @Override
    public CardDetail toDto(CardEntity cardEntity)
    {
        return new CardDetail(
                cardEntity.getCardId(),
                cardEntity.getName(),
                cardEntity.getDescription(),
                cardEntity.getFamily(),
                cardEntity.getAffinity(),
                cardEntity.getEnergy(),
                cardEntity.getHp(),
                cardEntity.getPrice(),
                cardEntity.getDefense(),
                cardEntity.getAttack(),
                cardEntity.getImgUrl()
        );
    }

    @Override
    public CardEntity fromDto(CardDetail entity)
    {
        return null;
    }
}
