package com.jld.ssm.pojo;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

public class BorrowEn {
    @Autowired
    private Borrow borrow;
    @Autowired
    private BorrowEx borrowEx;

    private List<BorrowEx> borrowExList;

    public Borrow getBorrow() {
        return borrow;
    }

    public void setBorrow(Borrow borrow) {
        this.borrow = borrow;
    }

    public BorrowEx getBorrowEx() {
        return borrowEx;
    }

    public void setBorrowEx(BorrowEx borrowEx) {
        this.borrowEx = borrowEx;
    }

    public List<BorrowEx> getBorrowExList() {
        return borrowExList;
    }

    public void setBorrowExList(List<BorrowEx> borrowExList) {
        this.borrowExList = borrowExList;
    }
}