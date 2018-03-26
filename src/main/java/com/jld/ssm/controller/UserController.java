package com.jld.ssm.controller;

import com.jld.ssm.pojo.Role;
import com.jld.ssm.pojo.RoleEx;
import com.jld.ssm.pojo.Users;
import com.jld.ssm.pojo.UsersEx;
import com.jld.ssm.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/3/4 14:39
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * @Author: esonchen
     * @Description: register
     * @Date: 11:17 2018/3/6
     */
    @RequestMapping(value = "/register",method = {RequestMethod.POST})
    public String register(String account, Users users
            , String password,HttpSession session)throws Exception{
        String url = (String)session.getAttribute("url");
        userService.insertData(account,password,users);
        return "redirect:"+url;
    }
    /**
     * @Author: esonchen
     * @Description: login
     * @Date: 11:17 2018/3/6
     */
    @RequestMapping(value = "/login",method = {RequestMethod.POST})
    public String login(@RequestParam("account")String account,@RequestParam("password")String password,HttpSession session)throws Exception{
        String url = (String)session.getAttribute("url");
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken uptoken = new UsernamePasswordToken(account,password);
        try{
            subject.login(uptoken);
            uptoken.setRememberMe(true);
            RoleEx roleEx = new RoleEx();
            Users userInfo = userService.getByAccout(account);
            session.setAttribute("userInfo",userInfo);
            System.out.println(subject.hasRole(roleEx.getRoleSign()));
            return "redirect:"+url;
        }catch (IncorrectCredentialsException ice) {
            System.out.println("邮箱/密码不匹配！");
            return "function/error";
        } catch (LockedAccountException lae) {
            System.out.println("账户已被冻结！");
            return "function/error";
        } catch (AuthenticationException ae) {
            System.out.println(ae.getMessage());
            return "function/error";
        }

    }


}
