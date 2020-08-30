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
@ApiModel(value="Valuables对象", description="")
public class Valuables implements Serializable {

    private static final long serialVersionUID=1L;

    @ExcelProperty("ID")
    @TableId(value = "val_id", type = IdType.AUTO)
    private Long valId;

    @ExcelProperty("姓名")
    @ApiModelProperty(value = "姓名")
    private String valStuName;

    @ExcelProperty("物品名")
    @ApiModelProperty(value = "物品名")
    private String valName;

    @ExcelProperty("物品数量")
    @ApiModelProperty(value = "物品数量")
    private Integer valNum;

    @ExcelProperty("物品总价")
    @ApiModelProperty(value = "物品总价")
    private Double valPrice;

    @ExcelProperty("物品规格")
    @ApiModelProperty(value = "物品规格")
    private String valSpecs;

    @ExcelProperty("登记日期")
    @ApiModelProperty(value = "登记日期")
    private String valDate;

    @ExcelProperty("备注")
    @ApiModelProperty(value = "备注")
    private String valRemark;


}
