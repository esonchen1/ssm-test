package com.jld.ssm.service;

import com.jld.ssm.pojo.Book;
import com.jld.ssm.pojo.BookEx;

import java.util.List;

/**
 * @Author: esonchen
 * @Description:
 * @Date: 下午1:39 2018/3/15
 */
public interface BookService {

    public List<BookEx> bookList(String word)throws Exception;

    public List<Book> showBook(Integer roid)throws Exception;
}
