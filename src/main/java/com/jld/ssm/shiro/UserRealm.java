package com.jld.ssm.shiro;

import com.jld.ssm.pojo.PermissionEx;
import com.jld.ssm.pojo.Role;
import com.jld.ssm.pojo.RoleEx;
import com.jld.ssm.pojo.Users;
import com.jld.ssm.service.PermissionService;
import com.jld.ssm.service.RoleService;
import com.jld.ssm.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserRealm extends AuthorizingRealm{
    @Autowired
    UserService userService;
    @Autowired
    RoleService roleService;
    @Autowired
    PermissionService permissionService;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        Users users =null;
        String account = String.valueOf(token.getPrincipal());
        String password = new String((char[]) token.getCredentials());
        try {
            users =userService.login(account, password);
        }catch (Exception e){
            throw new UnknownAccountException();
        }

        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(account,password,getName());
        return info;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        String account = String.valueOf(principals.getPrimaryPrincipal());
        try {
            final Users users = userService.getByAccout(account);
            final List<RoleEx> roleList = roleService.roleList(users.getId());
            for(RoleEx roleEx : roleList){
                simpleAuthorizationInfo.addRole(roleEx.getRoleSign());
                List<PermissionEx> permissionExList = permissionService.permissionList(users.getId());
                for(PermissionEx permissionEx : permissionExList){
                    simpleAuthorizationInfo.addStringPermission(permissionEx.getPeimissionSign());
                }
            }
        }catch (Exception e){
            throw new UnknownAccountException();
        }

        return simpleAuthorizationInfo;
    }
}
