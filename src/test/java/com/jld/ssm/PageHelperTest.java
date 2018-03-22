package com.jld.ssm;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jld.ssm.dao.BookExMapper;
import com.jld.ssm.pojo.BookEx;
import com.jld.ssm.pojo.BookExample;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @Author: esonchen
 * @Description: pageHelper test
 * @Date: 下午4:37 2018/3/17
 */
public class PageHelperTest {

    @Test
    public void getPage(){
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-*");
        BookExMapper bookExMapper = context.getBean(BookExMapper.class);
        PageHelper.startPage(1,9);
        String word = "";
        try{
            List<BookEx> bookExList = bookExMapper.bookList(word);
            for(BookEx bookEx:bookExList){
                System.out.println(bookEx.getName());
            }
            PageInfo<BookEx> pageInfo = new PageInfo<BookEx>(bookExList);
            long total = pageInfo.getTotal();
            System.out.println("aaa"+total);
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
