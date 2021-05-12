package fr.cpe.s8.atelier2.model.dto;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.List;

public class UserBase
{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long userId;
    private String firstname;
    private String lastname;
    private double money;

    private List<Long> cardId;

    public UserBase(Long userId, String firstname, String lastname, double money, List<Long> cardId)
    {
        this.userId = userId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.money = money;
        this.cardId = cardId;
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

    public List<Long> getCardId()
    {
        return cardId;
    }

    public void setCardId(List<Long> cardId)
    {
        this.cardId = cardId;
    }
}
