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
@ApiModel(value="Building对象", description="")
public class Building implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "bld_id", type = IdType.AUTO)
    private Integer bldId;

    @ApiModelProperty(value = "宿舍楼名称")
    private String bldName;

    @ApiModelProperty(value = "宿舍楼地址")
    private String bldAddress;

    @ApiModelProperty(value = "所属院系")
    private String bldCollege;

    @ApiModelProperty(value = "统计")
    private String nums;
}
