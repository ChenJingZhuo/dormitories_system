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
@ApiModel(value="School对象", description="")
public class School implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "sch_id", type = IdType.AUTO)
    private Integer schId;

    @ApiModelProperty(value = "校区全称")
    private String schName;

    @ApiModelProperty(value = "校区地址")
    private String schAddress;

    @ApiModelProperty(value = "所属")
    private String schParent;
}
