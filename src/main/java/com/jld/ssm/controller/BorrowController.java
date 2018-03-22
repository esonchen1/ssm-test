package com.jld.ssm.controller;

import com.jld.ssm.pojo.Borrow;
import com.jld.ssm.pojo.BorrowEx;
import com.jld.ssm.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author: esonchen
 * @Description:
 * @Date: 下午1:08 2018/3/15
 */
@Controller
@RequestMapping("/borrow")
public class BorrowController {
    @Autowired
    private BorrowService borrowService;

    /**
     * @Author: esonchen
     * @Description: borrow list
     * @Date: 2018/3/20 下午6:43
     */
    @RequestMapping("/borrowList")
    public ModelAndView borrowList(@RequestParam("id")Integer id,ModelAndView modelAndView)throws Exception{
        List<Borrow> borrowExList = borrowService.borrowList(id);
        modelAndView.addObject("borrowList",borrowExList);
        modelAndView.setViewName("mgcon/delBorrow");
        return modelAndView;
    }
    /**
     * @Author: esonchen
     * @Description: insert borrow
     * @Date: 2018/3/21 上午10:51
     */
    @RequestMapping(value = "/insertBorrow",method = {RequestMethod.GET})
    public String insertBorrow(Borrow borrow)throws Exception{
        borrowService.insertBorrow(borrow);
        return "function/success";
    }
    /**
     * @Author: esonchen
     * @Description: delete borrow
     * @Date: 2018/3/21 下午5:12
     */
    @RequestMapping(value = "/delBorrow",method = {RequestMethod.GET})
    public String delBorrow(Integer boid)throws Exception{
       borrowService.delBorrow(boid);
       return "function/success";
    }
}
