package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Building;
import com.gdpi.entity.Students;
import com.gdpi.mapper.BuildingMapper;
import com.gdpi.service.BuildingService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdpi.service.CollegesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collection;
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
public class BuildingServiceImpl extends ServiceImpl<BuildingMapper, Building> implements BuildingService {

    @Resource
    private BuildingMapper buildingMapper;

    @Resource
    private CollegesService collegesService;

    @Override
    public Building getColByName(String bldName) {
        QueryWrapper<Building> wrapper = new QueryWrapper<>();
        wrapper.eq("bld_name",bldName).select("bld_college");
        return buildingMapper.selectOne(wrapper);
    }

    @Override
    public Map<String, Object> getActionCount() {
        List<Building> buildingList = buildingMapper.getActionList();
        Map<String,Object> map = new HashMap<>();
        String[] a = new String[buildingList.size()];
        Integer[] b = new Integer[buildingList.size()];
        int i=0;
        for (Building building : buildingList) {
            a[i] = collegesService.selectColByNo(building.getBldCollege());
            b[i] = Integer.parseInt(building.getNums());
            i++;
        }
        map.put("p1",a);
        map.put("p2",b);
        return map;
    }
}
