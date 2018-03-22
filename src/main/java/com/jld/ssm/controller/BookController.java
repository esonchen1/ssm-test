package com.jld.ssm.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jld.ssm.pojo.Book;
import com.jld.ssm.pojo.BookEx;
import com.jld.ssm.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: esonchen
 * @Description:
 * @Date: 下午1:07 2018/3/15
 */
@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    private BookService bookService;

    /**
     * @Author: esonchen
     * @Description: bookShow
     * @Date: 2018/3/15 下午3:07
     */
    @RequestMapping("/bookShow")
    public String bookShow(HttpSession session, HttpServletRequest request)throws Exception{
        Integer roid = Integer.parseInt(request.getParameter("roid"));
        List<Book> bookInfo = bookService.showBook(roid);
        session.setAttribute("roid",roid);
        session.setAttribute("bookInfo",bookInfo);
        return "book/BookShow";
    }

    /**
     * @Author: esonchen
     * @Description: book list
     * @Date: 2018/3/15 下午4:08
     */
    @RequestMapping(value = "/bookList",method = {RequestMethod.GET})
    public ModelAndView bookList(ModelAndView modelAndView,@RequestParam("word")String word,HttpSession session,@RequestParam("pageNum")Integer pageNum)throws Exception{
        PageHelper.startPage(pageNum,9);
        List<BookEx> bookExList = bookService.bookList(word);
        PageInfo<BookEx> pageInfo = new PageInfo<BookEx>(bookExList);
        session.setAttribute("word",word);
        modelAndView.addObject("bookList",bookExList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("book/AllBookShow");
        return modelAndView;
    }
    /**
     * @Author: esonchen
     * @Description: page of book
     * @Date: 2018/3/20 下午12:23
     */
    @RequestMapping("/pageOfBook")
    public ModelAndView pageOfBook(ModelAndView modelAndView,HttpServletRequest request,HttpSession session)throws Exception{
        Integer pageNum = Integer.parseInt(request.getParameter("pageNum"));
        String word = (String)session.getAttribute("word");
        PageHelper.startPage(pageNum,9);
        List<BookEx> bookExList = bookService.bookList(word);
        PageInfo<BookEx> pageInfo = new PageInfo<BookEx>(bookExList);
        modelAndView.addObject("bookList",bookExList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("book/AllBookShow");
        return modelAndView;
    }



}
