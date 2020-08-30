package com.gdpi.entity.role_permission.vo;

import com.gdpi.entity.permission.vo.TreeVo;
import lombok.Data;

import java.util.List;

@Data
public class PermissionRoleParmVo {
    private List<TreeVo> list;
    private Long roleId;
}
