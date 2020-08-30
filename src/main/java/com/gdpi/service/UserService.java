package com.gdpi.service;

import com.gdpi.entity.user.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
public interface UserService extends IService<User> {

    /**
     * 根据用户名查询用户信息
     * @param username
     * @return
     */
    User getUserByUserName(String username);

}
