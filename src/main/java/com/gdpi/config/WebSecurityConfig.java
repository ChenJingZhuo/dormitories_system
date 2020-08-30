package com.gdpi.config;

import com.gdpi.security.detailservice.CustomerUserDetailsService;
import com.gdpi.security.filter.CheckTokenFilter;
import com.gdpi.security.handler.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

/**
 * @Author: cjz
 * @Date: 2020-07-30 18:16
 * @Version 1.0
 */
@Configuration
@EnableWebSecurity //启用Spring Security
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private CustomerUserDetailsService customerUserDetailsService;
    @Autowired
    private CustomAccessDeineHandler customAccessDeineHandler;
    @Autowired
    private CustomizeAuthenticationEntryPoint customizeAuthenticationEntryPoint;
    @Autowired
    private LoginFailureHandler loginFailureHandler;
    @Autowired
    private LoginSuccessHandler loginSuccessHandler;
    @Autowired
    private CheckTokenFilter checkTokenFilter;

    @Bean
    public PasswordEncoder passwordEncoder() {
        // 明文+随机盐值》加密存储
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(customerUserDetailsService);
        authenticationProvider.setPasswordEncoder(passwordEncoder()); // 设置密码加密方式
        return authenticationProvider;
    }

    /**
     * 配置认证处理器
     * 配置自定义UserDetailsService
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        System.out.println("==========>customerUserDetailsService");
        auth.userDetailsService(customerUserDetailsService);
        auth.authenticationProvider(authenticationProvider());
    }

    /**
     * 配置权限资源和自定义认证成功和失败管理器
     * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        System.out.println("==========>/login");
        http.addFilterBefore(checkTokenFilter, UsernamePasswordAuthenticationFilter.class)
                .formLogin()
                .loginProcessingUrl("/login")
                // 自定义的登录验证成功或失败后的去向
                .successHandler(loginSuccessHandler)
                .failureHandler(loginFailureHandler)
                // 禁用csrf防御机制(跨域请求伪造)，这么做在测试和开发会比较方便。
                .and().csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeRequests()
                .antMatchers(HttpMethod.GET,
                        "/",
                        "/.html",
                        "/favicon.ico",
                        "/**/*.html",
                        "/**/*.css",
                        "/**/*.js",
                        "/**/*.xlsx",
                        "/webjars/**",
                        "/v2/**",
                        "/swagger-resources/**"
                )
                .permitAll()
                .and()
                .authorizeRequests()
                .antMatchers("/login","/login/image","/my/icon").permitAll()
                //跨域请求会先进行一次OPTIONS请求
                .antMatchers(HttpMethod.OPTIONS)
                .permitAll()
                .anyRequest().authenticated()
                .and()
                .exceptionHandling()
                .authenticationEntryPoint(customizeAuthenticationEntryPoint)
                .accessDeniedHandler(customAccessDeineHandler);
    }

}
