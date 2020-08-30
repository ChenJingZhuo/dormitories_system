package com.gdpi.mapper;

import com.gdpi.entity.role_permission.RolePermission;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author cjz
 * @since 2020-08-14
 */
public interface RolePermissionMapper extends BaseMapper<RolePermission> {
    //批量新增权限
    boolean saveRolePermissions(@Param("roleId") Long roleId, @Param("perIds") List<Long> perIds);
}
