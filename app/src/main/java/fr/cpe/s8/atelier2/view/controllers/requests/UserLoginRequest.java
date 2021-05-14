package fr.cpe.s8.atelier2.view.controllers.requests;

import javax.validation.constraints.NotEmpty;

public final class UserLoginRequest
{
    @NotEmpty
    private String login;
    @NotEmpty
    private String hash;


    public UserLoginRequest(String login, String hash)
    {
        this.login = login;
        this.hash = hash;
    }

    public String getLogin()
    {
        return login;
    }

    public String getHash()
    {
        return hash;
    }
}
