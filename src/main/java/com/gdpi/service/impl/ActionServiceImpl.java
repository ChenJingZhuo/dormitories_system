package com.gdpi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.Action;
import com.gdpi.mapper.ActionMapper;
import com.gdpi.service.ActionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdpi.utils.DateUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author cjz
 * @since 2020-07-29
 */
@Service
public class ActionServiceImpl extends ServiceImpl<ActionMapper, Action> implements ActionService {

    @Resource
    private ActionMapper actionMapper;

    @Override
    public Map<String, Object> getSixMonthList() {
        QueryWrapper<Action> wrapper = new QueryWrapper<>();
        Map<String,Object> map = new HashMap<>();
        String nextFive = new DateUtils().getSixMonthDate(-5);
        String nextFour = new DateUtils().getSixMonthDate(-4);
        String nextThree = new DateUtils().getSixMonthDate(-3);
        String nextTwo = new DateUtils().getSixMonthDate(-2);
        String nextOne = new DateUtils().getSixMonthDate(-1);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM");

        wrapper.between("act_date",nextFive,sdf.format(new Date()))
                .orderByDesc("act_date");
        List<Action> actions = actionMapper.selectList(wrapper);

        String[] a = new String[6];
        a[0]=nextFive;
        a[1]=nextFour;
        a[2]=nextThree;
        a[3]=nextTwo;
        a[4]=nextOne;
        a[5]=sdf2.format(new Date());

        Integer[] b = new Integer[6];
        int count0 = 0,count1=0,count2=0,count3=0,count4=0,count5=0;
        for (Action action : actions) {
            String date = sdf2.format(new DateUtils().getTimestamp(action.getActDate()));
            if(sdf2.format(new Date()).equals(date)){
                count0++;
            }
            if(nextOne.equals(date)){
                count1++;
            }
            if(nextTwo.equals(date)){
                count2++;
            }
            if(nextThree.equals(date)){
                count3++;
            }
            if(nextFour.equals(date)){
                count4++;
            }
            if(nextFive.equals(date)){
                count5++;
            }
        }
        b[0] = count5;
        b[1] = count4;
        b[2] = count3;
        b[3] = count2;
        b[4] = count1;
        b[5] = count0;
        map.put("p1",a);
        map.put("p2",b);
        return map;
    }
}
