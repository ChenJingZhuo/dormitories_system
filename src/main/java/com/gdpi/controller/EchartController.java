package com.gdpi.controller;

import com.alibaba.fastjson.JSON;
import com.gdpi.entity.*;
import com.gdpi.mapper.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.*;

@Api(tags = "图表 api")
@RestController
@RequestMapping("/echart")
public class EchartController {

    @Resource
    private CheckinMapper checkinMapper;

    @Resource
    private ExitsMapper exitsMapper;

    @Resource
    private RoomMapper roomMapper;

    @Resource
    private VisitsMapper visitsMapper;

    @Resource
    private RepairMapper repairMapper;

    @ApiOperation("获取第一个图表数据")
    @GetMapping("/echart1")
    public Object echart1(){

        Map<String,Object> map = new HashMap<>();
        List<Checkin> checkinList = checkinMapper.selectList(null);
        int p1 = 0,p2 = 0,p3 = 0;
        for (Checkin checkin : checkinList) {
            if (checkin.getChState()==2){
                p1++;
            }
            if (checkin.getChState()==0){
                p2++;
            }
        }

        List<Exits> exitsList = exitsMapper.selectList(null);
        for (Exits exits : exitsList) {
            if (exits.getExitAudit()==1){
                p3++;
            }
        }

        map.put("p1",p1);
        map.put("p2",p2);
        map.put("p3",p3);
//        Map<String,Object> map2 = new HashMap<>();
//        map2.put("value",35);
//        map2.put("name","宿舍");
//        list.add(map2);
        // json字符串转java对象 JSON.parseObject("json字符串"，User.class)
        return JSON.toJSONString(map);

    }

    @ApiOperation("获取第二个图表数据")
    @GetMapping("/echart2")
    public Object echart2(){

        Map<String,Object> map = new HashMap<>();

        int p1 = 0,p2 = 0,p3 = 0;
        List<Room> rooms = roomMapper.selectList(null);
        for (Room room : rooms) {
            if (room.getRoomState() == 0){
                p1++;
            }else if (room.getRoomState() == 1){
                p2++;
            }else if (room.getRoomState() == 2){
                p3++;
            }
        }
        map.put("p1",p1);
        map.put("p2",p2);
        map.put("p3",p3);
//        Map<String,Object> map2 = new HashMap<>();
//        map2.put("value",35);
//        map2.put("name","宿舍");
//        list.add(map2);
        // json字符串转java对象 JSON.parseObject("json字符串"，User.class)
        return JSON.toJSONString(map);

    }

    @ApiOperation("获取第三个图表数据")
    @GetMapping("/echart3")
    public Object echart3(){

        Map<String,Object> map = new HashMap<>();

        int p1 = 0,p2 = 0;
        List<Repair> repairs = repairMapper.selectList(null);
        for (Repair repair : repairs) {
            if (repair.getRepState() == 1){
                p1++;
            }else {
                p2++;
            }
        }
        map.put("p1",p1);
        map.put("p2",p2);
//        Map<String,Object> map2 = new HashMap<>();
//        map2.put("value",35);
//        map2.put("name","宿舍");
//        list.add(map2);
        // json字符串转java对象 JSON.parseObject("json字符串"，User.class)
        return JSON.toJSONString(map);

    }

    @ApiOperation("获取第四个图表数据")
    @GetMapping("/echart4")
    public Object echart4(){

        Map<String,Object> omap = new HashMap<>();
        Map<String,Integer> map = new HashMap<>();
        int a = 0,b = 0;
        List<Visits> visits = visitsMapper.selectList(null);
        String p[] = new String[visits.size()];
        int q[] = new int[visits.size()];
        for (Visits visit : visits) {
            p[a] = visit.getVisTime().substring(0,11);
            q[a] = visit.getVisNum();
            //System.out.println(p1[a]);
            a++;

        }
        for (int i = 0; i < p.length; i++) {
            Integer integer = map.get(p[i]);
            // System.out.println(p1[i]);
            map.put(p[i], integer == null?q[i]:integer+q[i]);
        }

        Set<Map.Entry<String, Integer>> set = map.entrySet();
        //System.out.println(set);
        String p1[] = new String[set.size()];
        int p2[] = new int[set.size()];
        String p3[] = new String[set.size()];
        for (Map.Entry<String, Integer> entry : set) {
            p1[b] = entry.getKey();
            b++;
        }
        TreeSet<String> str = new TreeSet<String>();
        for (String s : p1) {
            str.add(s);
        }
        int d = 0;
        Iterator<String> itr = str.iterator();
        while (itr.hasNext()){
            p3[d] = itr.next();
            d++;
        }
        int c = 0;
        for (int i = 0; i < p3.length; i++) {
            for (Map.Entry<String, Integer> entry : set) {
                if (p3[i] == entry.getKey()){
                    p2[c] = entry.getValue();
                    //System.out.println(p2[c]+" "+c+" "+p3[i]+" "+i);
                }

            }
            c++;
        }

        omap.put("p1",p3);
        omap.put("p2",p2);
        System.out.println(map);
        return JSON.toJSONString(omap);

    }

}
