package com.gdpi.service;

import com.gdpi.entity.Major;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
public interface MajorService extends IService<Major> {

    String selectMajorByNo(String majorNo);
}
