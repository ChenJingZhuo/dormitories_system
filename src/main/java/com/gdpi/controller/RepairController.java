package com.gdpi.controller;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Repair;
import com.gdpi.mapper.RepairMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Api(tags = "repair API")
@RestController
@RequestMapping("/repair")
public class RepairController {

    @Resource
    private RepairMapper repairMapper;

    @ApiOperation("获取-repair-表信息")
    @GetMapping("/repairList")
    public List<Repair> index(){
        List<Repair> repairs = repairMapper.selectList(null);
        repairs.forEach(System.out::println);
        return repairs;
    }

    @ApiOperation("根据要求查询维护记录")
    @GetMapping("/selectByFrom")
    public List<Repair> selectByLike(String repName){
        QueryWrapper<Repair> wrapper = new QueryWrapper<>();
        wrapper.like("rep_name",repName);
        List<Repair> repairs = repairMapper.selectList(wrapper);
        repairs.forEach(System.out::println);
        return repairs;
    }

    @ApiOperation("添加设施维护申请")
    @PostMapping("/insertRepair")
    public void insertRepair(Repair repair){
        repairMapper.insert(repair);
    }

    @ApiOperation("修改维护申请")
    @PostMapping("/updateRepair")
    public void update(Repair repair){
        repairMapper.updateById(repair);
    }

    @ApiOperation("单个删除退宿申请")
    @DeleteMapping("/deleteOne")
    public void deleteOne(int repId){
        repairMapper.deleteById(repId);
    }

    @ApiOperation("删除退宿申请记录")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public void delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        for(String id:ids){
            repairMapper.deleteById(id);
        }
    }

    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/");

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

        EasyExcel.write(file, Repair.class).sheet("Sheet1").doWrite(repairMapper.selectList(null));
        //生成下载文件的访问路径， 并将访问路径返回
        String filePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/downloadFile/"+format+fileName;
        return ResultUtils.success("成功", filePath);
    }
}

