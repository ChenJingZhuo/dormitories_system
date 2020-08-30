package com.gdpi.service;

import com.gdpi.entity.Action;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
public interface ActionService extends IService<Action> {

    /**
     * 获取近6个月的操行记录
     * @return
     */
    Map<String,Object> getSixMonthList();
}
