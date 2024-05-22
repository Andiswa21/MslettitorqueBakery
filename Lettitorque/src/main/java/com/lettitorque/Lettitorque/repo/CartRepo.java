package com.lettitorque.Lettitorque.repo;

import com.lettitorque.Lettitorque.model.Cart;
import com.lettitorque.Lettitorque.model.Product;
import com.lettitorque.Lettitorque.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CartRepo extends JpaRepository<Cart, Long> {
    public Optional<List<Cart>> findByUser(User user);

    @Query("DELETE FROM Cart c WHERE c.product = :product AND c.user = :user")
    public void getCartByProductAndUser(Product product, User user);
}
