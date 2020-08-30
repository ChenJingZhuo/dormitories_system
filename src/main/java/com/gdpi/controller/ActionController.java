package com.gdpi.controller;


import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdpi.controller.EasyExcel.ActionDataListener;
import com.gdpi.controller.EasyExcel.ValuablesDataListener;
import com.gdpi.entity.Action;
import com.gdpi.entity.Valuables;
import com.gdpi.entity.role.vo.ParmVo;
import com.gdpi.mapper.ActionMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.ActionService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Api(tags = "操作记录管理 API")
@RestController
@RequestMapping("/action")
public class ActionController {

    @Resource
    private ActionMapper actionMapper;
    @Autowired
    private ActionService actionService;

    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/");

    @ApiOperation("获取-action-表信息")
    @GetMapping("/getActionList")
    public List<Action> index(){
        List<Action> actions = actionMapper.selectList(null);
        actions.forEach(System.out::println);
        return actions;
    }

    @ApiOperation("后端分页获取-action-表信息")
    @GetMapping("/getActionList2")
    public ResultVo getActionList(ParmVo parmVo){
        IPage<Action> page = new Page();
        page.setSize(parmVo.getPageSize());
        page.setCurrent(parmVo.getCurrentPage());
        IPage<Action> actionIPage = actionService.page(page);
        return ResultUtils.success("查询成功", actionIPage);
    }

    @ApiOperation("新增贵重物品信息")
    @PostMapping("/insertOneVal")
    public ResultVo insertOne(Action action){
        int count = actionMapper.insert(action);
        if (count > 0){
            return ResultUtils.success("添加成功");
        }
        return ResultUtils.error("添加失败");
    }

    @ApiOperation("修改操作记录信息")
    @PostMapping("/updateOneVal")
    public ResultVo updateOneStu(Action action){
        int count = actionMapper.updateById(action);
        if (count > 0){
            return ResultUtils.success("修改成功");
        }
        return ResultUtils.error("修改失败");
    }

    @ApiOperation("删除操作记录信息")
    @DeleteMapping("/deleteOne")
    public ResultVo deleteOne(int actId){
        int count = actionMapper.deleteById(actId);
        if (count > 0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("批量删除操作记录信息")
    @DeleteMapping(value = "/delSelected",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        int cout = 0;
        for(String id : ids){
            int i = actionMapper.deleteById(id);
            cout+=i;
        }
        if (cout > 0) {
            return ResultUtils.success("批量删除成功", cout);
        }
        return ResultUtils.error("批量删除失败");
    }

    @ApiOperation("模糊查询操作记录信息")
    @GetMapping("/selectByLike")
    public List<Action> selectByLike(String actRoom){
        LambdaQueryWrapper<Action> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.like(Action::getActRoom, actRoom);
        List<Action> actions = actionMapper.selectList(lambdaQuery);
        return actions;
    }

    @ApiOperation("文件上传")
    @PostMapping("/uploads")
    public ResultVo uploads(@RequestParam("files") List<MultipartFile> uploadFiles) throws IOException {
        for (MultipartFile uploadFile : uploadFiles) {
            EasyExcel.read(uploadFile.getInputStream(), Action.class, new ActionDataListener(actionMapper)).sheet().doRead();
        }
        return ResultUtils.success("上传成功");
    }

    @ApiOperation("文件下载")
    @RequestMapping("/download")
    public ResultVo download(HttpServletRequest request){
        String realPath = request.getServletContext().getRealPath("/downloadFile/");
        String format = sdf.format(new Date());
        File folder = new File(realPath+format);
        if (!folder.isDirectory()){
            folder.mkdirs();
        }
        String fileName = UUID.randomUUID().toString()+".xlsx";
        String file = realPath+format+fileName;
        System.out.println("文件下载: "+file);

        EasyExcel.write(file, Action.class).sheet("Sheet1").doWrite(actionMapper.selectList(null));
        //生成下载文件的访问路径， 并将访问路径返回
        String filePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/downloadFile/"+format+fileName;
        return ResultUtils.success("成功", filePath);
    }

    @ApiOperation("批量导入模板下载")
    @PostMapping("/getBatchInputTemplate")
    public ResultVo getBatchInputTemplate(HttpServletRequest request){
        String realPath = request.getSession().getServletContext().getRealPath("/BatchInputTemplate/Action/");
        File folder = new File(realPath);
        if (!folder.isDirectory()){
            folder.mkdirs();
        }
        String fileName = "ActionBatchInputTemplate.xlsx";
        String file = realPath+fileName;

        // 根据用户传入字段 假设我们要忽略 date
        Set<String> excludeColumnFiledNames = new HashSet<String>();
        excludeColumnFiledNames.add("actId");
        // 这里 需要指定写用哪个class去写，然后写到第一个sheet，名字为模板 然后文件流会自动关闭
        EasyExcel.write(file, Action.class).excludeColumnFiledNames(excludeColumnFiledNames).sheet("Sheet1").doWrite(null);
        //生成下载文件的访问路径， 并将访问路径返回
        String filePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/BatchInputTemplate/Action/"+fileName;
        return ResultUtils.success("成功", filePath);
    }
}

