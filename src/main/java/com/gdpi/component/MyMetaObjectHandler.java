package com.gdpi.component;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
public class MyMetaObjectHandler implements MetaObjectHandler {
    @Override
    public void insertFill(MetaObject metaObject) {
        //boolean createTime = metaObject.hasSetter("createTime1");
        boolean createTime = metaObject.hasSetter("createTime");
        if (createTime){
            System.out.println("insertFill~~");
            setInsertFieldValByName("createTime", LocalDateTime.now(), metaObject);
        }
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        //Object updateTime = getFieldValByName("updateTime", metaObject);
        boolean updateTime = metaObject.hasSetter("updateTime");
        if (updateTime){
            System.out.println("updateFill~~");
            setUpdateFieldValByName("updateTime", LocalDateTime.now(), metaObject);
        }
    }
}
