package com.gdpi.security.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * @Author: cjz
 * @Date: 2020-07-31 17:30
 * @Version 1.0
 * token异常处理类
 */
public class TokenException extends AuthenticationException {
    public TokenException(String msg) {
        super(msg);
    }
}
