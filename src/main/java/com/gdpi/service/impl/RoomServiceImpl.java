package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Building;
import com.gdpi.entity.Room;
import com.gdpi.entity.Students;
import com.gdpi.mapper.BuildingMapper;
import com.gdpi.mapper.CollegesMapper;
import com.gdpi.mapper.RoomMapper;
import com.gdpi.service.BuildingService;
import com.gdpi.service.CollegesService;
import com.gdpi.service.RoomService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Service
public class RoomServiceImpl extends ServiceImpl<RoomMapper, Room> implements RoomService {

    @Resource
    private RoomMapper roomMapper;

    @Resource
    private BuildingService buildingService;

    @Resource
    public CollegesService collegesService;

    @Override
    public int getCount(int state) {
        QueryWrapper<Room> wrapper = new QueryWrapper<>();
        int count = roomMapper.selectCount(wrapper.eq("room_state",state));
        return count;
    }

    @Override
    public int getBedCount(int type) {
        QueryWrapper<Room> wrapper = new QueryWrapper<>();
        int count = roomMapper.selectCount(wrapper.eq("room_type",type));
        return count;
    }

    @Override
    public Map<String, Object> selectRoomByCol() {
        List<Room> rooms = roomMapper.selectRoomByCol();
        Map<String,Object> map = new HashMap<>();
        String[] a = new String[rooms.size()];
        Integer[] b = new Integer[rooms.size()];
        int i=0;
        for (Room room : rooms) {
            Building colByName = buildingService.getColByName(room.getRoomBld());
            String colName = collegesService.selectColByNo(colByName.getBldCollege());
            a[i] = colName;
            b[i] = room.getNums();
            i++;
        }
        map.put("p1",a);
        map.put("p2",b);
        return map;
    }


}
