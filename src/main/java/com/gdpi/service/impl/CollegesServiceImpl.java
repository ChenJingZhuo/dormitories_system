package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Colleges;
import com.gdpi.mapper.CollegesMapper;
import com.gdpi.service.CollegesService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Service
public class CollegesServiceImpl extends ServiceImpl<CollegesMapper, Colleges> implements CollegesService {

    @Resource
    private CollegesMapper collegesMapper;

    @Override
    public String selectColByNo(String No) {
        QueryWrapper<Colleges> wrapper = new QueryWrapper<>();
        wrapper.select("college_name").eq("college_no",No);
        Colleges colleges = collegesMapper.selectOne(wrapper);
        String collegeName = colleges.getCollegeName();
        return collegeName;
    }
}
