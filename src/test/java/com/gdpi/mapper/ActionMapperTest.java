package com.gdpi.mapper;

import com.gdpi.entity.Action;
import com.gdpi.entity.Log;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-07-28 12:21
 * @Version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ActionMapperTest {

    //@Autowired(required = false)
    @Resource
    private ActionMapper actionMapper;

    @Resource
    private StudentsMapper studentsMapper;

    @Resource
    private LogMapper logMapper;



    String path="D:\\360Downloads\\project\\dormitories_system\\upload\\";

    /**
     * 向action表插入一条记录
     */
    @Test
    public void insert(){
//        Action action = new Action();
//        action.setActRoom("b202");
//        action.setActDetails("宿舍卫生满分");
//        action.setActEvaluate("被评为优秀宿舍");
//        int count = actionMapper.insert(action);
//        System.out.println("影响行数："+count);

        //System.out.println(studentsMapper);
        //studentsMapper.insert(new Students(2,3,"s",1,"","","","","","","",""));


        String fileName = path + "CheckinTest.xlsx";
        //EasyExcel.read(fileName, Students.class, new DemoDataListener(studentsMapper)).sheet().doRead();

    }

    @Test
    public void select(){
//        List<Action> actions = actionMapper.selectList(null);
//        for (Action action : actions) {
//            System.out.println(action);
//        }
        logMapper.delete(null);
    }
}
