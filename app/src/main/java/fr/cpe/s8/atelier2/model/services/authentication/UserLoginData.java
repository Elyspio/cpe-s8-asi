package fr.cpe.s8.atelier2.model.services.authentication;

import fr.cpe.s8.atelier2.model.entities.UserEntity;

import java.util.Objects;

public class UserLoginData
{
    private String login;
    private String salt;
    private String token = null;
    private UserEntity user = null;


    public UserLoginData(String login, String salt)
    {
        this.login = login;
        this.salt = salt;
    }

    public String getLogin()
    {
        return login;
    }

    public void setLogin(String login)
    {
        this.login = login;
    }

    public String getSalt()
    {
        return salt;
    }

    public void setSalt(String salt)
    {
        this.salt = salt;
    }

    public String getToken()
    {
        return token;
    }

    public void setToken(String token)
    {
        this.token = token;
    }

    public UserEntity getUser()
    {
        return user;
    }

    public void setUser(UserEntity user)
    {
        this.user = user;
    }


    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (!(o instanceof UserLoginData)) return false;
        UserLoginData that = (UserLoginData) o;
        return Objects.equals(login, that.login);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(login);
    }
}
