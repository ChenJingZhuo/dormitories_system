package com.gdpi.controller;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.conditions.update.LambdaUpdateChainWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdpi.controller.EasyExcel.MoveDataListener;
import com.gdpi.entity.Move;
import com.gdpi.entity.History;

import com.gdpi.entity.role.vo.ParmVo;
import com.gdpi.mapper.HistoryMapper;
import com.gdpi.mapper.MoveMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.MoveService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author cjz
 * @since 2020-07-29
 */
@Slf4j
@Api(tags = "学生调宿管理 API")
@RestController
@RequestMapping("/move")
public class MoveController {

    @Resource
    private MoveMapper moveMapper;
    @Autowired
    private MoveService moveService;
    @Resource
    private HistoryMapper historyMapper;

    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/");

    @ApiOperation("获取-move-表信息")
    @GetMapping("/moveList")
    public List<Move> index(){
        List<Move> moves = moveMapper.selectList(null);
        //moves.forEach(System.out::println);
        return moves;
    }

    @ApiOperation("后端分页获取-move-表信息")
    @GetMapping("/getMoveList")
    public ResultVo getMoveList(ParmVo parmVo){
        IPage<Move> page = new Page();
        page.setSize(parmVo.getPageSize());
        page.setCurrent(parmVo.getCurrentPage());
        IPage<Move> moves = moveService.page(page);
        return ResultUtils.success("查询成功", moves);
    }

    @ApiOperation("新增调宿学生")
    @PostMapping("/insertOneStu")
    public ResultVo insertOne(Move move){
        if (move.getMoveAudit()==1){
            his(move,0);
        }
        int count = moveMapper.insert(move);
        if (count > 0){
            return ResultUtils.success("添加成功");
        }
        return ResultUtils.error("添加失败");
    }

    @ApiOperation("修改调宿学生")
    @PostMapping("/updateOneStu")
    public ResultVo updateOne(Move move){
        if (move.getMoveAudit()==1){
            his(move,0);
        }
        int count = moveMapper.updateById(move);
        if (count > 0){
            return ResultUtils.success("修改成功");
        }
        return ResultUtils.error("修改失败");
    }

    @ApiOperation("查询调宿学生")
    @GetMapping("/findOne")
    public Move findOne(int moveId){
        Move move = moveMapper.selectById(moveId);
        System.out.println(move);
        return move;
    }

    @ApiOperation("删除调宿学生")
    @GetMapping("/deleteOne")
    public ResultVo deleteOne(int moveId){
        Move move = moveMapper.selectById(moveId);
        if (move.getMoveAudit()==1){
            his(move,1);
        }
        int count = moveMapper.deleteById(moveId);
        if (count > 0){
            return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败");
    }

    @ApiOperation("批量撤销调宿学生信息")
    @DeleteMapping(value = "/delSelected",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        System.out.println("ids>>>>"+ids);
        System.out.println(Arrays.toString(ids));
        int cout = 0;
        for(String id : ids){
            Move move = moveMapper.selectById(id);
            if (move.getMoveAudit()==1){
                his(move,1);
            }
            int i = moveMapper.deleteById(id);
            cout+=i;
        }
        if (cout > 0) {
            return ResultUtils.success("批量撤销成功", cout);
        }
        return ResultUtils.error("批量撤销失败");
    }


    @ApiOperation("批量审核调宿学生信息")
    @PostMapping("/batchAudit")
    public ResultVo batchAudit(@RequestBody String[] batchAuditIds){
        boolean update = false;
        for (String id : batchAuditIds) {
            update = new LambdaUpdateChainWrapper<Move>(moveMapper)
                    .eq(Move::getMoveId, id).set(Move::getMoveAudit, "1").update();

            Move move = moveMapper.selectById(id);
            if (move.getMoveAudit()==1){
                his(move,1);
            }
        }
        if (update){
            return ResultUtils.success("批量审核成功");
        }
        return ResultUtils.error("批量审核失败");
    }

    @ApiOperation("模糊查询调宿学生")
    @GetMapping("/selectByLike")
    public List<Move> selectByLike(String moveStuNo){
        LambdaQueryWrapper<Move> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.like(Move::getMoveStuNo,moveStuNo);
        List<Move> moves = moveMapper.selectList(lambdaQuery);
        log.info(moves.toString());
        return moves;
    }

    @ApiOperation("文件上传")
    @PostMapping("/uploads")
    public ResultVo uploads(@RequestParam("files") List<MultipartFile> uploadFiles) throws IOException {
        for (MultipartFile uploadFile : uploadFiles) {
            EasyExcel.read(uploadFile.getInputStream(), Move.class, new MoveDataListener(moveMapper)).sheet().doRead();
        }
        return ResultUtils.success("上传成功");
    }

    @ApiOperation("文件下载")
    @PostMapping("/download")
    public ResultVo download(HttpServletRequest request){
        String realPath = request.getSession().getServletContext().getRealPath("/downloadFile/");
        String format = sdf.format(new Date());
        File folder = new File(realPath+format);
        if (!folder.isDirectory()){
            folder.mkdirs();
        }
        String fileName = UUID.randomUUID().toString()+".xlsx";
        String file = realPath+format+fileName;

        EasyExcel.write(file, Move.class).sheet("Sheet1").doWrite(moveMapper.selectList(null));
        //生成下载文件的访问路径， 并将访问路径返回
        String filePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/downloadFile/"+format+fileName;
        return ResultUtils.success("成功", filePath);
    }

    @ApiOperation("批量导入模板下载")
    @PostMapping("/getBatchInputTemplate")
    public ResultVo getBatchInputTemplate(HttpServletRequest request){
        String realPath = request.getSession().getServletContext().getRealPath("/BatchInputTemplate/Move/");
        File folder = new File(realPath);
        if (!folder.isDirectory()){
            folder.mkdirs();
        }
        String fileName = "MoveBatchInputTemplate.xlsx";
        String file = realPath+fileName;

        // 根据用户传入字段 假设我们要忽略 date
        Set<String> excludeColumnFiledNames = new HashSet<String>();
        excludeColumnFiledNames.add("moveId");
        // 这里 需要指定写用哪个class去写，然后写到第一个sheet，名字为模板 然后文件流会自动关闭
        EasyExcel.write(file, Move.class).excludeColumnFiledNames(excludeColumnFiledNames).sheet("Sheet1").doWrite(null);
        //生成下载文件的访问路径， 并将访问路径返回
        String filePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/BatchInputTemplate/Move/"+fileName;
        return ResultUtils.success("成功", filePath);
    }

    public void his(Move move, int isDel){
        History history=new History();
        history.setHisBld(move.getMoveOldBld());
        history.setHisDate(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
        history.setHisState(3);
        history.setHisRoom(move.getMoveOldRoom());
        history.setHisStuName(move.getMoveStuName());
        history.setHisStuNo(move.getMoveStuNo()+"");
        history.setHisReason(move.getMoveReason());
        history.setHisNewBld(move.getMoveNewBld());
        history.setHisNewRoom(move.getMoveNewRoom());
        history.setHisIsdelete(isDel);
        historyMapper.insert(history);
    }

}

