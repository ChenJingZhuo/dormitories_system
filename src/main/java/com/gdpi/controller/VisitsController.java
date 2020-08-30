package com.gdpi.controller;


import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Enter;
import com.gdpi.entity.Students;
import com.gdpi.entity.Visits;
import com.gdpi.mapper.StudentsMapper;
import com.gdpi.mapper.VisitsMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
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
@Api(tags = "visits API")
@RestController
@RequestMapping("/visits")
public class VisitsController {

    @Resource
    private VisitsMapper visitsMapper;

    @Resource
    private StudentsMapper studentsMapper;

    @ApiOperation("获取-visits-表信息")
    @GetMapping("/visitList")
    public List<Visits> index(){
        List<Visits> visits = visitsMapper.selectList(null);

        for (Visits visit : visits) {

            List<Students> students = byNo(visit.getVisStuNo());
            for (Students student : students) {
                visit.setVisName(student.getStuName());
            }

        }
        
        return visits;
    }

    @ApiOperation("模糊查询入住人员")
    @GetMapping("/selectByLike")
    public List<Visits> selectByLike(String visStuNo){
        QueryWrapper<Visits> wrapper = new QueryWrapper<>();
        wrapper.like("vis_stu_no",visStuNo);
        List<Visits> visits = visitsMapper.selectList(wrapper);
        for (Visits visit : visits) {

            List<Students> students = byNo(visit.getVisStuNo());

            for (Students student : students) {
                visit.setVisName(student.getStuName());
            }

        }
        //visits.forEach(System.out::println);
        return visits;
    }


    @ApiOperation("单个新增访客")
    @PostMapping("/insertOneStu")
    public ResultVo insertOneStu(Visits visits){
        int i = visitsMapper.insert(visits);
        if(i > 0){
            return ResultUtils.success("新增成功");
        }
        return ResultUtils.error("新增失败");
    }

    @ApiOperation("单个删除访客")
    @GetMapping("/deleteOne")
    public ResultVo deleteOne(int visId){
        int i = visitsMapper.deleteById(visId);
        if(i > 0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("批量删除访客")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        //System.out.println(Arrays.toString(ids));
        int i = 0;
        for(String id:ids){
            i = visitsMapper.deleteById(id);
        }
        if(i > 0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("单个查询访客")
    @GetMapping("/findOne")
    public Visits findOne(int visId){
        //System.out.println(enterId);
        Visits visits = visitsMapper.selectById(visId);
        return visits;
    }

    @ApiOperation("单个修改访客")
    @PostMapping("/updateOne")
    public ResultVo updateOneStu(Visits visits){
        //System.out.println(visits);
        int i = visitsMapper.updateById(visits);
        if(i > 0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("导出访客")
    @PostMapping("/writeOut")
    public void writeOut(HttpServletResponse response){
        String path = System.getProperty("user.dir")+"\\upload\\visit\\";
        String fileName = path + "Visit.xlsx";
        // 这里 需要指定写用哪个class去写，然后写到第一个sheet，名字为模板 然后文件流会自动关闭
        EasyExcel.write(fileName, Visits.class).sheet("访客记录").doWrite(index());

        File file = new File(System.getProperty("user.dir")+"\\upload\\visit\\Visit.xlsx");
        byte[] buffer = new byte[1024];
        BufferedInputStream bis = null;
        OutputStream os = null; //输出流
        try {
            //判断文件父目录是否存在
            if (file.exists()) {
                //设置返回文件信息
                response.setContentType("application/vnd.ms-excel;charset=UTF-8");
                response.setCharacterEncoding("UTF-8");
                response.setHeader("Content-Disposition", "attachment;fileName=" + java.net.URLEncoder.encode("Visit.xlsx","UTF-8"));
                os = response.getOutputStream();
                bis = new BufferedInputStream(new FileInputStream(file));
                while(bis.read(buffer) != -1){
                    os.write(buffer);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(bis != null) {
                    bis.close();
                }
                if(os != null) {
                    os.flush();
                    os.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }


    //封装通过学号查询名字
    public List<Students> byNo(String stuNo){
        QueryWrapper<Students> wrapper = new QueryWrapper<>();
        wrapper.like("stu_no",stuNo);
        List<Students> students  = studentsMapper.selectList(wrapper);
        return students;
    }


}

