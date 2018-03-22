package com.jld.ssm.controller.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author:esonchen
 * @Description:
 * @Date: 2018/2/17 15:48
 */
public class SysExceptionResolver implements HandlerExceptionResolver{
    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {

        SysException sysException = null;
        if(e instanceof SysException){
            //如果是系统自定义异常，则取出
            sysException = (SysException) e;
        }else{
            //如果是未知异常，则构造一个自定义异常类型
            sysException = new SysException("未知异常");
        }
        String message = sysException.getMessage();

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("message",message);

        modelAndView.setViewName("function/error");

        return modelAndView;
    }
}
