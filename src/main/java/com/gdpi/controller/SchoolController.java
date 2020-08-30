package com.gdpi.controller;


import com.gdpi.entity.Exits;
import com.gdpi.entity.School;
import com.gdpi.mapper.SchoolMapper;
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
@Api(tags = "school API")
@RestController
@RequestMapping("/school")
public class SchoolController {

    @Resource
    private SchoolMapper schoolMapper;

    @ApiOperation("获取-school-表信息")
    @GetMapping("/schoolList")
    public List<School> index(){
        List<School> schools = schoolMapper.selectList(null);
        schools.forEach(System.out::println);
        return schools;
    }

    @ApiOperation("添加校区")
    @PostMapping("/insertOne")
    public void insertOne(School school){
        schoolMapper.insert(school);
    }

    @ApiOperation("修改校区信息")
    @PostMapping("/update")
    public void updateSchool(School school){
        schoolMapper.updateById(school);
    }

    @ApiOperation("删除单个校区信息")
    @GetMapping("/deleteOne")
    public void deleteOne(int schId){
        schoolMapper.deleteById(schId);
    }

    @ApiOperation("批量删除")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public void delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        for(String id:ids){
            schoolMapper.deleteById(id);
        }
    }

}

