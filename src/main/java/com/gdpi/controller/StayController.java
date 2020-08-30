package com.gdpi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Stay;
import com.gdpi.mapper.StayMapper;
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
@Api(tags = "stay API")
@RestController
@RequestMapping("/stay")
public class StayController {

    @Resource
    private StayMapper stayMapper;

    @ApiOperation("获取-stay-表信息")
    @GetMapping("/stayList")
    public List<Stay> index(){
        List<Stay> stays = stayMapper.selectList(null);
        stays.forEach(System.out::println);
        return stays;
    }

    @ApiOperation("根据要求查询留宿记录")
    @GetMapping("/selectByFrom")
    public List<Stay> selectByLike(Stay stay){
        QueryWrapper<Stay> wrapper = new QueryWrapper<>();
        String stayStuNo = stay.getStayStuNo();
        String stayBld = stay.getStayBld();
        if(stayStuNo != null){
            wrapper.eq("stay_stu_no",stayStuNo);
        }
        if(stayBld != null){
            wrapper.like("stay_bld",stayBld);
        }
        List<Stay> stays = stayMapper.selectList(wrapper);
        stays.forEach(System.out::println);
        return stays;
    }

    @ApiOperation("添加留宿申请")
    @PostMapping("/insertOneStay")
    public void insertOneStu(Stay stay){
        stayMapper.insert(stay);
    }

    @ApiOperation("修改退宿申请")
    @PostMapping("/updateStay")
    public void update(Stay stay){
        stayMapper.updateById(stay);
    }

    @ApiOperation("批量通过审核")
    @PostMapping(value = "/updateListY",produces = {"application/json;charset=utf-8"})
    public void updateListY(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        for(String id:ids){
            Stay stay = new Stay();
            stay.setStayId(Integer.parseInt(id));
            stay.setStayAudit(1);
            stayMapper.updateById(stay);
        }
    }

    @ApiOperation("批量不通过审核")
    @PostMapping(value = "/updateListN",produces = {"application/json;charset=utf-8"})
    public void updateListN(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        for(String id:ids){
            Stay stay = new Stay();
            stay.setStayId(Integer.parseInt(id));
            stay.setStayAudit(2);
            stayMapper.updateById(stay);
        }
    }

    @ApiOperation("单个删除退宿申请")
    @DeleteMapping("/deleteOne")
    public void deleteOne(int stayId){
        stayMapper.deleteById(stayId);
    }

    @ApiOperation("删除退宿申请记录")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public void delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        for(String id:ids){
            stayMapper.deleteById(id);
        }
    }

}

