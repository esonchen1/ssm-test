package com.jld.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author:esonchen
 * @Description:处理index页面的controller
 * @Date: 2018/2/17 9:53
 */
@Controller
@RequestMapping("/index")
public class IndexController {

    @RequestMapping("/")
    public String index()throws Exception{
        return "index";
    }

    @RequestMapping("/news")
    public String news()throws Exception{
        return "exihibition/news";
    }

    @RequestMapping("/description")
    public String desrcription()throws Exception{
        return "exihibition/description";
    }

    @RequestMapping("/school")
    public String school()throws Exception{
        return "exihibition/school";
    }

    @RequestMapping("/teaching")
    public String teacher()throws Exception{
        return "exihibition/teaching";
    }

    @RequestMapping("/science")
    public String science()throws Exception{
        return "exihibition/science";
    }

    @RequestMapping("/student")
    public String student()throws Exception{
        return "exihibition/student";
    }

    @RequestMapping("/personnel")
    public String personnel()throws Exception{
        return "exihibition/personnel";
    }

    @RequestMapping("/libray")
    public String libray()throws Exception{
        return "exihibition/libray";
    }

    @RequestMapping("/education")
    public String education()throws Exception{
        return "exihibition/education";
    }

    @RequestMapping("/jld")
    public String jld()throws Exception{
        return "exihibition/jld";
    }



}
