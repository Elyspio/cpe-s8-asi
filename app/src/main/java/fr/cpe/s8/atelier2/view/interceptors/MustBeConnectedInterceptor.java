package fr.cpe.s8.atelier2.view.interceptors;

import fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService.authenticationToken;

public class MustBeConnectedInterceptor implements HandlerInterceptor
{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException
    {
        System.out.println(String.format("MustBeConnectedInterceptor.preHandle url=%s", request.getRequestURI()));

        boolean foundConnectedUser = false;

        Cookie[] cookies = request.getCookies();
        if (cookies != null)
        {
            for (Cookie cookie : cookies)
            {
                if (cookie.getName().equals(authenticationToken))
                {
                    var userData = AuthenticationService.getUserCached(cookie.getValue());
                    if (userData != null)
                    {
                        foundConnectedUser = true;
                    }
                }
            }
        }

        if (!foundConnectedUser)
        {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "You must be logged to access to this endpoint");
        }


        return foundConnectedUser;
    }

    @Override
    public void postHandle(
            HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception
    {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
                                Object handler, Exception exception) throws Exception
    {
    }
}