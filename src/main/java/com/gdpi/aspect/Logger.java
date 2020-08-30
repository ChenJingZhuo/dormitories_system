package com.gdpi.aspect;

import com.alibaba.fastjson.JSON;
import com.gdpi.entity.Log;
import com.gdpi.jwt.JwtUtils;
import com.gdpi.mapper.LogMapper;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 用于记录日志的工具类，它里面提供了公共的代码
 */
@Component("logger")
@Aspect//表示当前类是一个切面类
public class Logger {

    @Autowired
    private JwtUtils jwtUtils;
    @Resource
    private LogMapper logMapper;

    @Pointcut("!execution(* com.gdpi.controller.*.*(..)) && execution(* com.gdpi.controller.*.*(..))")
    private void myPointcut() {
    }

    @Around("myPointcut()")
    public Object aroundPringLog(ProceedingJoinPoint pjp) throws Throwable {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();//获取request
        //HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();//获取response
        Object[] args = pjp.getArgs();
        Object result = pjp.proceed();//明确调用业务层方法（切入点方法）
        System.out.println(">>>>保存请求日志到数据库<<<<");
        //获取前端传来的token
        String token = request.getHeader("token");
        //解析token，获取用户名
        String username = jwtUtils.getUsernameFromToken(token);
        Log log = new Log();
        log.setLogUser(username);
        System.out.println(">>>>保存请求日志到数据库<<<<"+request.getContentType());
        Map<String, String[]> parameterMap = request.getParameterMap();
        if (parameterMap.keySet().size() > 0) log.setLogParameter(JSON.toJSONString(parameterMap));
        if (request.getContentType()!=null) {
            String s = request.getContentType().split(";")[0];
            if (!s.equals("multipart/form-data")) {
                if (args.length > 0) log.setLogParameter(JSON.toJSONString(args));
            }else{
                log.setLogParameter("{上传文件}");
            }
        }
        String url = request.getRequestURI().split("/")[1];
        log.setLogTable(url);
        String method = request.getMethod().toUpperCase();
        switch (method) {
            case "GET":
                log.setLogType(0);
                break;
            case "POST":
                log.setLogType(1);
                break;
            case "PUT":
                log.setLogType(2);
                break;
            case "DELETE":
                log.setLogType(3);
                break;
        }
        logMapper.insert(log);
        return result;
    }
}
