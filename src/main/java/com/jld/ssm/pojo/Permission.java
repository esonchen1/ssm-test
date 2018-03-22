package com.jld.ssm.pojo;

public class Permission {
    private Integer id;

    private String permissionName;

    private String peimissionSign;

    private String description;

    public Permission(Integer id, String permissionName, String peimissionSign, String description) {
        this.id = id;
        this.permissionName = permissionName;
        this.peimissionSign = peimissionSign;
        this.description = description;
    }

    public Permission() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPermissionName() {
        return permissionName;
    }

    public void setPermissionName(String permissionName) {
        this.permissionName = permissionName == null ? null : permissionName.trim();
    }

    public String getPeimissionSign() {
        return peimissionSign;
    }

    public void setPeimissionSign(String peimissionSign) {
        this.peimissionSign = peimissionSign == null ? null : peimissionSign.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}