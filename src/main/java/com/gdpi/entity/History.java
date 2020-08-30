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
@ApiModel(value="History对象", description="")
public class History implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "his_id", type = IdType.AUTO)
    private Integer hisId;

    @ApiModelProperty(value = "学号")
    private String hisStuNo;

    @ApiModelProperty(value = "学生姓名")
    private String hisStuName;

    @ApiModelProperty(value = "宿舍楼")
    private String hisBld;

    @ApiModelProperty(value = "宿舍号")
    private String hisRoom;

    @ApiModelProperty(value = "入住日期")
    private String hisDate;

    @ApiModelProperty(value = "入住状态")
    private Integer hisState;

    @ApiModelProperty(value = "原因")
    private String hisReason;

    @ApiModelProperty(value = "新宿舍号")
    private String hisNewRoom;

    @ApiModelProperty(value = "新宿舍楼")
    private String hisNewBld;

    @ApiModelProperty(value = "撤销记录")
    private Integer hisIsdelete;


}
