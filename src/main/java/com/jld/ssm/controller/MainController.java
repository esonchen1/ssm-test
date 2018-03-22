package com.jld.ssm.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/2/25 14:28
 */
@Controller
public class MainController {

    /**
     * @Author: esonchen
     * @Description: login out
     * @Date: 2018/3/22 下午12:12
     */
    @RequestMapping("/loginOut")
    public String loginOut(HttpSession session)throws Exception{
        session.removeAttribute("userInfo");
        // 登出操作
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "exihibition/libray";
    }

    @RequestMapping(method= {RequestMethod.GET},value="loginUI")
    public String loginUI(HttpServletRequest request) {
        //在session中保存进入登录之前的页面
        HttpSession session = request.getSession();
        String url = request.getHeader("Referer");
        //保存登录前的页面
        session.setAttribute("url",url);
        String type = (String)request.getParameter("type");
        if(type.equals("1")){
            return "function/register";
        }else if(type.equals("0")) {
            return "function/login";
        }
        return null;
    }

    @RequestMapping("/registerShow")
    public String registerShow()throws Exception{
        return "function/registerShow";
    }

    @RequestMapping("/loginShow")
    public String loginShow()throws Exception{
        return "function/loginShow";
    }

    @RequestMapping("/toregister")
    public String toregister()throws Exception{
        return "function/register";
    }

    @RequestMapping("/toMgregister")
    public String toMgregister()throws Exception{
        return "function/mgregister";
    }

    @RequestMapping("/tologin")
    public String tologin()throws Exception{
        return "function/login";
    }

    @RequestMapping("/toMglogin")
    public String toMglogin()throws Exception{
        return "function/mglogin";
    }

    @RequestMapping("/toMgContro")
    public String toMgContro()throws Exception{
        return "mgcon/mgcontro";
    }

    @RequestMapping("/toAddBorrow")
    public String toAddBorrow()throws Exception{
        return "mgcon/addBorrow";
    }

    @RequestMapping("/check")
    public String toCheck()throws Exception{
        return "function/borrowCheck";
    }

}
