package fr.cpe.s8.atelier2.view.controllers.requests;

public final class UserLoginRequest
{
    private String login;
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
