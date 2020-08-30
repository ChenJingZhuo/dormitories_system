package com.gdpi.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdpi.mapper.PermissionMapper;
import com.gdpi.entity.permission.Permission;
import com.gdpi.service.PermissionService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-07-31 20:32
 * @Version 1.0
 */
@Service
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements PermissionService {
    @Override
    // @Cacheable(value = "permissions",key = "#userId")
    public List<Permission> getPermissionByUserId(Long userId) {
        return this.baseMapper.selectPermissionByUserId(userId);
    }
    @Override
    // @Cacheable(value = "permissions",key = "#roleId")
    public List<Permission> getPermissionListByRoleId(Long roleId) {
        return this.baseMapper.findByRoleId(roleId);
    }
}
