package com.gdpi.result;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @Author: cjz
 * @Date: 2020-07-31 18:01
 * @Version 1.0
 * 带参数返回值封装
 */
@Data
@AllArgsConstructor
public class ResultVo<T> {
    /**
     * 返回提示信息
     */
    private String msg;
    /**
     * 返回状态码
     */
    private int code;
    /**
     * 返回数据
     */
    private T data;
}
