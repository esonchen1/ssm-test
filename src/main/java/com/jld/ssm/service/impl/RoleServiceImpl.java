package com.jld.ssm.service.impl;

import com.jld.ssm.dao.RoleExMapper;
import com.jld.ssm.dao.RoleMapper;
import com.jld.ssm.pojo.RoleEx;
import com.jld.ssm.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/3/5 13:24
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleExMapper roleExMapper;

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<RoleEx> roleList(Integer id) throws Exception {
        return roleExMapper.roleList(id);
    }
}
