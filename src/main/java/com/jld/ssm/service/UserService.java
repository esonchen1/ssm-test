package com.jld.ssm.service;

import com.jld.ssm.pojo.Users;
import com.jld.ssm.pojo.UsersEx;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/3/4 14:40
 */
public interface UserService {
    //get accout
    public Users getByAccout(String account)throws Exception;

    //login
    public Users login(String account, String password)throws Exception;

    //register
    public void register(String account, UsersEx usersEx)throws Exception;
}
