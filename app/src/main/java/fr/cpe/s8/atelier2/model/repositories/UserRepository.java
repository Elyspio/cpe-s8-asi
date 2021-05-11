package fr.cpe.s8.atelier2.model.repositories;


import fr.cpe.s8.atelier2.model.entities.UserEntity;
import org.springframework.data.repository.CrudRepository;


public interface UserRepository extends CrudRepository<UserEntity, Long>
{

}
