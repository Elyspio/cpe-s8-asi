package fr.cpe.s8.atelier2.model.assemblers;

import fr.cpe.s8.atelier2.model.dto.CardBase;
import fr.cpe.s8.atelier2.model.entities.CardEntity;
import org.springframework.stereotype.Component;

@Component
public class CardAssembler implements Assembler<CardEntity, CardBase>
{
    @Override
    public CardBase toDto(CardEntity cardEntity)
    {
        return new CardBase(
                cardEntity.getCardId(),
                cardEntity.getName(),
                cardEntity.getDescription(),
                cardEntity.getFamily(),
                cardEntity.getAffinity(),
                cardEntity.getEnergy(),
                cardEntity.getHp(),
                cardEntity.getPrice(),
                cardEntity.getDefense(),
                cardEntity.getAttack()
        );
    }

    @Override
    public CardEntity fromDto(CardBase entity)
    {
        return null;
    }
}
