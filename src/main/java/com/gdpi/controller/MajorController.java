package com.gdpi.controller;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.controller.EasyExcel.MajorDataListener;
import com.gdpi.entity.Major;
import com.gdpi.mapper.MajorMapper;
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
@Api(tags = "major API")
@RestController
@RequestMapping("/major")
public class MajorController {

    @Resource
    private MajorMapper majorMapper;

    @ApiOperation("获取-major-表信息")
    @GetMapping("/majorList")
    public List<Major> index(){
        List<Major> majors = majorMapper.selectList(null);
        majors.forEach(System.out::println);
        return majors;
    }

    @ApiOperation("根据院系获取所属专业")
    @GetMapping("/selectByCol")
    public List<Major> selectBySchool(int majorCollege){
        QueryWrapper<Major> wrapper = new QueryWrapper<>();
        wrapper.eq("major_college",majorCollege);
        List<Major> majors = majorMapper.selectList(wrapper);
        majors.forEach(System.out::println);
        return majors;
    }

    @ApiOperation("添加专业")
    @PostMapping("/insert")
    public void insert(Major major){
        majorMapper.insert(major);
    }

    @ApiOperation("修改专业信息")
    @PostMapping("/update")
    public void update(Major major){
        majorMapper.updateById(major);
    }

    @ApiOperation("删除单个专业信息")
    @GetMapping("/deleteOne")
    public void deleteOne(int majorId){
        majorMapper.deleteById(majorId);
    }

    @ApiOperation("批量删除")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public void delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        for(String id:ids){
            majorMapper.deleteById(id);
        }
    }

    @ApiOperation("文件上传")
    @PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {

        // 上传路径保存设置
        String path = System.getProperty("user.dir")+"\\upload\\major";

        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }
        //文件上传地址
        System.out.println("上传文件保留地址："+realPath);

        file.transferTo(new File(realPath+"/"+file.getOriginalFilename()));

        String fileName = realPath+"/"+file.getOriginalFilename();
        EasyExcel.read(fileName, Major.class, new MajorDataListener(majorMapper)).sheet().doRead();

        return "ok";
    }

    @ApiOperation("文件下载")
    @RequestMapping("/download")
    public void download(HttpServletRequest request, HttpServletResponse response){
        File file = new File(System.getProperty("user.dir")+"\\upload\\major\\Major.xlsx");
        byte[] buffer = new byte[1024];
        BufferedInputStream bis = null;
        OutputStream os = null; //输出流
        try {
            //判断文件父目录是否存在
            if (file.exists()) {
                //设置返回文件信息
                response.setContentType("application/vnd.ms-excel;charset=UTF-8");
                response.setCharacterEncoding("UTF-8");
                response.setHeader("Content-Disposition", "attachment;fileName=" + java.net.URLEncoder.encode("userTemplate.xls","UTF-8"));
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

