package com.gdpi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdpi.entity.History;
import com.gdpi.entity.Log;
import com.gdpi.mapper.HistoryMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.HistoryService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
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
@Api(tags = "history API")
@RestController
@RequestMapping("/history")
public class HistoryController {

    @Resource
    private HistoryMapper historyMapper;

    @Autowired
    private HistoryService historyService;

    @ApiOperation("获取-history-表信息")
    @GetMapping
    public List<History> index(){
        List<History> histories = historyService.list();
        return histories;
    }

    @ApiOperation("查询-history-表信息")
    @GetMapping("/select")
    public ResultVo like(String hisStuName, String hisStuNo, String hisBld, String hisRoom, String hisReason, Long pageSize, Long currentPage){
        QueryWrapper<History> wrapper=new QueryWrapper<>();
//        if (hisStuName.isEmpty()&&hisStuNo.isEmpty()&&hisBld.isEmpty()&&hisRoom.isEmpty()&&hisReason.isEmpty()){ }
        wrapper.like("his_stu_name",hisStuName)
                .like("his_stu_no",hisStuNo)
                .like("his_bld",hisBld)
                .like("his_room",hisRoom)
                .like("his_reason",hisReason);
        IPage<History> page = new Page();
        page.setSize(pageSize);
        page.setCurrent(currentPage);
        IPage<History> histories = historyService.page(page, wrapper);
        return ResultUtils.success("查询成功",histories);
    }

    @ApiOperation("删除-history-表信息")
    @DeleteMapping(value = "/del",produces = {"application/json;charset=utf-8"})
    public ResultVo del(@RequestBody String[] ids){
        return historyService.removeByIds(Arrays.asList(ids)) ? ResultUtils.success("删除成功") : ResultUtils.success("删除失败") ;
    }
}

