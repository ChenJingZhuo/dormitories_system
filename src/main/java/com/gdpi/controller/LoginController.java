package com.gdpi.controller;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * @Author: cjz
 * @Date: 2020-07-31 15:27
 * @Version 1.0
 */
@Api(tags = "登录页面 API")
@RestController
@RequestMapping("/login")
public class LoginController {

    public static final String SESSION_KEY = "IMAGE_CODE";

    @Autowired
    private DefaultKaptcha defaultKaptcha;

    //@ApiOperation("登录验证")
    //@PostMapping
    //public String login(){
    //    return "666";
    //}


    @ApiOperation("获取验证码信息")
    @GetMapping("/image")
    public void imageCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置以图片的形式响应
        response.setHeader("Cache-Control", "no-store, no-cache");
        //设置页面缓存方式 不缓存，不存储
        response.setContentType("image/jpeg");
        // 1. 获取验证码字符串
        String code = defaultKaptcha.createText();
        System.out.println(("生成的图形验证码是：" + code));
        // 2. 字符串把它放到session中
        request.getSession().setAttribute(SESSION_KEY , code);
        // 3. 获取验证码图片
        BufferedImage image = defaultKaptcha.createImage(code);
        // 4. 将验证码图片把它写出去
        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(image, "jpg", out);
        if (out != null) {
            out.close();
        }
    }

}
