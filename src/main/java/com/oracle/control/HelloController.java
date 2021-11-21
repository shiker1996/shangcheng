package com.oracle.control;

import com.oracle.dao.support.CartMapperSupport;
import com.oracle.po.CartDto;
import com.oracle.po.Customer;
import com.oracle.po.Goods;
import com.oracle.po.UserCart;
import com.oracle.service.GoodsService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@RestController
public class HelloController {
    @Resource
    GoodsService goodsService;
    @Resource
    CartMapperSupport cartMapperSupport;

    @RequestMapping({"/", "/customer"})
    public ModelAndView hello(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        Customer customer = (Customer) request.getSession().getAttribute("customer");
        if (customer != null) {
            List<UserCart> cartList = cartMapperSupport.getUserCarts(customer.getId());
            List<CartDto> result = new ArrayList<>();
            double totalPrice = 0.0;
            int totalNum = 0;
            for (UserCart userCart : cartList) {
                CartDto cartDto = new CartDto();
                cartDto.setUserCart(userCart);
                Goods goods = goodsService.selectByPrimaryKey(userCart.getGoodsId());
                cartDto.setGoods(goods);
                totalNum += cartDto.getUserCart().getGoodsNum();
                totalPrice += Double.parseDouble(goods.getPride()) * cartDto.getUserCart().getGoodsNum();
                result.add(cartDto);
            }
            mav.addObject("cartTotalPrice", totalPrice);
            mav.addObject("cartNum", totalNum);
            mav.addObject("cartList", result);
        }
        List<Goods> list = goodsService.selectAll();
        List<Goods> clist = new ArrayList<>();
        for (Goods goods : list) {
            if (goods.getState().equals("good")) {
                clist.add(goods);
            }
        }
        mav.addObject("list", clist);
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping("/updateReq")
    public ModelAndView updateReq(String phone, Integer employee) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("phone", phone);
        mav.addObject("employee", employee);
        return new ModelAndView("update");
    }

    @RequestMapping("/addReq")
    public ModelAndView addReq() {
        return new ModelAndView("add");
    }

    @RequestMapping("/logout")
    public ModelAndView logout() {
        return new ModelAndView("login");
    }

    @RequestMapping("/register")
    public ModelAndView register() {
        return new ModelAndView("register");
    }
}
