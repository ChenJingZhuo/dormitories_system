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
@ApiModel(value="Action对象", description="")
public class Action implements Serializable {

    private static final long serialVersionUID=1L;

    @ExcelProperty("ID")
    @TableId(value = "act_id", type = IdType.AUTO)
    private Integer actId;

    @ExcelProperty("宿舍楼")
    @ApiModelProperty(value = "宿舍楼")
    private String actBld;

    @ExcelProperty("宿舍号")
    @ApiModelProperty(value = "宿舍号")
    private String actRoom;

    @ExcelProperty("操行详情")
    @ApiModelProperty(value = "操行详情")
    private String actDetails;

    @ExcelProperty("评价")
    @ApiModelProperty(value = "评价")
    private String actEvaluate;

    @ExcelProperty("日期")
    @ApiModelProperty(value = "日期")
    private String actDate;
}
