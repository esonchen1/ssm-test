package com.jld.ssm.service.impl;

import com.jld.ssm.dao.BorrowExMapper;
import com.jld.ssm.dao.BorrowMapper;
import com.jld.ssm.pojo.Borrow;
import com.jld.ssm.pojo.BorrowEn;
import com.jld.ssm.pojo.BorrowEx;
import com.jld.ssm.pojo.BorrowExample;
import com.jld.ssm.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: esonchen
 * @Description:
 * @Date: 下午6:18 2018/3/20
 */
@Service
public class BorrowServiceImpl implements BorrowService{
    @Autowired
    private BorrowMapper borrowMapper;
    @Autowired
    private BorrowExMapper borrowExMapper;

    @Override
    public List<Borrow> borrowList(Integer userId) throws Exception {
        BorrowExample borrowExample = new BorrowExample();
        BorrowExample.Criteria criteria= borrowExample.createCriteria();
        criteria.andUserIdEqualTo(userId);
        criteria.andUserIdIsNotNull();
        List<Borrow> borrowList = borrowMapper.selectByExample(borrowExample);
        if(borrowList==null){
            return null;
        }
        return borrowList;
    }

    @Override
    public int insertBorrow(Borrow borrow) throws Exception {
        return borrowMapper.insert(borrow);
    }

    @Override
    public int delBorrow(Integer id) throws Exception {
        return borrowMapper.deleteByPrimaryKey(id);
    }
}
