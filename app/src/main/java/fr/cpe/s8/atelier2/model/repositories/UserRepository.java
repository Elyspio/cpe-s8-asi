package fr.cpe.s8.atelier2.model.repositories;


import fr.cpe.s8.atelier2.model.entities.UserEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface UserRepository extends CrudRepository<UserEntity, Long>
{

    @Query("SELECT u FROM UserEntity u WHERE u.login = ?1")
    UserEntity findByLogin(String login);

}
