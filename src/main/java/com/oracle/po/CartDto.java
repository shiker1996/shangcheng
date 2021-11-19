package com.oracle.po;

public class CartDto {

    private Goods goods;

    private UserCart userCart;

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public UserCart getUserCart() {
        return userCart;
    }

    public void setUserCart(UserCart userCart) {
        this.userCart = userCart;
    }
}
