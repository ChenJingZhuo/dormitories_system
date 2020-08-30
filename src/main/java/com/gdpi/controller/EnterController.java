package com.gdpi.controller;


import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.controller.EasyExcel.CheckinDataListener;
import com.gdpi.controller.EasyExcel.EnterDataListener;
import com.gdpi.entity.Checkin;
import com.gdpi.entity.Enter;
import com.gdpi.entity.History;
import com.gdpi.mapper.EnterMapper;
import com.gdpi.mapper.HistoryMapper;
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
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Api(tags = "enter API")
@RestController
@RequestMapping("/enter")
public class EnterController {

    @Resource
    private EnterMapper enterMapper;

    @Resource
    private HistoryMapper historyMapper;

    @ApiOperation("获取-enter-表信息")
    @GetMapping("/enterList")
    public List<Enter> index(){
        List<Enter> enters = enterMapper.selectList(null);
        //enters.forEach(System.out::println);
        return enters;
    }

    @ApiOperation("模糊查询入住人员")
    @GetMapping("/selectByLike")
    public List<Enter> selectByLike(String enterStuNo){
        System.out.println(enterStuNo);
        QueryWrapper<Enter> wrapper = new QueryWrapper<>();
        wrapper.like("enter_stu_no",enterStuNo);
        List<Enter> enters = enterMapper.selectList(wrapper);
        //enters.forEach(System.out::println);
        return enters;
    }

    @ApiOperation("单个新增入宿学生")
    @PostMapping("/insertOneStu")
    public ResultVo insertOneStu(Enter enter){
        if(enter.getEnterAudit()==1){
            his(enter,0);
        }
        int i = enterMapper.insert(enter);
        if(i > 0){
            return ResultUtils.success("新增成功");
        }
        return ResultUtils.error("新增失败");
    }

    @ApiOperation("单个撤销入宿学生")
    @GetMapping("/deleteOne")
    public ResultVo deleteOne(int enterId){
        Enter enter = enterMapper.selectById(enterId);
        if(enter.getEnterAudit()==1){
            his(enter,0);
        }
        int i = enterMapper.deleteById(enterId);
        if(i > 0){
            return ResultUtils.success("撤销成功");
        }
        return ResultUtils.error("撤销失败");
    }

    @ApiOperation("批量撤销入宿人员")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        int i = 0;
        for(String id:ids){
            Enter enter = enterMapper.selectById(id);
            if(enter.getEnterAudit()==1){
                his(enter,0);
            }
            i = enterMapper.deleteById(id);
        }
        if(i > 0){
            return ResultUtils.success("撤销成功");
        }
        return ResultUtils.error("撤销失败");
    }

    @ApiOperation("批量审核入宿人员")
    @DeleteMapping(value = "/passList",produces = {"application/json;charset=utf-8"})
    public ResultVo passList(@RequestBody String[] ids){
        int i = 0;
        for(String id:ids){
            Enter enter = enterMapper.selectById(id);
            if(enter.getEnterAudit()==0){
                enter.setEnterAudit(1);
            }
            i = enterMapper.updateById(enter);
        }
        if(i > 0){
            return ResultUtils.success("审核成功");
        }
        return ResultUtils.error("审核失败");
    }

    @ApiOperation("单个查询入住人员")
    @GetMapping("/findOne")
    public Enter findOne(int enterId){
        //System.out.println(enterId);
        Enter enter = enterMapper.selectById(enterId);
        return enter;
    }
    @ApiOperation("单个修改入住人员")
    @PostMapping("/updateOneStu")
    public ResultVo updateOneStu(Enter enter){
        if(enter.getEnterAudit()==1){
            his(enter,0);
        }
        int i = enterMapper.updateById(enter);
        if(i > 0){
            return ResultUtils.success("审核成功");
        }
        return ResultUtils.error("审核失败");
    }

    @ApiOperation("文件上传")
    @PostMapping("/upload")
    public ResultVo upload(@RequestParam("file") MultipartFile file) throws IOException {

        // 上传路径保存设置
        String path = System.getProperty("user.dir")+"\\upload\\enter";

        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }
        //文件上传地址
        System.out.println("上传文件保留地址："+realPath);

        file.transferTo(new File(realPath+"/"+file.getOriginalFilename()));

        String fileName = realPath+"/"+file.getOriginalFilename();
        EasyExcel.read(fileName, Enter.class, new EnterDataListener(enterMapper)).sheet().doRead();

        return ResultUtils.success("上传成功");
    }

    @ApiOperation("文件下载")
    @RequestMapping("/download")
    public void download(HttpServletRequest request, HttpServletResponse response){

        File file = new File(System.getProperty("user.dir")+"\\upload\\enter\\EnterTest.xlsx");
        byte[] buffer = new byte[1024];
        BufferedInputStream bis = null;
        OutputStream os = null; //输出流
        try {
            //判断文件父目录是否存在
            if (file.exists()) {
                //设置返回文件信息
                response.setContentType("application/vnd.ms-excel;charset=UTF-8");
                response.setCharacterEncoding("UTF-8");
                response.setHeader("Content-Disposition", "attachment;fileName=" + java.net.URLEncoder.encode("EnterTest.xlsx","UTF-8"));
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

    public void his(Enter enter,int isDel){
        History history=new History();
        history.setHisBld(enter.getEnterBld());
        history.setHisDate(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
        history.setHisRoom(enter.getEnterRoom());
        history.setHisStuName(enter.getEnterStuName());
        history.setHisStuNo(enter.getEnterStuNo()+"");
        history.setHisReason(enter.getEnterReason());
        history.setHisState(0);
        history.setHisIsdelete(isDel);
        historyMapper.insert(history);
    }

}

