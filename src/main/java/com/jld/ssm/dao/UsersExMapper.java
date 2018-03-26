package com.jld.ssm.dao;

import com.jld.ssm.pojo.Users;

import java.util.Map;

public interface UsersExMapper {
    //check login
    public Map<String,Object> queryInfoByUsername(String account)throws Exception;

}