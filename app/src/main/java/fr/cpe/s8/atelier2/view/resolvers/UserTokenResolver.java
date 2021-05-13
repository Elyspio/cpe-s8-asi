package fr.cpe.s8.atelier2.view.resolvers;

import fr.cpe.s8.atelier2.model.services.authentication.AuthenticationService;
import fr.cpe.s8.atelier2.view.controllers.annotations.GetConnectedUser;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import static fr.cpe.s8.atelier2.view.controllers.AuthenticationController.authenticationToken;

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
        String token = webRequest.getHeader(authenticationToken);
        if(token != null) {
            var userData = AuthenticationService.getUserCached(token);
            return userData.getUser();
        }
        return null;
    }
}