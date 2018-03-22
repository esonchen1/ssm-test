package com.jld.ssm.pojo;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class RoleEn {
    @Autowired
    private Role role;

    @Autowired
    private RoleEx roleEx;

    private List<RoleEx> roleExList;

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public RoleEx getRoleEx() {
        return roleEx;
    }

    public void setRoleEx(RoleEx roleEx) {
        this.roleEx = roleEx;
    }

    public List<RoleEx> getRoleExList() {
        return roleExList;
    }

    public void setRoleExList(List<RoleEx> roleExList) {
        this.roleExList = roleExList;
    }
}