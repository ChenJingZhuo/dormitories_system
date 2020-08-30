package com.gdpi.entity.permission.vo;

import com.gdpi.entity.permission.Permission;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-07-31 20:08
 * @Version 1.0
 * 菜单返回实体
 */
@Data
public class MenuVo implements Serializable {
    private List<Permission> menuList;
    private List<String> authList;
    private List<Permission> routerList;
    private String token;
    private int roleId;
    private Long userId;
    private String userNickname;
}

