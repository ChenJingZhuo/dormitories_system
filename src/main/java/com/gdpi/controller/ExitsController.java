package com.gdpi.controller;


import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.controller.EasyExcel.ExitsDataListener;
import com.gdpi.entity.Exits;
import com.gdpi.entity.History;
import com.gdpi.mapper.ExitsMapper;
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
 * @since 2020-08-05
 */
@Api(tags = "exits API")
@RestController
@RequestMapping("/exits")
public class ExitsController {

    @Resource
    private ExitsMapper exitsMapper;

    @Resource
    private HistoryMapper historyMapper;

    @ApiOperation("获取-Exits-表信息")
    @GetMapping("/exitsList")
    public List<Exits> index(){
        List<Exits> exits = exitsMapper.selectList(null);
        exits.forEach(System.out::println);
        return exits;
    }

    @ApiOperation("模糊查询退宿人员")
    @GetMapping("/selectByLike")
    public List<Exits> selectByLike(String exitStuName){
        QueryWrapper<Exits> wrapper = new QueryWrapper<>();
        wrapper.like("exit_stu_name",exitStuName);
        List<Exits> exits = exitsMapper.selectList(wrapper);
        exits.forEach(System.out::println);
        return exits;
    }

    @ApiOperation("查询退宿毕业生")
    @GetMapping("/graduateSelect")
    public List<Exits> graduateSelcet(){
        QueryWrapper<Exits> wrapper = new QueryWrapper<>();
        wrapper.like("exit_reason","毕业");
        List<Exits> exits = exitsMapper.selectList(wrapper);
        exits.forEach(System.out::println);
        return exits;
    }

    @ApiOperation("添加单个退宿申请")
    @PostMapping("/insertOneExit")
    public ResultVo insertOneStu(Exits exits){
        if (exits.getExitAudit()==1){
            his(exits,0);
        }
        int i = exitsMapper.insert(exits);
        if(i > 0){
            return ResultUtils.success("添加成功");
        }
        return ResultUtils.error("添加失败");
    }

    @ApiOperation("单个修改退宿申请")
    @PostMapping("/updateExit")
    public ResultVo updateOneStu(Exits exits){
        int  i = exitsMapper.updateById(exits);
        Exits exits1 = exitsMapper.selectById(exits.getExitId());
        if (exits1.getExitAudit()==1){
            his(exits1,0);
        }
        if(i> 0){
            return ResultUtils.success("修改成功");
        }
        return ResultUtils.error("修改失败");
    }

    @ApiOperation("批量通过审核")
    @PostMapping(value = "/updateListY",produces = {"application/json;charset=utf-8"})
    public ResultVo updateListY(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        int i = 0;
        for(String id:ids){
            Exits exits = new Exits();
            exits.setExitId(Integer.parseInt(id));
            exits.setExitAudit(1);
            i = exitsMapper.updateById(exits);
            Exits exits1 = exitsMapper.selectById(id);
            his(exits1,0);
        }
        if(i> 0){
            return ResultUtils.success("审核成功");
        }
        return ResultUtils.error("审核失败");
    }

    @ApiOperation("批量不通过")
    @PostMapping(value = "/updateListN",produces = {"application/json;charset=utf-8"})
    public ResultVo updateListN(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        int i = 0;
        for(String id:ids){
            Exits exits = new Exits();
            exits.setExitId(Integer.parseInt(id));
            exits.setExitAudit(2);
            exitsMapper.updateById(exits);
        }
        if(i> 0){
            return ResultUtils.success("审核成功");
        }
        return ResultUtils.error("审核失败");
    }

    @ApiOperation("单个删除退宿申请")
    @GetMapping("/deleteOne")
    public ResultVo deleteOne(int exitId){
        Exits exits = exitsMapper.selectById(exitId);
        if (exits.getExitAudit()==1){
            his(exits,0);
        }
        int i = exitsMapper.deleteById(exitId);
        if(i> 0){
            return ResultUtils.success("撤销成功");
        }
        return ResultUtils.error("撤销失败");
    }

    @ApiOperation("删除退宿申请记录")
    @DeleteMapping(value = "/delete",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        System.out.println(Arrays.toString(ids));
        int i =0;
        for(String id:ids){
            Exits exits = exitsMapper.selectById(id);
            if (exits.getExitAudit()==1){
                his(exits,0);
            }
            i = exitsMapper.deleteById(id);
        }
        if(i> 0){
            return ResultUtils.success("批量撤销成功");
        }
        return ResultUtils.error("批量撤销失败");
    }

    @ApiOperation("文件上传")
    @PostMapping("/upload")
    public ResultVo upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {

        // 上传路径保存设置
        String path = System.getProperty("user.dir")+"\\upload\\exits";

        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }
        //文件上传地址
        System.out.println("上传文件保留地址："+realPath);

        file.transferTo(new File(realPath+"/"+file.getOriginalFilename()));

        String fileName = realPath+"/"+file.getOriginalFilename();
        EasyExcel.read(fileName, Exits.class, new ExitsDataListener(exitsMapper)).sheet().doRead();

        return ResultUtils.success("上传成功");
    }

    @ApiOperation("文件下载")
    @RequestMapping("/download")
    public void download(HttpServletRequest request, HttpServletResponse response){
        File file = new File(System.getProperty("user.dir")+"\\upload\\exits\\Exits.xlsx");
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

    public void his(Exits exits, int isDel){
        History history=new History();
        history.setHisBld(exits.getExitBld());
        history.setHisDate(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
        history.setHisState(1);
        history.setHisRoom(exits.getExitRoom());
        history.setHisStuName(exits.getExitStuName());
        history.setHisStuNo(exits.getExitStuNo()+"");
        history.setHisReason(exits.getExitReason());
        history.setHisIsdelete(isDel);
        historyMapper.insert(history);
    }
    
}

