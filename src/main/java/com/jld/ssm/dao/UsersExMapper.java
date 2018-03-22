package com.jld.ssm.dao;

import com.jld.ssm.pojo.Users;

public interface UsersExMapper {
    //check login
    public Users checkUsers(String account, String password)throws Exception;

    //check register
    public Users register(String account)throws Exception;
}