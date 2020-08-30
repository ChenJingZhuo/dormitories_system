package com.gdpi.service;

import com.gdpi.entity.Students;
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
public interface StudentsService extends IService<Students> {
    /**
     * 通过院系统计学生
     * @return
     */
    List<Students> getStudentCountByCol();

    /**
     * 通过专业统计学生
     * @return
     */
    Map<String,Object> getStudentCountByMajor();

    /**
     * 按年级统计
     * @param
     * @return
     */
    Map<String,Object> getGradeCount();
}
