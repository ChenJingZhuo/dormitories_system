package com.gdpi.service;

import com.gdpi.entity.user.User;
import com.gdpi.entity.permission.Permission;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-08-02 17:52
 * @Version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PermissonServiceTest {
    @Autowired
    private PermissionService permissionService;

    /**
     * 根据用户id获取权限列表信息
     */
    @Test
    public void test(){
        User user = new User();
        user.setUserId(1L);
        //查询用户所有的权限
        List<Permission> codeList = permissionService.getPermissionByUserId(user.getUserId());
        codeList.forEach(System.out::println);
    }
}
