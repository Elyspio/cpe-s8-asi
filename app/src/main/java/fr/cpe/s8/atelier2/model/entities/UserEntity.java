package fr.cpe.s8.atelier2.model.entities;


import javax.persistence.*;
import java.util.List;

@Entity
public class UserEntity
{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;
    private String firstname;
    private String lastname;
    private double money;
    private String login;
    private String password;

    @OneToMany(mappedBy = "user")
    private List<CardEntity> card;

    public UserEntity()
    {

    }

    public UserEntity(Long userId, String firstname, String lastname, double money, String login, String password, List<CardEntity> card)
    {
        this.userId = userId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.money = money;
        this.login = login;
        this.password = password;
        this.card = card;
    }

    public Long getUserId()
    {
        return userId;
    }

    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public String getFirstname()
    {
        return firstname;
    }

    public void setFirstname(String firstname)
    {
        this.firstname = firstname;
    }

    public String getLastname()
    {
        return lastname;
    }

    public void setLastname(String lastname)
    {
        this.lastname = lastname;
    }

    public double getMoney()
    {
        return money;
    }

    public void setMoney(double money)
    {
        this.money = money;
    }

    public String getLogin()
    {
        return login;
    }

    public void setLogin(String login)
    {
        this.login = login;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public List<CardEntity> getCard()
    {
        return card;
    }

    public void setCard(List<CardEntity> card)
    {
        this.card = card;
    }
}
