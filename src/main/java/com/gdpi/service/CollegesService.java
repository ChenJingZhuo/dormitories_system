package com.gdpi.service;

import com.gdpi.entity.Colleges;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
public interface CollegesService extends IService<Colleges> {

    /**
     *根据编号查询院系名
     */
    String selectColByNo(String No);
}
