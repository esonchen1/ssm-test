package com.jld.ssm.service.impl;

import com.jld.ssm.dao.BookExMapper;
import com.jld.ssm.dao.BookMapper;
import com.jld.ssm.pojo.Book;
import com.jld.ssm.pojo.BookEx;
import com.jld.ssm.pojo.BookExample;
import com.jld.ssm.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: esonchen
 * @Description:
 * @Date: 下午1:43 2018/3/15
 */
@Service
public class BookServiceImpl implements BookService{
    @Autowired
    private BookExMapper bookExMapper;
    @Autowired
    private BookMapper bookMapper;

    @Override
    public List<BookEx> bookList(String word) throws Exception {
        if(word!=null) {
            List<BookEx> bookExList = bookExMapper.bookList(word);
            return bookExList;
        }else{
            List<BookEx> bookExList = bookExMapper.allBookList();
            return  bookExList;
        }
    }

    @Override
    public List<Book> showBook(Integer roid) throws Exception {
        BookExample bookExample = new BookExample();
        BookExample.Criteria criteria = bookExample.createCriteria();
        criteria.andRoidEqualTo(roid);
        criteria.andRoidIsNotNull();
        List<Book> bookList = bookMapper.selectByExample(bookExample);
        return bookList;
    }
}
