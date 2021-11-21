package com.oracle.control;

import com.oracle.dao.UserCartDao;
import com.oracle.dao.support.CartMapperSupport;
import com.oracle.po.CartDto;
import com.oracle.po.Customer;
import com.oracle.po.Goods;
import com.oracle.po.UserCart;
import com.oracle.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("cart")
public class CartController {

    @Resource
    private CartMapperSupport cartMapperSupport;
    @Resource
    private GoodsService goodsService;
    @Resource
    private UserCartDao userCartDao;

    @RequestMapping("list")
    public ModelAndView getList(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        Customer customer = (Customer) request.getSession().getAttribute("customer");
        if (customer == null) {
            mav.setViewName("login");
            return mav;
        }
        List<UserCart> list = cartMapperSupport.getUserCarts(customer.getId());
        List<CartDto> result = new ArrayList<>();
        for (UserCart userCart : list) {
            CartDto cartDto = new CartDto();
            cartDto.setUserCart(userCart);
            Goods goods = goodsService.selectByPrimaryKey(userCart.getGoodsId());
            cartDto.setTotalPrice(Double.parseDouble(goods.getPride()) * userCart.getGoodsNum());
            cartDto.setGoods(goods);
            result.add(cartDto);
        }
        mav.addObject("list", result);
        mav.setViewName("cartlist");
        return mav;
    }

    @RequestMapping("add")
    public String add(Integer customerId, Integer goodsNum, Integer goodsId) {
        if (customerId == null || customerId == 0) {
            return "redirect:/login";
        }
        UserCart userCart = new UserCart();
        userCart.setCustomerId(customerId);
        userCart.setGoodsId(goodsId);
        userCart.setGoodsNum(goodsNum);
        userCartDao.insertSelective(userCart);
        return "redirect:/cart/list";

    }

    @RequestMapping("del")
    public String add(Integer cartId) {
        if (cartId == null || cartId == 0) {
            return "redirect:/login";
        }
        List<Integer> ids = new ArrayList<>();
        ids.add(cartId);
        cartMapperSupport.invalidCart(ids);
        return "redirect:/cart/list";

    }
}
