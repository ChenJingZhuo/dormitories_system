package com.gdpi.entity.permission.vo;

import com.gdpi.entity.permission.Permission;
import lombok.Data;

import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-07-31 21:03
 * @Version 1.0
 */
@Data
public class TreeVo {
    //树的id
    private Long id;
    //树的父id
    private Long pid;
    //树的名称
    private String name;
    //是否展开
    private Boolean open;
    //是否选中
    private Boolean checked;
}
