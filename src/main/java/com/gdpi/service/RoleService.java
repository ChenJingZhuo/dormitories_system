package com.gdpi.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.gdpi.entity.UserRole;
import com.gdpi.entity.role.Role;
import org.apache.ibatis.annotations.Param;

/**
 * @Author: cjz
 * @Date: 2020-07-31 21:24
 * @Version 1.0
 * 角色管理service
 */
public interface RoleService extends IService<Role> {
    /**
     * 根据用户id查询角色id
     * @param userId
     * @return
     */
    UserRole getRoleIdByUserId(@Param("userId") long userId);

    /**
     * 分配权限
     *
     * @param userRole
     * @return
     */
    void assignRole(UserRole userRole);
}
