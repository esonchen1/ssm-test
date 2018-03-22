package com.jld.ssm.pojo;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BookEn {
    @Autowired
    private Book book;
    @Autowired
    private BookEx bookEx;

    private List<BookEx> bookExList;

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public BookEx getBookEx() {
        return bookEx;
    }

    public void setBookEx(BookEx bookEx) {
        this.bookEx = bookEx;
    }

    public List<BookEx> getBookExList() {
        return bookExList;
    }

    public void setBookExList(List<BookEx> bookExList) {
        this.bookExList = bookExList;
    }
}