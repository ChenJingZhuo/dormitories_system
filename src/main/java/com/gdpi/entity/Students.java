package com.gdpi.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="Students对象", description="")
public class Students implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "stu_id", type = IdType.AUTO)
    private Integer stuId;

    @ApiModelProperty(value = "学号")
    private String stuNo;

    @ApiModelProperty(value = "学生姓名")
    private String stuName;

    @ApiModelProperty(value = "性别")
    private Integer stuSex;

    @ApiModelProperty(value = "证件性质")
    private String stuPapersType;

    @ApiModelProperty(value = "证件号")
    private String stuPapersNo;

    @ApiModelProperty(value = "年级")
    private String stuGrade;

    @ApiModelProperty(value = "学历")
    private String stuEducation;

    @ApiModelProperty(value = "毕业时间")
    private String stuGraduation;

    @ApiModelProperty(value = "所属院系")
    private String stuCollege;

    @ApiModelProperty(value = "所属专业")
    private String stuMajor;

    @ApiModelProperty(value = "班级")
    private String stuClass;

    @ApiModelProperty(value = "统计")
    private String nums;
}
