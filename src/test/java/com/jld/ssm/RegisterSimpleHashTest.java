package com.jld.ssm;

import com.jld.ssm.dao.UsersExMapper;
import com.jld.ssm.dao.UsersMapper;
import com.jld.ssm.pojo.Users;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Map;

/**
 * @Author: esonchen
 * @Description:
 * @Date: 上午11:32 2018/3/25
 */
public class RegisterSimpleHashTest {
    @Test
    public void regester() {
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-*");
        Users users = new Users();
        String account = "admin";
        String password = "admin";
        String newPs = new SimpleHash("MD5", password, ByteSource.Util.bytes(account), 1024).toHex();
        System.out.println(ByteSource.Util.bytes(account));
        System.out.println(newPs);
        users.setPassword(newPs);

    }
}
