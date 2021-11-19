package com.oracle.control;

import com.oracle.po.Customer;
import com.oracle.po.Login;
import com.oracle.service.CustomerService;
import com.oracle.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	@Autowired
	private LoginService loginService;

	@RequestMapping("cupdate")
	private String cupdate(String phone,String password, HttpServletRequest request) {

		Customer customer = customerService.selectByPhone(phone);
		customer.setPassword(password);
		Login login = (Login) request.getSession().getAttribute("login");
		login.setPassword(password);
		loginService.updateByPrimaryKeySelective(login);
		customerService.updateByPrimaryKeySelective(customer);
		return "MyJsp";
	}
	@RequestMapping("cinfo")
	private ModelAndView cinfo(String phone){
		ModelAndView mav = new ModelAndView();
        mav.addObject("customer", customerService.selectByPhone(phone));
        mav.setViewName("info");
		return mav;
	}
}
