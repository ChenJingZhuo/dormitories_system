package com.gdpi.controller;



import com.alibaba.fastjson.JSON;
import com.gdpi.entity.Checkin;
import com.gdpi.entity.Colleges;
import com.gdpi.entity.Students;
import com.gdpi.service.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.*;

@Api(tags = "统计页面 API")
@RestController
@RequestMapping("/statistics")
public class StatisticsController {

    @Resource
    private RoomService roomService;

    @Resource
    private CheckinService checkinService;

    @Resource
    private StudentsService studentsService;

    @Resource
    private CollegesService collegesService;

    @Resource
    private BuildingService buildingService;

    @Resource
    private ActionService actionService;

    @ApiOperation("房间数统计")
    @GetMapping("/getRoomCount")
    public Object getRoomCount(){
        Map<String,Integer> map = new HashMap<>();
        int count0 = roomService.getCount(0);
        int count1 = roomService.getCount(1);
        int count2 = roomService.getCount(2);
        map.put("p1",count0);
        map.put("p2",count1);
        map.put("p3",count2);
        return JSON.toJSONString(map);
    }

    @ApiOperation("床位数统计")
    @GetMapping("/getBedCount")
    public Object getBedCount(){
        Map<String,Object> map = new HashMap<>();
        int count1 = checkinService.getCount();
        int count2 = roomService.getBedCount(0)*8 +
                roomService.getBedCount(1)*6 +
                roomService.getBedCount(2)*4;
        map.put("p1",count1);
        map.put("p2",count2-count1);
        return JSON.toJSONString(map);
    }

    @ApiOperation("按院系统计在校学生")
    @GetMapping("/getColCount")
    public Object getColCount(){
        Map<String,Object> map = new HashMap<>();
        List<Students> list = studentsService.getStudentCountByCol();
        String[] a = new String[list.size()];
        Integer[] b = new Integer[list.size()];
        int i=0;
        for (Students students : list) {
            a[i] = collegesService.selectColByNo(students.getStuCollege());
            b[i] = Integer.parseInt(students.getNums());
            i++;
        }
        map.put("p1",a);
        map.put("p2",b);
        return JSON.toJSONString(map);
    }

    @ApiOperation("按专业统计在校学生")
    @GetMapping("/getMajorCount")
    public Object getMajorCount(){
        return JSON.toJSONString(studentsService.getStudentCountByMajor());
    }

    @ApiOperation("按年级统计在校学生")
    @GetMapping("/getGradeCount")
    public Object getGradeCount(){
        return JSON.toJSONString(studentsService.getGradeCount());
    }

    @ApiOperation("按宿舍楼统计在校学生")
    @GetMapping("/getBldCount")
    public Object getBldCount(){
        return JSON.toJSONString(checkinService.selectBldCount());
    }

    @ApiOperation("学院分配房间数量")
    @GetMapping("/getRoomByCol")
    public Object getRoomByCol(){
        return JSON.toJSONString(roomService.selectRoomByCol());
    }

    @ApiOperation("学院违规操行")
    @GetMapping("/getActionByCol")
    public Object getActionByCol(){
        return JSON.toJSONString(buildingService.getActionCount());
    }

    @ApiOperation("近6个月的违规操行记录")
    @GetMapping("/getActionCount")
    public Object getActionCount(){
        return JSON.toJSONString(actionService.getSixMonthList());
    }
}

