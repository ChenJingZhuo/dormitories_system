package com.gdpi.controller;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdpi.controller.EasyExcel.RoomDataListener;
import com.gdpi.entity.Checkin;
import com.gdpi.entity.Room;
import com.gdpi.mapper.CheckinMapper;
import com.gdpi.mapper.RoomMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.RoomService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
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
@Api(tags = "room API")
@RestController
@RequestMapping("/room")
public class RoomController {

    @Resource
    private RoomMapper roomMapper;

    @Autowired
    private RoomService roomService;

    @Resource
    private CheckinMapper checkinMapper;

    @ApiOperation("获取详情-room-表信息")
    @GetMapping("/room")
    public List<Checkin> room(String chBld,String chRoom){
        QueryWrapper<Checkin> queryWrapper=new QueryWrapper<Checkin>();
        queryWrapper.eq("ch_bld",chBld).eq("ch_room",chRoom);
        List<Checkin> list = checkinMapper.selectList(queryWrapper);
        return list;
    }

    @ApiOperation("获取一条-room-表信息")
    @GetMapping("/oneRoom")
    public Room oneRoom(String chBld,String chRoom){
        QueryWrapper<Room> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("room_bld",chBld).eq("room_no",chRoom);
        return roomMapper.selectOne(queryWrapper);
    }

    @ApiOperation("获取-room-表信息")
    @GetMapping("/roomList")
    public List<Room> roomList(){
        List<Room> rooms = roomMapper.selectList(null);
        return rooms;
    }

    @ApiOperation("模糊查询-room-表信息")
    @GetMapping("/selectRoomList")
    public ResultVo selectRoomList(String roomNo, String roomBld,Long pageSize, Long currentPage){
        QueryWrapper<Room> wrapper=new QueryWrapper<>();
        wrapper.like("room_no",roomNo).like("room_bld",roomBld);
        IPage<Room> iPage=new Page<>();
        iPage.setCurrent(currentPage);
        iPage.setSize(pageSize);
        IPage<Room> page = roomService.page(iPage, wrapper);
        return ResultUtils.success("查询成功",page);
    }

    @ApiOperation("插入一条-room-表信息")
    @PostMapping("/addOneRoom")
    public ResultVo addOneRoom(Room room){
        return roomMapper.insert(room)==1? ResultUtils.success("新增成功") : ResultUtils.success("新增失败") ;
    }


    @ApiOperation("删除多条-room-表信息")
    @DeleteMapping(value = "/delRooms",produces = {"application/json;charset=utf-8"})
    public ResultVo delete(@RequestBody String[] ids){
        return roomService.removeByIds(Arrays.asList(ids)) ? ResultUtils.success("删除成功") : ResultUtils.success("删除失败") ;
    }

    @ApiOperation("更新一条-room-表信息")
    @PutMapping("/updateOneRoom")
    public String updateOneRoom(@RequestBody Room room){
        System.out.println(room);
        roomMapper.updateById(room);
        return "ok";
    }

    @ApiOperation("文件下载")
    @RequestMapping("/download")
    public void download(HttpServletResponse response){

        File file = new File(System.getProperty("user.dir")+"\\upload\\room\\RoomTest.xlsx");
        byte[] buffer = new byte[1024];
        BufferedInputStream bis = null;
        OutputStream os = null; //输出流
        try {
            //判断文件父目录是否存在
            if (file.exists()) {
                //设置返回文件信息
                response.setContentType("application/vnd.ms-excel;charset=UTF-8");
                response.setCharacterEncoding("UTF-8");
                response.setHeader("Content-Disposition", "attachment;fileName=" + java.net.URLEncoder.encode("RoomTest.xlsx","UTF-8"));
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

    @ApiOperation("文件上传")
    @PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {
        // 上传路径保存设置
        String path = System.getProperty("user.dir")+"\\upload\\room";
        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }
        //文件上传地址
        System.out.println("上传文件保留地址："+realPath);
        file.transferTo(new File(realPath+"/"+file.getOriginalFilename()));
        String fileName = realPath+"/"+file.getOriginalFilename();
        EasyExcel.read(fileName, Room.class, new RoomDataListener(roomMapper)).sheet().doRead();
        return "ok";
    }

    @ApiOperation("批量更新")
    @PutMapping("/updataAll")
    public String updataAll(@RequestBody List<Room> rooms){
        for (Room room : rooms) {
            roomMapper.updateById(room);
        }
        return "ok";
    }
}

