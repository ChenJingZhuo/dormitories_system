package com.gdpi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Colleges;
import com.gdpi.entity.School;
import com.gdpi.mapper.CollegesMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Api(tags = "colleges API")
@RestController
@RequestMapping("/colleges")
public class CollegesController {

    @Resource
    private CollegesMapper collegesMapper;

    @ApiOperation("获取-colleges-表信息")
    @GetMapping("/collegesList")
    public List<Colleges> index(){
        List<Colleges> colleges = collegesMapper.selectList(null);
        colleges.forEach(System.out::println);
        return colleges;
    }

    @ApiOperation("根据校区获取所属院系")
    @GetMapping("/selectBySchool")
    public List<Colleges> selectBySchool(int collegeSchool){
        QueryWrapper<Colleges> wrapper = new QueryWrapper<>();
        wrapper.eq("college_school",collegeSchool);
        List<Colleges> colleges = collegesMapper.selectList(wrapper);
        colleges.forEach(System.out::println);
        return colleges;
    }

    @ApiOperation("根据编号获取所属院系")
    @GetMapping("/selectByNo")
    public List<Colleges> selectByNo(int collegeNo){
        QueryWrapper<Colleges> wrapper = new QueryWrapper<>();
        wrapper.eq("college_no",collegeNo);
        List<Colleges> colleges = collegesMapper.selectList(wrapper);
        colleges.forEach(System.out::println);
        return colleges;
    }

    @ApiOperation("添加院系")
    @PostMapping("/insertOne")
    public void insertOne(Colleges colleges){
        collegesMapper.insert(colleges);
    }

    @ApiOperation("修改院系信息")
    @PostMapping("/update")
    public void update(Colleges colleges){
        collegesMapper.updateById(colleges);
    }

    @ApiOperation("删除单个院系信息")
    @GetMapping("/deleteOne")
    public void deleteOne(int collegeId){
        collegesMapper.deleteById(collegeId);
    }

    @ApiOperation("批量删除")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public void delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        for(String id:ids){
            collegesMapper.deleteById(id);
        }
    }

}

