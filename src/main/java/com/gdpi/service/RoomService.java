package com.gdpi.service;

import com.gdpi.entity.Room;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
public interface RoomService extends IService<Room> {

    /**
     * 房间数统计
     * @return
     */
    int getCount(int state);

    /**
     * 床位数统计
     * @param type
     * @return
     */
    int getBedCount(int type);

    /**
     * 通过房间号查询所属学院
     * @return
     */
    Map<String,Object> selectRoomByCol();
}
