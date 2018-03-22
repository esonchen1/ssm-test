package com.jld.ssm.service;

import com.jld.ssm.pojo.Borrow;
import com.jld.ssm.pojo.BorrowEn;
import com.jld.ssm.pojo.BorrowEx;

import java.util.List;

/**
 * @Author: esonchen
 * @Description:
 * @Date: 下午6:15 2018/3/20
 */
public interface BorrowService {
    //select list of borrow
    public List<Borrow> borrowList(Integer userd)throws Exception;

    public int insertBorrow(Borrow borrow)throws Exception;

    public int delBorrow(Integer id)throws Exception;
}
