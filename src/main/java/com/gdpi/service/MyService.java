package com.gdpi.service;

import com.gdpi.entity.MyMsg;
import io.swagger.models.auth.In;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Service
public interface MyService {

    MyMsg selById(String id);

    String iconPath(String id);

    void setUser(String path,String id);

    void setMyMsg(String id, String nickName, Integer sex,String tell);

    String setPassword(String id,String newPassword,String oldPassword);
}