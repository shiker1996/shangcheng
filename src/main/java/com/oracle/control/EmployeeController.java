package com.oracle.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.po.Employee;
import com.oracle.po.Login;
import com.oracle.service.EmployeeService;
import com.oracle.service.LoginService;
@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private LoginService loginService;

	@RequestMapping("eupdate")
	private String cupdate(String password, String phone,HttpServletRequest request) {
		Employee employee = employeeService.selectByPrimaryKey(phone);
		employee.setPassword(password);
		employeeService.updateByPrimaryKeySelective(employee);
		Login login = (Login) request.getSession().getAttribute("login");
		login.setPassword(password);
		loginService.updateByPrimaryKeySelective(login);
		return "MyJsp";
	}
	@RequestMapping("einfo")
	private ModelAndView einfo(String phone){
		System.out.println("123456");
		ModelAndView mav = new ModelAndView();
		mav.addObject("employee", employeeService.selectByPrimaryKey(phone));
		mav.setViewName("einfo");
		return mav;
	}
}
