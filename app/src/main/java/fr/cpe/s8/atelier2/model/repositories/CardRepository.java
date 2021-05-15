package fr.cpe.s8.atelier2.model.repositories;


import fr.cpe.s8.atelier2.model.entities.CardEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface CardRepository extends CrudRepository<CardEntity, Long>
{
    @Query("select card from CardEntity card where card.user is null")
    List<CardEntity> findMarketCars();
}
