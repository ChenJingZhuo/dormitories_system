package com.gdpi.entity;

import com.alibaba.excel.annotation.ExcelIgnore;
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
@ApiModel(value="Visits对象", description="")
public class Visits implements Serializable {

    private static final long serialVersionUID=1L;


    @ExcelIgnore
    @TableId(value = "vis_id", type = IdType.AUTO)
    private Integer visId;

    @ApiModelProperty(value = "学号")
    @ExcelProperty(value = "学号", index = 0)
    private String visStuNo;

    @ApiModelProperty(value = "学生姓名")
    @ExcelProperty(value = "学生姓名", index = 1)
    private String visName;

    @ApiModelProperty(value = "所访宿舍楼")
    @ExcelProperty(value = "所访宿舍楼", index = 2)
    private String visBld;

    @ApiModelProperty(value = "所访宿舍号")
    @ExcelProperty(value = "所访宿舍号", index = 3)
    private String visRoom;

    @ApiModelProperty(value = "来访原因")
    @ExcelProperty(value = "来访原因", index = 4)
    private String visReason;

    @ApiModelProperty(value = "来访人数")
    @ExcelProperty(value = "来访人数", index = 5)
    private Integer visNum;

    @ApiModelProperty(value = "来访时间")
    @ExcelProperty(value = "来访时间", index = 6)
    private String visTime;

    @ApiModelProperty(value = "离开时间")
    @ExcelProperty(value = "离开时间", index = 7)
    private String visLeave;

    @ApiModelProperty(value = "备注")
    @ExcelProperty(value = "备注", index = 8)
    private String visRemark;



}
