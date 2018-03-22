package com.jld.ssm.service.impl;

import com.jld.ssm.dao.PermissionExMapper;
import com.jld.ssm.dao.PermissionMapper;
import com.jld.ssm.pojo.PermissionEx;
import com.jld.ssm.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/3/5 16:14
 */
@Service
public class PermissionServiceImpl implements PermissionService {
    @Autowired
    private PermissionMapper permissionMapper;
    @Autowired
    private PermissionExMapper permissionExMapper;

    @Override
    public List<PermissionEx> permissionList(Integer id) {
        return permissionExMapper.permissionList(id);
    }
}
