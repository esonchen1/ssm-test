package com.jld.ssm.dao;

import com.jld.ssm.pojo.Book;
import com.jld.ssm.pojo.BookEx;
import com.jld.ssm.pojo.BookExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookExMapper {
    //select book by word
    public List<BookEx> bookList(@Param(value = "word") String word)throws Exception;

    //all book
    public List<BookEx> allBookList()throws Exception;
}