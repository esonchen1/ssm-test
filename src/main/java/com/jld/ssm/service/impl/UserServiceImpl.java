package com.jld.ssm.service.impl;

import com.jld.ssm.dao.UsersExMapper;
import com.jld.ssm.dao.UsersMapper;
import com.jld.ssm.pojo.Users;
import com.jld.ssm.pojo.UsersEx;
import com.jld.ssm.pojo.UsersExample;
import com.jld.ssm.service.UserService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Override
    public Map<String, Object> queryInfoByUsername(String account) throws Exception {
        return usersExMapper.queryInfoByUsername(account);
    }

    @Override
    public boolean insertData(String account,String password,Users users) throws Exception {
        /*
         * MD5加密：
         * 使用SimpleHash类对原始密码进行加密。
         * 第一个参数代表使用MD5方式加密
         * 第二个参数为原始密码
         * 第三个参数为盐值，即用户名
         * 第四个参数为加密次数
         * 最后用toHex()方法将加密后的密码转成String
         * */
        String newPs = new SimpleHash("MD5", password, ByteSource.Util.bytes(account), 1024).toHex();
        System.out.println(ByteSource.Util.bytes(account));
        users.setPassword(newPs);
        Map<String,Object> userInfo = queryInfoByUsername(account);
        if(userInfo==null){
            usersMapper.insert(users);
            return true;
        }
        return false;
    }

}
