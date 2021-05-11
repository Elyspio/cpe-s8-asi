package fr.cpe.s8.atelier2.model.repositories;


import fr.cpe.s8.atelier2.model.entities.CardEntity;
import org.springframework.data.repository.CrudRepository;


public interface CardRepository extends CrudRepository<CardEntity, Long>
{

}
