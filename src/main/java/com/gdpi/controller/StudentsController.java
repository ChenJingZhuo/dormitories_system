package com.gdpi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Students;
import com.gdpi.mapper.StudentsMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Api(tags = "students API")
@RestController
@RequestMapping("/students")
public class StudentsController {

    @Resource
    private StudentsMapper studentsMapper;
    @ApiOperation("获取-students-表信息")
    public List<Students> index(){
        List<Students> students = studentsMapper.selectList(null);
        students.forEach(System.out::println);
        return students;
    }

    @ApiOperation("通过学号获取学生信息")
    @GetMapping("/selectByStuNo")
    public Students selectByStuNo(String stuNo){
        QueryWrapper<Students> wrapper = new QueryWrapper<>();
        wrapper.eq("stu_no",stuNo);
        Students student = studentsMapper.selectOne(wrapper);
        System.out.println(student);
        return student;
    }

}

