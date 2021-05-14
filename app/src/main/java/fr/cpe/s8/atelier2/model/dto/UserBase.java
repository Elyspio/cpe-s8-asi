package fr.cpe.s8.atelier2.model.dto;


import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

public class UserBase
{

    @NotEmpty
    private  String lastname;
    @NotEmpty
    private Long userId;
    @NotEmpty
    private String firstname;
    @NotEmpty
    private double money;

    @NotNull
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
