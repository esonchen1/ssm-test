package com.jld.ssm.pojo;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class PermissionEn {
    @Autowired
    private Permission permission;

    @Autowired
    private PermissionEx permissionEx;

    private List<PermissionEx> permissionExList;

    public Permission getPermission() {
        return permission;
    }

    public void setPermission(Permission permission) {
        this.permission = permission;
    }

    public PermissionEx getPermissionEx() {
        return permissionEx;
    }

    public void setPermissionEx(PermissionEx permissionEx) {
        this.permissionEx = permissionEx;
    }

    public List<PermissionEx> getPermissionExList() {
        return permissionExList;
    }

    public void setPermissionExList(List<PermissionEx> permissionExList) {
        this.permissionExList = permissionExList;
    }
}