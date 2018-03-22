package com.jld.ssm.controller.exception;

/**
 * @Author:esonchen
 * @Description:异常处理
 * @Date: 2018/2/17 15:46
 */
public class SysException extends Exception{

    //异常信息
    public String message;

    public SysException(String message) {
        super(message);
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
