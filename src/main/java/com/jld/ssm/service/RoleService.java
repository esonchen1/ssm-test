package com.jld.ssm.service;

import com.jld.ssm.pojo.RoleEx;

import java.util.List;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/3/5 13:22
 */
public interface RoleService {
    //select role by id
    public List<RoleEx> roleList(Integer id)throws Exception;
}
