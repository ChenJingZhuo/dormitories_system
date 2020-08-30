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
 * @since 2020-08-05
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    @ApiModel(value="Exits对象", description="")
public class Exits implements Serializable {

    private static final long serialVersionUID=1L;

      @TableId(value = "exit_id", type = IdType.AUTO)
      private Integer exitId;

      @ApiModelProperty(value = "学号")
      private String exitStuNo;

      @ApiModelProperty(value = "姓名")
      private String exitStuName;

      @ApiModelProperty(value = "申请宿舍楼")
      private String exitBld;

      @ApiModelProperty(value = "申请房间号")
      private String exitRoom;

      @ApiModelProperty(value = "申请原因")
      private String exitReason;

      @ApiModelProperty(value = "审核情况")
      private int exitAudit;

}
