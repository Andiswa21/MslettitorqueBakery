package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.Cart;
import com.lettitorque.Lettitorque.model.Product;
import com.lettitorque.Lettitorque.model.User;
import com.lettitorque.Lettitorque.repo.CartRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CartService {
    @Autowired
    private CartRepo cartRepo;

    public boolean addToCart(Cart cart) {
        return cartRepo.save(cart) != null;
    }

    public Optional<List<Cart>> getAllCartItemsByUser(User user) {
        return cartRepo.findByUser(user);
    }

    public boolean deleteCartById(Long cartId) {
        boolean isDeleted = false;
        Optional<Cart> cartTest = cartRepo.findById(cartId);

        if(cartTest.isPresent()) {
            cartRepo.delete(cartTest.get());
            isDeleted = true;
        }

        return isDeleted;
    }

    public boolean deleteRemoveCartItemByProductAndUser(Product product, User user) {
        cartRepo.getCartByProductAndUser(product, user);
        return true;
    }

}
