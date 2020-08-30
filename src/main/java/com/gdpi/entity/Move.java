package com.gdpi.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.HeadFontStyle;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
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
@ApiModel(value="Move对象", description="")
public class Move implements Serializable {

    private static final long serialVersionUID=1L;

    @ExcelProperty("ID")
    @TableId(value = "move_id", type = IdType.AUTO)
    private Long moveId;

    @ExcelProperty("学号")
    @ApiModelProperty(value = "学号")
    private Long moveStuNo;

    @ExcelProperty("申请学生姓名")
    @ApiModelProperty(value = "申请学生姓名")
    private String moveStuName;

    @ExcelProperty("原宿舍楼")
    @ApiModelProperty(value = "原宿舍楼")
    private String moveOldBld;

    @ExcelProperty("原宿舍号")
    @ApiModelProperty(value = "原宿舍号")
    private String moveOldRoom;

    @ExcelProperty("申请宿舍楼")
    @ApiModelProperty(value = "申请宿舍楼")
    private String moveNewBld;

    @ExcelProperty("申请宿舍号")
    @ApiModelProperty(value = "申请宿舍号")
    private String moveNewRoom;

    @ExcelProperty("申请调宿原因")
    @ApiModelProperty(value = "申请调宿原因")
    private String moveReason;

    @ExcelProperty("审核情况")
    @ApiModelProperty(value = "审核情况")
    private Integer moveAudit;


}
