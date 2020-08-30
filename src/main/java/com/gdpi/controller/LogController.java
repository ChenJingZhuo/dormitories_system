package com.gdpi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdpi.entity.History;
import com.gdpi.entity.Log;
import com.gdpi.entity.role.Role;
import com.gdpi.mapper.HistoryMapper;
import com.gdpi.mapper.LogMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.LogService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.sql.Wrapper;
import java.util.Collection;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cjz
 * @since 2020-08-14
 */
@RestController
@RequestMapping("/log")
public class LogController {

    @Autowired
    private LogService logService;

    @Resource
    private LogMapper logMapper;

    @ApiOperation("查询-log-表信息")
    @GetMapping
    public List<Log> index(){
        return logService.list();
    }

    @ApiOperation("搜索-log-表信息")
    @GetMapping("/select")
    public ResultVo sel(String logUser, String logTable, String logType,
                        Long pageSize, Long currentPage){
        System.out.println("**************"+logUser+logTable+logType);
        QueryWrapper<Log> queryWrapper=new QueryWrapper<>();
        queryWrapper.like("log_user",logUser).like("log_table",logTable);
        if (!logType.isEmpty()) {
            queryWrapper.eq("log_type", Integer.parseInt(logType));
        }
        IPage<Log> page = new Page();
        page.setSize(pageSize);
        page.setCurrent(currentPage);
        IPage<Log> roleList = logService.page(page, queryWrapper);
        return ResultUtils.success("查询成功",roleList);
    }

    @ApiOperation("删除-log-表信息")
    @DeleteMapping(value = "/del",produces = {"application/json;charset=utf-8"})
    public ResultVo del(@RequestBody String[] ids) {
        int count = 0;
        for (String id : ids) {
            count = logMapper.deleteById(id);
        }
        if (count > 0){
            return ResultUtils.success("删除成功");
        } else {
            return ResultUtils.success("删除失败");
        }
    }
}

