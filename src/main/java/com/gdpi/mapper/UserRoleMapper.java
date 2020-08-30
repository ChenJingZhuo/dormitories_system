package com.gdpi.mapper;

import com.gdpi.entity.UserRole;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author cjz
 * @since 2020-08-15
 */
public interface UserRoleMapper extends BaseMapper<UserRole> {
    /**
     * 根据用户id查询角色id
     * @param userId
     * @return
     */
    UserRole getRoleIdByUserId(@Param("userId") long userId);
}
