package com.gdpi.mapper;

import com.gdpi.entity.user.User;
import com.gdpi.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

/**
 * @Author: cjz
 * @Date: 2020-07-31 16:01
 * @Version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserMapperTest {

    @Resource
    public UserService userService;

    @Test
    public void getUserByUserName(){
        User root = userService.getUserByUserName("root");
        System.out.println(root);
    }

}
