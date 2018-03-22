package com.jld.ssm.dao;

import com.jld.ssm.pojo.PermissionEx;

import java.util.List;

public interface PermissionExMapper {
    public List<PermissionEx> permissionList(Integer id);
}