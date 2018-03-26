package com.jld.ssm.service;

import com.jld.ssm.pojo.Users;
import com.jld.ssm.pojo.UsersEx;

import java.util.Map;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/3/4 14:40
 */
public interface UserService {
    //get accout
    public Users getByAccout(String account)throws Exception;

    //check login
    public Map<String,Object> queryInfoByUsername(String account)throws Exception;

    //check register
    public boolean insertData(String account,String password,Users users)throws Exception;
}
