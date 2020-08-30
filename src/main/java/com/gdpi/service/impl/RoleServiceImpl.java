package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdpi.entity.UserRole;
import com.gdpi.entity.role.Role;
import com.gdpi.mapper.RoleMapper;
import com.gdpi.mapper.UserRoleMapper;
import com.gdpi.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Author: cjz
 * @Date: 2020-07-31 21:25
 * @Version 1.0
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {
    @Resource
    private UserRoleMapper userRoleMapper;

    @Override
    public UserRole getRoleIdByUserId(long userId) {
        return userRoleMapper.getRoleIdByUserId(userId);
    }

    @Override
    public void assignRole(UserRole userRole) {
        LambdaQueryWrapper<UserRole> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.eq(UserRole::getUserId, userRole.getUserId());
        userRoleMapper.delete(lambdaQuery);
        userRoleMapper.insert(userRole);
    }
}
