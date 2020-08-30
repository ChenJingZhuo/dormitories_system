package com.gdpi.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtils {

    /**
     * 获取距离当前nextMonth个月的时间
     * @param nextMonth
     * @return
     */
    public String getSixMonthDate(int nextMonth){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
        Calendar calendar = Calendar.getInstance();//日历对象
        Long res =0L;
        calendar.setTime(new Date());//设置当前日期
        calendar.add(Calendar.MONTH, nextMonth);//月份减一为-1，加一为1
        res =calendar.getTime().getTime();
        System.out.println(sdf.format(res));
        return sdf.format(res);
    }

    /**
     * 字符串转化为时间戳
     * @param time
     * @return
     */
    public Long getTimestamp(String time) {
        Long timestamp = null;
        try {
            timestamp = new SimpleDateFormat("yyyy-MM-dd").parse(time).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return timestamp;
    }
}
