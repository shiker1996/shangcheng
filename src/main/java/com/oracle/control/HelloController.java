package com.oracle.control;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HelloController {
    @RequestMapping("/")
    public ModelAndView hello(){
        return new ModelAndView("login");
    }

    @RequestMapping("/updateReq")
    public ModelAndView updateReq(String phone, Integer employee){
        ModelAndView mav = new ModelAndView();
        mav.addObject("phone", phone);
        mav.addObject("employee", employee);
        return new ModelAndView("update");
    }

    @RequestMapping("/addReq")
    public ModelAndView addReq(){
        return new ModelAndView("add");
    }

    @RequestMapping("/logout")
    public ModelAndView logout(){
        return new ModelAndView("login");
    }
}
