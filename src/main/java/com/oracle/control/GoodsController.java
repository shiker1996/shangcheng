package com.oracle.control;

import java.sql.Date;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.po.Customer;
import com.oracle.po.Goods;
import com.oracle.po.Record;
import com.oracle.service.GoodsService;
import com.oracle.service.RecordService;

@Controller
public class GoodsController {
	
	@Autowired
	public GoodsService goodsService;
	@Autowired
	public RecordService recordService;
	
	@RequestMapping("elist")
	public ModelAndView Elist() {
		ModelAndView mav = new ModelAndView();
        mav.addObject("list",goodsService.selectAll());
        mav.setViewName("elist");
        return mav;
	}
	@RequestMapping("clist")
	public ModelAndView Clist() {
		System.out.println("haha");
		ModelAndView mav = new ModelAndView();
		List<Goods> list = goodsService.selectAll();
		List<Goods> clist=new ArrayList<>();
		for (Goods goods : list) {
			if(goods.getState().equals("good")){
				clist.add(goods);
			}
		}
        mav.addObject("list",clist);
        mav.setViewName("clist");
        return mav;
	}
	@RequestMapping("station")
	public ModelAndView xiangQing(String id){
		Goods good = goodsService.selectByPrimaryKey(Integer.parseInt(id));
		ModelAndView mav = new ModelAndView();
		mav.addObject("good", good);
		mav.setViewName("station");
		return mav;
	}
	@RequestMapping("purchase")
	public String purchase(String id,HttpServletRequest request){
		Goods good = new Goods();
		Customer customer = (Customer)request.getSession().getAttribute("customer");
		Goods goodold = goodsService.selectByPrimaryKey(Integer.parseInt(id));
		good.setId(Integer.parseInt(id));
		good.setNum(goodold.getNum()-1);
		Record record = new Record();
		record.setGname(goodold.getName());
		record.setGid(goodold.getId());
		record.setGstate("交易完毕");
		record.setName(customer.getName());
		recordService.insertSelective(record);
		goodsService.updateByPrimaryKeySelective(good);
		return "redirect:clist";
	}
	@RequestMapping("add")
	public String add(String name,String num,String pride, String reldate,String prodate,String onshelf){
		Goods goods = new Goods();
		goods.setName(name);
		goods.setNum(Integer.parseInt(num));
		goods.setPride(pride);
		goods.setState("good");
		goods.setOnshelf(Date.valueOf(onshelf));
		goods.setProdate(Date.valueOf(prodate));
		goods.setReldate(Date.valueOf(reldate));
		System.out.println(onshelf);
		goodsService.insertSelective(goods);
		return "redirect:elist";
	}
	@RequestMapping("updateInfo")
	public ModelAndView upinfo(String id){
		Goods goods = goodsService.selectByPrimaryKey(Integer.parseInt(id));
		ModelAndView mav = new ModelAndView();
		mav.addObject("goods", goods);
		mav.setViewName("gupdate");
		return mav;
	}
	@RequestMapping("gupdate")
	public String update(Goods goods){
		goodsService.updateByPrimaryKeySelective(goods);
		return "redirect:elist";
	}
	@RequestMapping("delete")
	public String update(String id){
		goodsService.deleteByPrimaryKey(Integer.parseInt(id));
		return "redirect:elist";
	}
}
