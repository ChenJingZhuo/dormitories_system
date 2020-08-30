package com.gdpi.mapper;

import com.gdpi.entity.Students;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */

@Mapper
public interface StudentsMapper extends BaseMapper<Students> {

    void byExcelSave(Students students);

}
