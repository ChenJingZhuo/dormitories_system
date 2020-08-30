package com.gdpi.controller;


import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdpi.controller.EasyExcel.ValuablesDataListener;
import com.gdpi.entity.Move;
import com.gdpi.entity.Valuables;
import com.gdpi.entity.role.vo.ParmVo;
import com.gdpi.mapper.ValuablesMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.ValuablesService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
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
@Api(tags = "贵重物品管理 API")
@Slf4j
@RestController
@RequestMapping("/valuables")
public class ValuablesController {

    @Resource
    private ValuablesMapper valuablesMapper;
    @Autowired
    private ValuablesService valuablesService;

    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/");

    @ApiOperation("获取-valuables-表信息")
    @GetMapping("/valuablesList")
    public List<Valuables> index(){
        List<Valuables> valuables = valuablesMapper.selectList(null);
        //valuables.forEach(System.out::println);
        return valuables;
    }

    @ApiOperation("后端分页获取-valuables-表信息")
    @GetMapping("/getValuablesList")
    public ResultVo getValuablesList(ParmVo parmVo){
        IPage<Valuables> page = new Page();
        page.setSize(parmVo.getPageSize());
        page.setCurrent(parmVo.getCurrentPage());
        IPage<Valuables> valuablesIPage = valuablesService.page(page);
        return ResultUtils.success("查询成功", valuablesIPage);
    }

    @ApiOperation("新增贵重物品信息")
    @PostMapping("/insertOneVal")
    public ResultVo insertOne(Valuables valuables){
        int count = valuablesMapper.insert(valuables);
        if (count > 0){
            return ResultUtils.success("添加成功");
        }
        return ResultUtils.error("添加失败");
    }

    @ApiOperation("修改贵重物品信息")
    @PostMapping("/updateOneVal")
    public ResultVo updateOne(Valuables valuables){
        int count = valuablesMapper.updateById(valuables);
        if (count > 0){
            return ResultUtils.success("修改成功");
        }
        return ResultUtils.error("修改失败");
    }

    @ApiOperation("删除贵重物品信息")
    @GetMapping("/deleteOne")
    public ResultVo deleteOne(int valId){
        int count = valuablesMapper.deleteById(valId);
        if (count > 0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("批量删除贵重物品信息")
    @DeleteMapping(value = "/delSelected",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        int cout = 0;
        for(String id : ids){
            int i = valuablesMapper.deleteById(id);
            cout+=i;
        }
        if (cout > 0) {
            return ResultUtils.success("批量删除成功", cout);
        }
        return ResultUtils.error("批量删除失败");
    }

    @ApiOperation("模糊查询贵重物品信息")
    @GetMapping("/selectByLike")
    public List<Valuables> selectByLike(String valStuName, String valName, String valRemark){
        LambdaQueryWrapper<Valuables> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.like(Valuables::getValStuName, valStuName).like(Valuables::getValName, valName).like(Valuables::getValRemark, valRemark);
        List<Valuables> valuables = valuablesMapper.selectList(lambdaQuery);
        return valuables;
    }

    @ApiOperation("文件上传")
    @PostMapping("/uploads")
    public ResultVo uploads(@RequestParam("files") List<MultipartFile> uploadFiles) throws IOException {
        for (MultipartFile uploadFile : uploadFiles) {
            EasyExcel.read(uploadFile.getInputStream(), Valuables.class, new ValuablesDataListener(valuablesMapper)).sheet().doRead();
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

        EasyExcel.write(file, Valuables.class).sheet("Sheet1").doWrite(valuablesMapper.selectList(null));
        //生成下载文件的访问路径， 并将访问路径返回
        String filePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/downloadFile/"+format+fileName;
        return ResultUtils.success("成功", filePath);
    }

    @ApiOperation("批量导入模板下载")
    @PostMapping("/getBatchInputTemplate")
    public ResultVo getBatchInputTemplate(HttpServletRequest request){
        String realPath = request.getSession().getServletContext().getRealPath("/BatchInputTemplate/Valuables/");
        File folder = new File(realPath);
        if (!folder.isDirectory()){
            folder.mkdirs();
        }
        String fileName = "ValuablesBatchInputTemplate.xlsx";
        String file = realPath+fileName;

        // 根据用户传入字段 假设我们要忽略 date
        Set<String> excludeColumnFiledNames = new HashSet<String>();
        excludeColumnFiledNames.add("valId");
        // 这里 需要指定写用哪个class去写，然后写到第一个sheet，名字为模板 然后文件流会自动关闭
        EasyExcel.write(file, Valuables.class).excludeColumnFiledNames(excludeColumnFiledNames).sheet("Sheet1").doWrite(null);
        //生成下载文件的访问路径， 并将访问路径返回
        String filePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/BatchInputTemplate/Valuables/"+fileName;
        return ResultUtils.success("成功", filePath);
    }
}

