package com.oracle.dao.support;

import com.oracle.dao.UserCartDao;
import com.oracle.po.UserCart;
import com.oracle.po.UserCartExample;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class CartMapperSupport {

    @Resource
    UserCartDao userCartDao;

    public List<UserCart> getUserCarts(Integer customerId) {
        UserCartExample userCartExample = new UserCartExample();
        userCartExample.createCriteria().andCustomerIdEqualTo(customerId);
        return userCartDao.selectByExample(userCartExample);
    }

    public void invalidCart(List<Integer> ids) {
        UserCartExample example = new UserCartExample();
        example.createCriteria().andIdIn(ids);
        UserCart userCart = new UserCart();
        userCart.setDelete(true);
        userCartDao.updateByExampleSelective(userCart, example);
    }
}
