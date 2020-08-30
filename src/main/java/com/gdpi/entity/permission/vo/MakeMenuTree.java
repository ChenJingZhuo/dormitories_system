package com.gdpi.entity.permission.vo;

import com.gdpi.entity.permission.Permission;
import com.gdpi.mapper.PermissionMapper;
import com.gdpi.service.PermissionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/**
 * @Author: cjz
 * @Date: 2020-08-02 12:29
 * @Version 1.0
 * 生成菜单树
 */
@Slf4j
public class MakeMenuTree {

    public static List<Permission> makeTree(List<Permission> menuList, Long pid){
        //1.查询所有的pid的子类
        List<Permission> children = menuList.stream().filter(x -> x.getParentId() == pid).collect(Collectors.toList());
        //2.查询所有的非pid的子类
        List<Permission> successor = menuList.stream().filter(x -> x.getParentId() != pid).collect(Collectors.toList());
        
        if (children.size() > 0){
            children.forEach(x -> {
                if (successor.size() > 0){
                    makeTree(successor, x.getId()).forEach(
                            y -> x.getChildren().add(y)
                    );
                }
            });
        }

        if (pid == 0){
            if (successor.size()>0){
                List<Permission> successor2 = successor.stream().filter(x -> {
                    for (Permission child : children) {
                        if (child.getId() == x.getParentId()){
                            return false;
                        }
                    }
                    return true;
                }).collect(Collectors.toList());

                List<Permission> children2 = successor.stream().filter(x -> {
                    for (Permission permission : successor2) {
                        if (permission.getParentId() == x.getId()) {
                            return true;
                        }
                    }
                    return false;
                }).distinct().collect(Collectors.toList());

                children2.forEach(x -> {
                    if (successor2.size() > 0){
                        List<Permission> collect = successor2.stream().filter(y -> y.getParentId() == x.getId()).collect(Collectors.toList());
                        System.out.println("三级菜单："+collect.toString());
                        x.setChildren(collect);
                    }
                });
            }
        }

        return children;
    }
}
