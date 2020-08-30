package com.gdpi.controller;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.gdpi.entity.Action;
import com.gdpi.entity.Building;
import com.gdpi.mapper.BuildingMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Api(tags = "building API")
@RestController
@RequestMapping("/building")
public class BuildingController {

    @Resource
    private BuildingMapper buildingMapper;

    @ApiOperation("获取-building-表信息")
    @GetMapping
    public List<Building> index(){
        List<Building> buildings = buildingMapper.selectList(null);
        buildings.forEach(System.out::println);
        return buildings;
    }

}

