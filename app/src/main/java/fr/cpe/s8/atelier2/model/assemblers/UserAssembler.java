package fr.cpe.s8.atelier2.model.assemblers;

import fr.cpe.s8.atelier2.model.dto.UserBase;
import fr.cpe.s8.atelier2.model.entities.CardEntity;
import fr.cpe.s8.atelier2.model.entities.UserEntity;
import org.springframework.stereotype.Component;

import java.util.stream.Collectors;

@Component
public class UserAssembler implements Assembler<UserEntity, UserBase>
{
    @Override
    public UserBase toDto(UserEntity entity)
    {
        return new UserBase(
                entity.getUserId(),
                entity.getFirstname(),
                entity.getLastname(),
                entity.getMoney(),
                entity.getCard().stream().map(CardEntity::getCardId).collect(Collectors.toList())
        );
    }

    @Override
    public UserEntity fromDto(UserBase entity)
    {
        return null;
    }
}
