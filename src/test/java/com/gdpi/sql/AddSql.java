package com.gdpi.sql;

import com.gdpi.entity.Checkin;
import com.gdpi.entity.Room;
import com.gdpi.mapper.CheckinMapper;
import com.gdpi.mapper.RoomMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.Random;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AddSql {

    @Resource
    RoomMapper roomMapper;

    @Resource
    CheckinMapper checkinMapper;

    @Test
    public void addroom(){
        for (int i=1;i<=100;i++){
            Room room = new Room();
            room.setRoomNo((100+i)+"");
            room.setRoomAddress((((i-1)/10)+1)+"");
            room.setRoomBld("1");
            room.setRoomState(new Random().nextInt(3));
            room.setRoomType(new Random().nextInt(3));
            roomMapper.insert(room);
        }
//        roomMapper.delete(null);
    }

    @Test
    public void addcheckin(){
        for (int i=1;i<=100;i++){
            Checkin c = new Checkin();
            c.setChStuNo("2020002"+(2000+i));
            c.setChStuName("海洋"+i+"号");
            c.setChBld((new Random().nextInt(10)+1)+"");
            c.setChState(new Random().nextInt(2));
            c.setChRoom((100+i)+"");
            int ran = new Random().nextInt(3);
            if (ran==1){
                c.setChBed(4);
            }else if (ran==2){
                c.setChBed(6);
            }else{
                c.setChBed(8);
            }
            checkinMapper.insert(c);
        }
//        roomMapper.delete(null);
    }
}
