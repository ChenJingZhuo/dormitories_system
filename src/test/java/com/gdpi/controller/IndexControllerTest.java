package com.gdpi.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @Author: cjz
 * @Date: 2020-07-30 20:01
 * @Version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class IndexControllerTest {

    @Autowired
    private IndexController indexController;

    /**
     * 测试获取菜单列表数据
     */
    @Test
    public void menuList(){
        System.out.println(indexController.menuList());
    }

}
