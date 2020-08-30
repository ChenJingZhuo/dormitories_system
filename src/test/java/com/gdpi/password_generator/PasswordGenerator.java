package com.gdpi.password_generator;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PasswordGenerator {

    @Autowired
    private PasswordEncoder passwordEncoder;

    /**
     * 用来生成加密后的密码，用于手动填入数据库
     */
    @Test
    public void getEncodePassword() {
        String encode = passwordEncoder.encode("123456");
        System.out.println("生成的密码为：" + encode);
    }

}
