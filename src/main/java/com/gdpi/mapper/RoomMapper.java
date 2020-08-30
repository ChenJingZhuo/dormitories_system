package com.gdpi.mapper;

import com.gdpi.entity.Room;
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
public interface RoomMapper extends BaseMapper<Room> {

    @Select("SELECT count(*) as nums,room_bld from building,room where room_bld = bld_name GROUP BY room_bld")
    List<Room> selectRoomByCol();
}
