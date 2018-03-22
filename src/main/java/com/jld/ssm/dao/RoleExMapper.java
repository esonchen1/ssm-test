package com.jld.ssm.dao;

import com.jld.ssm.pojo.RoleEx;

import java.util.List;

public interface RoleExMapper {
    public List<RoleEx> roleList(Integer id)throws Exception;
}