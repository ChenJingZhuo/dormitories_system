package com.gdpi.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.gdpi.entity.permission.Permission;

import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-07-31 20:31
 * @Version 1.0
 */
public interface PermissionService extends IService<Permission> {
    /**
     * 根据用户Id查询所有的权限
     * @param userId
     * @return
     */
    List<Permission> getPermissionByUserId(Long userId);
    /**
     * 根据角色id查询所有的权限
     * @param roleId
     * @return
     */
    List<Permission> getPermissionListByRoleId(Long roleId);
}
