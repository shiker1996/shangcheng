package com.oracle.control;

import javax.servlet.http.HttpServletRequest;

import com.oracle.po.Customer;
import com.oracle.po.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.service.CustomerService;
import com.oracle.service.EmployeeService;
import com.oracle.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/loginReq")
	public ModelAndView Login(String phone, String password,String type,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Login login = loginService.selectByPrimaryKey(phone);
		if (login != null) {
			if (login.getPassword().equals(password)) {
				request.getSession().setAttribute("login",login);
				if(login.getRole().equals(type)){
					switch(type){
					case "customer":
						mav.addObject("customer",customerService.selectByPrimaryKey(phone));
						request.getSession().setAttribute("customer", customerService.selectByPrimaryKey(phone));
						mav.setViewName("customer");
						break;
					case "employee":
						mav.addObject("employee",employeeService.selectByPrimaryKey(phone));
						mav.setViewName("employee");
						break;
					}
					
				}else{
					mav.addObject("msg", "请重新选择角色！！");
					mav.setViewName("login");
				}
			} else {
				mav.addObject("msg", "密码不正确！！");
				mav.setViewName("login");
			}
		} else {
			mav.addObject("msg", "用户不存在！！");
			mav.setViewName("login");
		}
		return mav;
	}
}
