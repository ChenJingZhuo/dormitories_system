package com.gdpi.entity;

import com.alibaba.excel.annotation.ExcelIgnore;
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
@ApiModel(value="Room对象", description="")
public class Room implements Serializable {

    private static final long serialVersionUID=1L;

    @ExcelIgnore
    @TableId(value = "room_id", type = IdType.AUTO)
    private Integer roomId;

    @ApiModelProperty(value = "所属宿舍楼")
    private String roomBld;

    @ApiModelProperty(value = "宿舍号")
    private String roomNo;

    @ApiModelProperty(value = "房间类型")
    private Integer roomType;

    @ApiModelProperty(value = "宿舍费用")
    private Integer roomCost;

    @ApiModelProperty(value = "房间分布")
    private String roomAddress;

    @ApiModelProperty(value = "当前状态")
    private Integer roomState;

    @ApiModelProperty(value = "统计")
    private Integer nums;
}
