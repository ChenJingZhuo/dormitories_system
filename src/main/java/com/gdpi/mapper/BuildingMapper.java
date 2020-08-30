package com.gdpi.mapper;

import com.gdpi.entity.Building;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Mapper
public interface BuildingMapper extends BaseMapper<Building> {

    @Select("SELECT count(*) as nums , bld_college from action , building where bld_name = act_bld GROUP BY act_bld")
    List<Building> getActionList();
}
