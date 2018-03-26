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
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

public class UserRealm extends AuthorizingRealm{
    @Autowired
    UserService userService;
    @Autowired
    RoleService roleService;
    @Autowired
    PermissionService permissionService;



    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        // 将token装换成UsernamePasswordToken
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        // 获取用户名即可
        String account = upToken.getUsername();
        // 查询数据库，是否查询到用户名和密码的用户
        try {
            Map<String, Object> userInfo = userService.queryInfoByUsername(account);
            // 如果查询到了，封装查询结果，返回给我们的调用
            Object principal =  userInfo.get("account");
            Object credentials = userInfo.get("password");

            // 获取盐值，即用户名
            ByteSource salt = ByteSource.Util.bytes(account);
            String realmName = this.getName();
            // 将账户名，密码，盐值，realmName实例化到SimpleAuthenticationInfo中交给Shiro来管理
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(principal, credentials, salt,realmName);
            return info;
        }catch (Exception e){
            throw new AuthenticationException();
        }

    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        String account = String.valueOf(principals.getPrimaryPrincipal());
        try {
             Users users = userService.getByAccout(account);
             List<RoleEx> roleList = roleService.roleList(users.getId());
            for(RoleEx roleEx : roleList){
                System.err.println(roleEx);
                simpleAuthorizationInfo.addRole(roleEx.getDescription());

                List<PermissionEx> permissionExList = permissionService.permissionList(roleEx.getId());
                for(PermissionEx permissionEx : permissionExList){
                    System.err.println(permissionEx);
                    simpleAuthorizationInfo.addStringPermission(permissionEx.getPeimissionSign());
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return simpleAuthorizationInfo;
    }
}
