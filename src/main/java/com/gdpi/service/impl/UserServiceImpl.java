package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.user.User;
import com.gdpi.mapper.UserMapper;
import com.gdpi.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Override
    public User getUserByUserName(String username) {
        QueryWrapper<User> query = new QueryWrapper<>();
        query.lambda().eq(User::getUsername,username);
        User user = this.baseMapper.selectOne(query); //返回多条记录会报错
        return user;
    }
}
