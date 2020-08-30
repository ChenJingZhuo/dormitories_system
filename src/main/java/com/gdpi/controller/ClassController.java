package com.gdpi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Checkin;
import com.gdpi.entity.Class;
import com.gdpi.entity.School;
import com.gdpi.mapper.ClassMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.ClassService;
import com.gdpi.service.impl.ClassServiceImpl;
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
@Api(tags = "class API")
@RestController
@RequestMapping("/class")
public class ClassController {

    @Resource
    private ClassMapper classMapper;


    @ApiOperation("获取-class-表信息")
    @GetMapping("/classList")
    public List<Class> index(){
        List<Class> classes = classMapper.selectList(null);
        classes.forEach(System.out::println);
        return classes;
    }

    @ApiOperation("模糊查询入住人员")
    @GetMapping("/selectByName")
    public List<Class> selectByLike(String className){
        QueryWrapper<Class> wrapper = new QueryWrapper<>();
        wrapper.like("class_name",className);
        List<Class> c = classMapper.selectList(wrapper);
        c.forEach(System.out::println);
        return c;
    }

    @ApiOperation("添加班级")
    @PostMapping("/insertOne")
    public ResultVo insertOne(Class classs){
        int i = classMapper.insert(classs);
        if (i>0){
            return ResultUtils.success("添加成功");
        }
        return ResultUtils.error("添加失败");
    }

    @ApiOperation("修改校区信息")
    @PostMapping("/update")
    public ResultVo updateSchool(Class c){
        int i =classMapper.updateById(c);
        if (i>0){
            return ResultUtils.success("修改成功");
        }
        return ResultUtils.error("修改失败");
    }

    @ApiOperation("删除单个校区信息")
    @GetMapping("/deleteOne")
    public ResultVo deleteOne(int classId){
        int i = classMapper.deleteById(classId);
        if (i>0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("批量删除")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        int i = 0;
        for(String id:ids){
           i = classMapper.deleteById(id);
        }
        if (i>0){
            return ResultUtils.success("批量删除成功");
        }
        return ResultUtils.error("批量删除失败");
    }

}

