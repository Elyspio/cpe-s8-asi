package fr.cpe.s8.atelier2.model.dto;


import javax.validation.constraints.NotEmpty;

public class UserBase
{

    @NotEmpty
    private String lastname;
    @NotEmpty
    private Long userId;
    @NotEmpty
    private String firstname;
    @NotEmpty
    private double money;


    public UserBase(Long userId, String firstname, String lastname, double money)
    {
        this.userId = userId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.money = money;
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


}
