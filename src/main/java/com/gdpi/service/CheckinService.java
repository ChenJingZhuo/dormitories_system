package com.gdpi.service;

import com.gdpi.entity.Checkin;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
public interface CheckinService extends IService<Checkin> {

    /**
     *获取入住学生信息表
     */
    List<Checkin> getCheckinList();

    /**
     * 获取入住学生总数
     * @return
     */
    int getCount();

    /**
     * 通过宿舍楼统计
     * @param
     * @return
     */
    Map<String,Object> selectBldCount();
}
