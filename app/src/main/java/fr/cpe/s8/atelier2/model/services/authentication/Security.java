package fr.cpe.s8.atelier2.model.services.authentication;

import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


@Component
public class Security
{
    public String md5(String... params)
    {
        var joined = String.join("", params);
        byte[] byteChaine = joined.getBytes(StandardCharsets.UTF_8);
        try
        {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] hash = md.digest(byteChaine);
            return new String(hash);
        }
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
        }

        return null;
    }
}
