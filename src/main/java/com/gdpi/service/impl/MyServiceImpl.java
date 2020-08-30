package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.*;
import com.gdpi.entity.user.User;
import com.gdpi.mapper.*;
import com.gdpi.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Service
public class MyServiceImpl implements MyService {

    @Resource
    private UserMapper userMapper;

    @Resource
    private CheckinMapper checkinMapper;

    @Resource
    private StudentsMapper studentsMapper;

    @Resource
    private MajorMapper majorMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public MyMsg selById(String id){
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("user_id", id));
        Students stu= studentsMapper.selectOne(new QueryWrapper<Students>().eq("stu_no", user.getUsername()));
        Checkin ch = checkinMapper.selectOne(new QueryWrapper<Checkin>().eq("ch_stu_no", user.getUsername()));
        Major ma = majorMapper.selectOne(new QueryWrapper<Major>().eq("major_no", stu.getStuMajor()));
        return new MyMsg(stu,user,ch,ma);
    }

    @Override
    public String iconPath(String id) {
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("user_id", id));
        return user.getUserIcon();
    }

    @Override
    public void setUser(String path, String id) {
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("user_id", id));
        user.setUserIcon(path);
        userMapper.updateById(user);
    }

    @Override
    public void setMyMsg(String id, String nickName, Integer sex, String tell) {
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("user_id", id));
        user.setUserNickname(nickName);
        user.setUserTell(tell);
        userMapper.updateById(user);
        Students stu= studentsMapper.selectOne(new QueryWrapper<Students>().eq("stu_no", user.getUsername()));
        stu.setStuSex(sex);
        studentsMapper.updateById(stu);
    }

    @Override
    public String setPassword(String id, String newPassword, String oldPassword) {
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("user_id", id));

        if (!passwordEncoder.matches(oldPassword,user.getPassword())){
            return "旧密码不正确！";
        }
        user.setUserPassword(passwordEncoder.encode(newPassword));
        int i = userMapper.updateById(user);
        if (i==1){
            return "修改成功";
        }
        return "修改失败";
    }
}
