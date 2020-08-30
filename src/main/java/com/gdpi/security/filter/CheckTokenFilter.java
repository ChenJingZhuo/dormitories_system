package com.gdpi.security.filter;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.gdpi.controller.LoginController;
import com.gdpi.jwt.JwtUtils;
import com.gdpi.mapper.LogMapper;
import com.gdpi.security.detailservice.CustomerUserDetailsService;
import com.gdpi.security.exception.ImageCodeException;
import com.gdpi.security.exception.TokenException;
import com.gdpi.security.handler.LoginFailureHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.annotation.Resource;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: cjz
 * @Date: 2020-07-31 17:21
 * @Version 1.0
 */
@Component("checkTokenFilter")
public class CheckTokenFilter extends OncePerRequestFilter {
    @Value("${dormitories.loginUrl}")
    private String loginUrl;
    @Value("${dormitories.imgUrl}")
    private String imgUrl;
    @Value("${dormitories.icon}")
    private String icon;

    @Autowired
    private LoginFailureHandler loginFailureHandler;
    @Autowired
    private JwtUtils jwtUtils;
    @Autowired
    private CustomerUserDetailsService customerUserDetailsService;
    @Resource
    private LogMapper logMapper;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String url = request.getRequestURI();
        System.out.println(url);
        if(url.equals(loginUrl)){//如果是登录，否则做验证码验证
            try {
                // 校验验证码合法性
                validate(request);
            }catch (AuthenticationException e) {
                // 交给失败处理器进行处理异常
                loginFailureHandler.onAuthenticationFailure(request, response, e);
                // 一定要记得结束
                return;
            }
        } else {
            //验证token,验证码请求不需要验证token
            if(!url.equals(icon) &&!url.equals(imgUrl) && !url.endsWith(".xlsx") && !url.startsWith("/swagger-ui")){
                try{
                    validateToken(request);
                }catch (AuthenticationException e){
                    loginFailureHandler.onAuthenticationFailure(request,response,e);
                    return;
                }
            }
        }
        // 放行请求
        filterChain.doFilter(request, response);
    }

    //验证token
    private void validateToken(HttpServletRequest request){
        //获取前端传来的token
        String token = request.getHeader("token");
        //解析token，获取用户名
        String username = jwtUtils.getUsernameFromToken(token);
        //如果token或者用户名为空的话，不能通过认证
        if(StringUtils.isBlank(token) || StringUtils.isBlank(username)){
            throw new TokenException("token验证失败!");
        }
        UserDetails userDetails = customerUserDetailsService.loadUserByUsername(username);
        if(userDetails == null){
            throw new TokenException("token验证失败!");
        }
        UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetails,null,userDetails.getAuthorities());
        authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
        //设置为已登录
        SecurityContextHolder.getContext().setAuthentication(authentication);
    }

    //验证验证码
    private void validate(HttpServletRequest request){
        //1.获取登录请求的验证码
//        String body = request.getRequestBody();
//        System.out.println(body);
//        String[] split = body.split("\"code\"");
//        String substring = split[1].substring(0, 4);
        String inputCode = request.getParameter("code");
        System.out.println(inputCode);
        //2.获取Session中的验证码
        String code = (String)request.getSession().getAttribute(LoginController.SESSION_KEY);
        //3.判断验证码是否为空
        if(StringUtils.isBlank(inputCode)){
            throw new ImageCodeException("验证码不能为空!");
        }
        //4.判断验证码是否相等
        if(!inputCode.equalsIgnoreCase(code)){
            throw new ImageCodeException("验证码输入错误!");
        }
    }

}
