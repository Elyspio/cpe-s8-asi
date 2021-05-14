package fr.cpe.s8.atelier2.view.controllers.requests;

import javax.validation.constraints.NotEmpty;
import java.util.Objects;

public final class UserRegisterRequest
{
    @NotEmpty
    private final String firstname;
    @NotEmpty
    private final String lastname;
    @NotEmpty
    private final String login;
    @NotEmpty
    private final String password;

    public UserRegisterRequest(
            String firstname,
            String lastname,
            String login,
            String password
    )
    {
        this.firstname = firstname;
        this.lastname = lastname;
        this.login = login;
        this.password = password;
    }


    @Override
    public boolean equals(Object obj)
    {
        if (obj == this) return true;
        if (obj == null || obj.getClass() != this.getClass()) return false;
        var that = (UserRegisterRequest) obj;
        return Objects.equals(this.firstname, that.firstname) &&
                Objects.equals(this.lastname, that.lastname) &&
                Objects.equals(this.login, that.login) &&
                Objects.equals(this.password, that.password);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(firstname, lastname, login, password);
    }

    @Override
    public String toString()
    {
        return "UserRegisterRequest[" +
                "firstname=" + firstname + ", " +
                "lastname=" + lastname + ", " +
                "login=" + login + ", " +
                "password=" + password + ']';
    }

    public String getFirstname()
    {
        return firstname;
    }

    public String getLastname()
    {
        return lastname;
    }

    public String getLogin()
    {
        return login;
    }

    public String getPassword()
    {
        return password;
    }
}
