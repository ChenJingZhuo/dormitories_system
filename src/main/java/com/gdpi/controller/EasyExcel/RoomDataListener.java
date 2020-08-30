package com.gdpi.controller.EasyExcel;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.gdpi.entity.Enter;
import com.gdpi.entity.Room;
import com.gdpi.mapper.EnterMapper;
import com.gdpi.mapper.RoomMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Configuration
@Component
public class RoomDataListener extends AnalysisEventListener<Room>  {
    private static final Logger LOGGER = LoggerFactory.getLogger(RoomDataListener.class);

    private static final int BATCH_COUNT = 1;

    private static ApplicationContext applicationContext;

    List<Room> list = new ArrayList<Room>();

    private RoomMapper roomMapper;

    public RoomDataListener(RoomMapper roomMapper) {
        this.roomMapper = roomMapper;
    }

    //读取数据会使用这方法
    // DemoData 数据类型
    //
    @Override
    public void invoke(Room data, AnalysisContext context) {
        System.out.println(data);
        list.add(data);

        // 达到BATCH_COUNT了，需要去存储一次数据库，防止数据几万条数据在内存，容易OOM
        if (list.size() >= BATCH_COUNT) {
            saveData(list); //持久化 存数据就
            // 存储完成清理 list
            list.clear();
        }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext context) {
        // 这里也要保存数据，确保最后遗留的数据也存储到数据库
        //saveData();
        LOGGER.info("所有数据解析完成！");
    }
    /**
     * 加上存储数据库
     */
    private void saveData(List<Room> list) {
        LOGGER.info("{}条数据，开始存储数据库！", list.size());
        for (Room room : list) {
            roomMapper.insert(room);
        }
        LOGGER.info("存储数据库成功！");
    }
}
