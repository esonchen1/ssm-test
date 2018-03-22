package com.jld.ssm.pojo;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
  * @Author: esonchen
  * @Description: Users封装类
  * @Date: 16:26 2018/3/4
  */
public class UsersEn {

    @Autowired
    private Users users;
    @Autowired
    private UsersEx usersEx;

    private List<Users> usersList;

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public UsersEx getUsersEx() {
        return usersEx;
    }

    public void setUsersEx(UsersEx usersEx) {
        this.usersEx = usersEx;
    }

    public List<Users> getUsersList() {
        return usersList;
    }

    public void setUsersList(List<Users> usersList) {
        this.usersList = usersList;
    }
}