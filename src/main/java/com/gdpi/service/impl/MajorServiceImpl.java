package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Colleges;
import com.gdpi.entity.Major;
import com.gdpi.mapper.MajorMapper;
import com.gdpi.service.MajorService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Service
public class MajorServiceImpl extends ServiceImpl<MajorMapper, Major> implements MajorService {

    @Resource
    private MajorMapper majorMapper;

    @Override
    public String selectMajorByNo(String majorNo) {
        QueryWrapper<Major> wrapper = new QueryWrapper<>();
        wrapper.select("major_name").eq("major_no",majorNo);
        Major major = majorMapper.selectOne(wrapper);
        String majorName = major.getMajorName();
        return majorName;
    }
}
