package com.gdpi.controller;

import com.gdpi.entity.permission.Permission;
import com.gdpi.result.ResultVo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @Author: cjz
 * @Date: 2020-08-03 16:26
 * @Version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PermissionControllerTest {

    @Autowired
    private PermissionController permissionController;

    @Test
    public void getMenuList(){
        ResultVo menuList = permissionController.getMenuList();
        System.out.println(menuList);
    }


}
