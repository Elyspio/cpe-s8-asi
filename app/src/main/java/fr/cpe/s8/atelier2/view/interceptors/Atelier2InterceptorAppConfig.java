package fr.cpe.s8.atelier2.view.interceptors;

import fr.cpe.s8.atelier2.view.resolvers.UserTokenResolver;
import org.springframework.stereotype.Component;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

@Component
public class Atelier2InterceptorAppConfig implements WebMvcConfigurer
{
    private Atelier2Interceptor atelier2Interceptor()
    {
        return new Atelier2Interceptor();
    }

    private UserTokenResolver userTokenResolver()
    {
        return new UserTokenResolver();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry)
    {
        registry.addInterceptor(this.atelier2Interceptor());
    }


    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers)
    {
        resolvers.add(this.userTokenResolver());
    }


}