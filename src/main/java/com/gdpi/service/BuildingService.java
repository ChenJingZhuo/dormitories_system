package com.gdpi.service;

import com.gdpi.entity.Building;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
public interface BuildingService extends IService<Building> {

    /**
     * 根据宿舍楼获取所属院系
     * @param bldName
     * @return
     */
    Building getColByName(String bldName);

    /**
     * 获取违规
     * @return
     */
    Map<String,Object> getActionCount();
}
