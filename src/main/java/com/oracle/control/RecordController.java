package com.oracle.control;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.po.Record;
import com.oracle.service.RecordService;

@Controller
public class RecordController {

	@Autowired
	private RecordService recordService;
	
	@RequestMapping("record")
	public ModelAndView record(String name){
		ModelAndView mav = new ModelAndView();
		List<Record> list = recordService.selectByName(name);
		mav.addObject("list",list);
		mav.setViewName("record");
		return mav;
	}
}
