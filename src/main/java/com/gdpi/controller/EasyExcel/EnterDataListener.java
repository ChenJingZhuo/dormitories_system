package com.gdpi.controller.EasyExcel;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.gdpi.entity.Checkin;
import com.gdpi.entity.Enter;
import com.gdpi.mapper.CheckinMapper;
import com.gdpi.mapper.EnterMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Configuration
@Component
public class EnterDataListener extends AnalysisEventListener<Enter>  {
    private static final Logger LOGGER = LoggerFactory.getLogger(EnterDataListener.class);

    private static final int BATCH_COUNT = 2;

    private static ApplicationContext applicationContext;

    List<Enter> list = new ArrayList<Enter>();

    private EnterMapper enterMapper;

    public EnterDataListener( EnterMapper enterMapper) {
        this.enterMapper = enterMapper;
    }

    //读取数据会使用这方法
    // DemoData 数据类型
    //
    @Override
    public void invoke(Enter data, AnalysisContext context) {
        System.out.println(data);
        //System.out.println("sss");
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
    private void saveData(List<Enter> list) {
        LOGGER.info("{}条数据，开始存储数据库！", list.size());
        for (Enter enter : list) {
            enterMapper.insert(enter);
        }
        LOGGER.info("存储数据库成功！");
    }
}
