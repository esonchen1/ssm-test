package com.jld.ssm.pojo;

import java.util.Date;

public class Borrow {
    private Integer id;

    private Integer userId;

    private String bookName;

    private Date btime;

    private Date retime;

    public Borrow(Integer id, Integer userId, String bookName, Date btime, Date retime) {
        this.id = id;
        this.userId = userId;
        this.bookName = bookName;
        this.btime = btime;
        this.retime = retime;
    }

    public Borrow() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName == null ? null : bookName.trim();
    }

    public Date getBtime() {
        return btime;
    }

    public void setBtime(Date btime) {
        this.btime = btime;
    }

    public Date getRetime() {
        return retime;
    }

    public void setRetime(Date retime) {
        this.retime = retime;
    }
}