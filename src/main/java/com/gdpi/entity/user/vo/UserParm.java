package com.gdpi.entity.user.vo;

import com.gdpi.entity.role.vo.ParmVo;
import lombok.Data;

@Data
public class UserParm extends ParmVo {
    private String username;
    private String userTell;
}
