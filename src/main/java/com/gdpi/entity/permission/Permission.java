package com.gdpi.entity.permission;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.extern.slf4j.Slf4j;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-07-31 20:18
 * @Version 1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="Permission对象", description="")
public class Permission implements Serializable {
    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "父id")
    private Long parentId;

    @ApiModelProperty(value = "父名")
    private String parentName;

    private String label;

    private String code;

    private String path;

    @ApiModelProperty(value = "名")
    private String name;

    @ApiModelProperty(value = "路径")
    private String url;

    private Integer orderNum;

    private String type;

    @ApiModelProperty(value = "图标")
    private String icon;

    @ApiModelProperty(value = "备注")
    private String remark;

    @ApiModelProperty(value = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField(fill = FieldFill.UPDATE)
    private Data updateTime;

    private Integer isHome;

    //不是数据库的字段需要排除
    @TableField(exist = false)
    private List<Permission> children = new ArrayList<>();
}
