package com.gdpi.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.gdpi.entity.permission.Permission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-07-31 20:21
 * @Version 1.0
 * 权限管理
 */
public interface PermissionMapper extends BaseMapper<Permission> {
    /**
     * 根据用户Id查询所有的权限
     * @param userId
     * @return
     */
    List<Permission> selectPermissionByUserId(@Param("userId") Long userId);
    /**
     * 根据角色id查询所有的权限
     * @param roleId
     * @return
     */
    List<Permission> findByRoleId(@Param("roleId") Long roleId);
}
