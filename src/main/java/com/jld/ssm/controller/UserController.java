package com.jld.ssm.controller;

import com.jld.ssm.pojo.Role;
import com.jld.ssm.pojo.Users;
import com.jld.ssm.pojo.UsersEx;
import com.jld.ssm.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    public String register(String account, UsersEx usersEx, HttpSession session)throws Exception{
        String url = (String)session.getAttribute("url");
        String password = new SimpleHash("MD5",usersEx.getPassword(),usersEx.getAccount(),1024).toHex();
        usersEx.setPassword(password);
        userService.register(account,usersEx);
        return "redirect:"+url;
    }
    /**
     * @Author: esonchen
     * @Description: login
     * @Date: 11:17 2018/3/6
     */
    @RequestMapping(value = "/login",method = {RequestMethod.POST})
    public String login(UsersEx usersEx,HttpSession session)throws Exception{
        String salt="asd";
        String url = (String)session.getAttribute("url");
        String password = new SimpleHash("MD5",usersEx.getPassword(),usersEx.getAccount(),1024).toHex();
        usersEx.setPassword(password);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken uptoken = new UsernamePasswordToken(usersEx.getAccount(),usersEx.getPassword());
        try{
            subject.login(uptoken);
            Users usersInfo = userService.getByAccout(usersEx.getAccount());
            session.setAttribute("userInfo",usersInfo);
        }catch (IncorrectCredentialsException e) {
            System.out.println("登录密码错误. Password for account " + uptoken.getPrincipal() + " was incorrect.");
        } catch (ExcessiveAttemptsException e) {
            System.out.println("登录失败次数过多");
        } catch (LockedAccountException e) {
            System.out.println("帐号已被锁定. The account for username " + uptoken.getPrincipal() + " was locked.");
        } catch (DisabledAccountException e) {
            System.out.println("帐号已被禁用. The account for username " + uptoken.getPrincipal() + " was disabled.");
        } catch (ExpiredCredentialsException e) {
            System.out.println("帐号已过期. the account for username " + uptoken.getPrincipal() + "  was expired.");
        } catch (UnknownAccountException e) {
            System.out.println("帐号不存在. There is no user with username of " + uptoken.getPrincipal());
        }
        return "redirect:"+url;
    }


}
