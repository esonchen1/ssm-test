package com.jld.ssm.pojo;

public class Role {
    private Integer id;

    private String roleName;

    private String roleSign;

    private String description;

    public Role(Integer id, String roleName, String roleSign, String description) {
        this.id = id;
        this.roleName = roleName;
        this.roleSign = roleSign;
        this.description = description;
    }

    public Role() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    public String getRoleSign() {
        return roleSign;
    }

    public void setRoleSign(String roleSign) {
        this.roleSign = roleSign == null ? null : roleSign.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}