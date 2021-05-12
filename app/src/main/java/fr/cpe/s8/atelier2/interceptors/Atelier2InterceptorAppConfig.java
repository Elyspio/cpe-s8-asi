package fr.cpe.s8.atelier2.interceptors;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Component
public class Atelier2InterceptorAppConfig extends WebMvcConfigurerAdapter
{
    public Atelier2Interceptor atelier2Interceptor()
    {
        return new Atelier2Interceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry)
    {
        registry.addInterceptor(this.atelier2Interceptor());
    }
}