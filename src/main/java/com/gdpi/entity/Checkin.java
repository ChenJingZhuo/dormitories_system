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
@ApiModel(value="Checkin对象", description="")
public class Checkin implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "ch_id", type = IdType.AUTO)
    private Integer chId;

    @ApiModelProperty(value = "学号")
    private String chStuNo;

    @ApiModelProperty(value = "入住学生姓名")
    private String chStuName;

    @ApiModelProperty(value = "入住宿舍楼")
    private String chBld;

    @ApiModelProperty(value = "入住宿舍号")
    private String chRoom;

    @ApiModelProperty(value = "床位")
    private Integer chBed;

    @ApiModelProperty(value = "当前状态")
    private Integer chState;

    @ApiModelProperty(value = "num")
    private Integer nums;
}
