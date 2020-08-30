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
@ApiModel(value="Stay对象", description="")
public class Stay implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "stay_id", type = IdType.AUTO)
    private Integer stayId;

    @ApiModelProperty(value = "学号")
    private String stayStuNo;

    @ApiModelProperty(value = "宿舍楼")
    private String stayBld;

    @ApiModelProperty(value = "宿舍号")
    private String stayRoom;

    @ApiModelProperty(value = "留宿日期")
    private String stayDate;

    @ApiModelProperty(value = "留宿原因")
    private String stayReason;

    @ApiModelProperty(value = "审核状态")
    private Integer stayAudit;

}
