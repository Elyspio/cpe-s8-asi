package fr.cpe.s8.atelier2.view.resolvers;

import fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService;
import fr.cpe.s8.atelier2.view.controllers.annotations.GetConnectedUser;
import org.springframework.core.MethodParameter;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import static fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService.authenticationToken;

public class UserTokenResolver implements HandlerMethodArgumentResolver
{

    @Override
    public boolean supportsParameter(MethodParameter parameter)
    {
        return parameter.getParameterAnnotation(GetConnectedUser.class) != null;
    }

    @Override
    public Object resolveArgument(MethodParameter parameter,
                                  ModelAndViewContainer mavContainer,
                                  NativeWebRequest webRequest,
                                  WebDataBinderFactory binderFactory) throws Exception
    {
        var request = (HttpServletRequest) webRequest.getNativeRequest();
        Cookie[] cookies = request.getCookies();
        if (cookies != null)
        {
            for (Cookie cookie : cookies)
            {
                if (cookie.getName().equals(authenticationToken))
                {
                    var userData = AuthenticationService.getUserCached(cookie.getValue());
                    if (userData == null)
                    {
                        throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
                    }
                    return userData.getUser();
                }
            }

        }
        throw new ResponseStatusException(HttpStatus.UNAUTHORIZED);
    }
}