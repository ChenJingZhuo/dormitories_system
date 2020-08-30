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
@ApiModel(value="Colleges对象", description="")
public class Colleges implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "college_id", type = IdType.AUTO)
    private Integer collegeId;

    @ApiModelProperty(value = "学院编号")
    private String collegeNo;

    @ApiModelProperty(value = "学院名称")
    private String collegeName;

    @ApiModelProperty(value = "所在校区")
    private String collegeSchool;


}
