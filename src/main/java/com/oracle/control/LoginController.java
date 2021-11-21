package com.oracle.control;

import com.oracle.po.Customer;
import com.oracle.po.Login;
import com.oracle.service.CustomerService;
import com.oracle.service.EmployeeService;
import com.oracle.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

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
					switch(type) {
						case "customer":
							mav.addObject("customer", customerService.selectByPhone(phone));
							request.getSession().setAttribute("customer", customerService.selectByPhone(phone));
							mav.setViewName("redirect:/customer");
							break;
						case "employee":
							mav.addObject("employee", employeeService.selectByPrimaryKey(phone));
							request.getSession().setAttribute("employee", employeeService.selectByPrimaryKey(phone));
							mav.setViewName("redirect:/elist");
							break;
					}

				} else {
					mav.addObject("msg", "请重新选择角色！！");
					mav.setViewName("index");
				}
			} else {
				mav.addObject("msg", "密码不正确！！");
				mav.setViewName("index");
			}
		} else {
			mav.addObject("msg", "用户不存在！！");
			mav.setViewName("index");
		}
		return mav;
	}

	@RequestMapping("/registerReq")
	public ModelAndView registerReq(String name, String phone, String password1, String passward2, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Login login = loginService.selectByPrimaryKey(phone);
		if (login != null) {
			mav.addObject("msg", "用户已存在！！");
			mav.setViewName("login");
		} else {
			if (!passward2.equals(password1)) {
				mav.addObject("msg", "两次密码输入不一致！！");
			}
			Login loginUser = new Login();
			loginUser.setPhone(phone);
			loginUser.setPassword(password1);
			loginUser.setRole("customer");
			loginService.insertSelective(loginUser);
			Customer customer = new Customer();
			customer.setPhone(phone);
			customer.setName(name);
			customer.setPassword(password1);
			mav.setViewName("index");
		}
		return mav;
	}
}
