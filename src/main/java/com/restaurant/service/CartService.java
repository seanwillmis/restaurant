package com.restaurant.service;

import com.restaurant.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);

}
