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
@ApiModel(value="Enter对象", description="")
public class Enter implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "enter_id", type = IdType.AUTO)
    private Integer enterId;

    @ApiModelProperty(value = "学号")
    private String enterStuNo;

    @ApiModelProperty(value = "学生姓名")
    private String enterStuName;

    @ApiModelProperty(value = "入住宿舍楼")
    private String enterBld;

    @ApiModelProperty(value = "入住宿舍号")
    private String enterRoom;

    @ApiModelProperty(value = "入宿舍原因")
    private String enterReason;

    @ApiModelProperty(value = "审核情况")
    private Integer enterAudit;


}
