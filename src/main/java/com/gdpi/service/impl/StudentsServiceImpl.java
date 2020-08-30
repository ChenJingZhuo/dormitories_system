package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Checkin;
import com.gdpi.entity.Students;
import com.gdpi.mapper.MajorMapper;
import com.gdpi.mapper.StudentsMapper;
import com.gdpi.service.MajorService;
import com.gdpi.service.StudentsService;
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
public class StudentsServiceImpl extends ServiceImpl<StudentsMapper, Students> implements StudentsService {

    @Resource
    private StudentsMapper studentsMapper;

    @Resource
    private MajorService majorService;

    @Override
    public List<Students> getStudentCountByCol() {
        QueryWrapper<Students> wrapper = new QueryWrapper<>();
        wrapper.groupBy("stu_college")
                .select("count(*) as nums,stu_college");
        return studentsMapper.selectList(wrapper);
    }

    @Override
    public Map<String,Object> getStudentCountByMajor() {
        QueryWrapper<Students> wrapper = new QueryWrapper<>();
        wrapper.groupBy("stu_major")
                .select("count(*) as nums,stu_major");
        List<Students> list = studentsMapper.selectList(wrapper);
        Map<String,Object> map = new HashMap<>();
        String[] a = new String[list.size()];
        Integer[] b = new Integer[list.size()];
        int i=0;
        for (Students students : list) {
            a[i] = majorService.selectMajorByNo(students.getStuMajor());
            b[i] = Integer.parseInt(students.getNums());
            i++;
        }
        map.put("p1",a);
        map.put("p2",b);
        return map;
    }

    @Override
    public Map<String,Object> getGradeCount() {
        QueryWrapper<Students> wrapper = new QueryWrapper<>();
        wrapper.groupBy("stu_grade").select("count(*) as nums,stu_grade");
        List<Students> students = studentsMapper.selectList(wrapper);
        Map<String,Object> map = new HashMap<>();
        String[] a = new String[students.size()];
        Integer[] b = new Integer[students.size()];
        int i=0;
        for (Students student : students) {
            a[i] = student.getStuGrade();
            b[i] = Integer.parseInt(student.getNums());
            i++;
        }
        map.put("p1",a);
        map.put("p2",b);
        return map;
    }
}
