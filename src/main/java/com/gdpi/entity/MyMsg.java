package com.gdpi.entity;


import com.gdpi.entity.user.User;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel(value="个人中心消息", description="")
public class MyMsg {
    private Students student;
    private User user;
    private Checkin checkin;
    private Major major;
}
