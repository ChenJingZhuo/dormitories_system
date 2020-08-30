package com.gdpi.service;

import com.gdpi.entity.role_permission.RolePermission;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-08-14
 */
public interface RolePermissionService extends IService<RolePermission> {
    /**
     * 分配权限保存
     * @param
     */
    void saveAssignRole(Long roleId, List<Long> collect);
}
