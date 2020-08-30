package com.gdpi.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="Class对象", description="")
public class Class implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "class_id", type = IdType.AUTO)
    private Integer classId;

    @ApiModelProperty(value = "所属专业")
    private String classMajor;

    @ApiModelProperty(value = "班级名称")
    private String className;

    @ApiModelProperty(value = "班级人数")
    private Integer classNum;


}
