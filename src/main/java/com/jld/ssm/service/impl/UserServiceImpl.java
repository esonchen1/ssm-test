package com.jld.ssm.service.impl;

import com.jld.ssm.dao.UsersExMapper;
import com.jld.ssm.dao.UsersMapper;
import com.jld.ssm.pojo.Users;
import com.jld.ssm.pojo.UsersEx;
import com.jld.ssm.pojo.UsersExample;
import com.jld.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/3/4 15:17
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UsersMapper usersMapper;
    @Autowired
    private UsersExMapper usersExMapper;

    /**
      * @Author: esonchen
      * @Description: get user by account
      * @Date: 13:46 2018/3/6
      */
    @Override
    public Users getByAccout(String account) throws Exception {
        UsersExample usersExample = new UsersExample();
        UsersExample.Criteria criteria = usersExample.createCriteria();
        criteria.andAccountEqualTo(account);
        criteria.andAccountIsNotNull();
        List<Users> usersList = usersMapper.selectByExample(usersExample);
        return usersList.get(0);
    }
    /**
      * @Author: esonchen
      * @Description: login
      * @Date: 13:47 2018/3/6
      */
    @Override
    public Users login(String account, String password) throws Exception {
        Users users = usersExMapper.checkUsers(account,password);
        if(users!=null&&users.getPassword().equals(password)){
            return users;
        }
        return null;
    }
    /**
      * @Author: esonchen
      * @Description: register
      * @Date: 13:47 2018/3/6
      */
    @Override
    public void register(String account,UsersEx usersEx) throws Exception {
        if(usersExMapper.register(account)!=null) {

        }else{
            usersMapper.insert(usersEx);
        }
    }
}
