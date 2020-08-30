package com.gdpi.entity;

import com.alibaba.excel.annotation.ExcelProperty;
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
@ApiModel(value="Repair对象", description="")
public class Repair implements Serializable {

    private static final long serialVersionUID=1L;

    @ExcelProperty("申请编号")
    @TableId(value = "rep_id", type = IdType.AUTO)
    private Integer repId;

    @ExcelProperty("申请人")
    @ApiModelProperty(value = "申请人")
    private String repName;

    @ExcelProperty("宿舍楼")
    @ApiModelProperty(value = "宿舍楼")
    private String repBld;

    @ExcelProperty("房间号")
    @ApiModelProperty(value = "宿舍号")
    private String repRoom;

    @ExcelProperty("维护设备详情")
    @ApiModelProperty(value = "维护设备详情")
    private String repDetails;

    @ExcelProperty("当前状态")
    @ApiModelProperty(value = "状态")
    private Integer repState;

}
