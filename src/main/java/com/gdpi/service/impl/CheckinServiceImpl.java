package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Checkin;
import com.gdpi.mapper.CheckinMapper;
import com.gdpi.service.CheckinService;
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
public class CheckinServiceImpl extends ServiceImpl<CheckinMapper, Checkin> implements CheckinService {

    @Resource
    private CheckinMapper checkinMapper;

    @Override
    public List<Checkin> getCheckinList() {
        return checkinMapper.selectList(null);
    }

    @Override
    public int getCount() {
        return checkinMapper.selectCount(null);
    }

    @Override
    public Map<String,Object> selectBldCount() {
        QueryWrapper<Checkin> wrapper = new QueryWrapper<>();
        wrapper.groupBy("ch_bld")
                .select("count(*) as nums,ch_bld");
        List<Checkin> checkins = checkinMapper.selectList(wrapper);
        Map<String,Object> map = new HashMap<>();
        String[] a = new String[checkins.size()];
        Integer[] b = new Integer[checkins.size()];
        int i=0;
        for (Checkin checkin : checkins) {
            a[i] = checkin.getChBld();
            b[i] = checkin.getNums();
            i++;
        }
        map.put("p1",a);
        map.put("p2",b);
        return map;
    }
}
