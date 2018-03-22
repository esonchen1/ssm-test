package com.jld.ssm.service;

import com.jld.ssm.pojo.PermissionEx;

import java.util.List;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/3/5 16:13
 */
public interface PermissionService {
    public List<PermissionEx> permissionList(Integer id);
}
