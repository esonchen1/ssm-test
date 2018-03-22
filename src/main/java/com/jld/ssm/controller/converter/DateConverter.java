package com.jld.ssm.controller.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Author:esonchen
 * @Description:日期转换器
 * @Date: 2018/2/8 14:49
 */
public class DateConverter implements Converter<String,Date>{

    @Override
    public Date convert(String source) {
        //实现字符串转为日期类型yyyy-MM-dd HH:mm:ss
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {
           return simpleDateFormat.parse(source);
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
