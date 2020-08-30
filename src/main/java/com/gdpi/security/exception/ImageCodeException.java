package com.gdpi.security.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * @Author: cjz
 * @Date: 2020-07-31 17:20
 * @Version 1.0
 */
public class ImageCodeException extends AuthenticationException {

    /**
     * 验证码验证失败异常类
     */
    public ImageCodeException(String msg) {
        super(msg);
    }

}
