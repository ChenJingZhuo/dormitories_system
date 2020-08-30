package com.gdpi.controller;


import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.controller.EasyExcel.CheckinDataListener;
import com.gdpi.entity.Checkin;
import com.gdpi.mapper.CheckinMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
@Api(tags = "入住人员管理 API")
@RestController
@RequestMapping("/checkin")
public class CheckinController {

    @Resource
    private CheckinMapper checkinMapper;

    @ApiOperation("获取入住人员管理-列表")
    @GetMapping("/checkinList")
    public List<Checkin> index(){
        List<Checkin> checkins = checkinMapper.selectList(null);
        checkins.forEach(System.out::println);
        return checkins;
    }


    @ApiOperation("模糊查询入住人员")
    @GetMapping("/selectByLike")
    public List<Checkin> selectByLike(String stuName){
        QueryWrapper<Checkin> wrapper = new QueryWrapper<>();
        wrapper.like("ch_stu_name",stuName);
        List<Checkin> checkins = checkinMapper.selectList(wrapper);
        checkins.forEach(System.out::println);
        return checkins;
    }

    @ApiOperation("单个新增入住人员")
    @PostMapping("/insertOneStu")
    public ResultVo insertOneStu(Checkin checkin){
        int i = checkinMapper.insert(checkin);
        if(i > 0){
            return ResultUtils.success("新增成功");
        }
        return ResultUtils.error("新增失败");
    }

    @ApiOperation("单个删除入住人员")
    @GetMapping("/deleteOne")
    public ResultVo deleteOne(int chId){
        int i = checkinMapper.deleteById(chId);
        if(i > 0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("删除入住人员")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        int i = 0;
        for(String id:ids){
            i = checkinMapper.deleteById(id);
        }
        if(i > 0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("单个查询入住人员")
    @GetMapping("/findOne")
    public Checkin findOne(int chId){
        System.out.println(chId);
        Checkin checkin = checkinMapper.selectById(chId);
        return checkin;
    }
    @ApiOperation("单个修改入住人员")
    @PostMapping("/updateOneStu")
    public ResultVo updateOneStu(Checkin checkin){
        int i = checkinMapper.updateById(checkin);
        if(i > 0){
            return ResultUtils.success("修改成功");
        }
        return ResultUtils.error("修改失败");
    }

    @ApiOperation("文件上传")
    @PostMapping("/upload")
    public ResultVo upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {

        // 上传路径保存设置
        String path = System.getProperty("user.dir")+"\\upload\\checkin";

        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }
        //文件上传地址
        System.out.println("上传文件保留地址："+realPath);

        file.transferTo(new File(realPath+"/"+file.getOriginalFilename()));

        String fileName = realPath+"/"+file.getOriginalFilename();
        EasyExcel.read(fileName, Checkin.class, new CheckinDataListener(checkinMapper)).sheet().doRead();

        return ResultUtils.success("上传成功");
    }


    @ApiOperation("文件下载")
    @RequestMapping("/download")
    public void download(HttpServletRequest request, HttpServletResponse response){

        File file = new File(System.getProperty("user.dir")+"\\upload\\checkin\\CheckTest.xlsx");
        byte[] buffer = new byte[1024];
        BufferedInputStream bis = null;
        OutputStream os = null; //输出流
        try {
            //判断文件父目录是否存在
            if (file.exists()) {
                //设置返回文件信息
                response.setContentType("application/vnd.ms-excel;charset=UTF-8");
                response.setCharacterEncoding("UTF-8");
                response.setHeader("Content-Disposition", "attachment;fileName=" + java.net.URLEncoder.encode("CheckTest.xlsx","UTF-8"));
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



}

