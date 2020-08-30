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
@ApiModel(value="Major对象", description="")
public class Major implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "major_id", type = IdType.AUTO)
    private Integer majorId;

    @ApiModelProperty(value = "专业编号")
    private Integer majorNo;

    @ApiModelProperty(value = "专业名")
    private String majorName;

    @ApiModelProperty(value = "所属院系")
    private Integer majorCollege;

    @ApiModelProperty(value = "当前使用状态")
    private Integer majorState;
}
