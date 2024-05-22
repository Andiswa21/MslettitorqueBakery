package com.lettitorque.Lettitorque.repo;

import com.lettitorque.Lettitorque.model.OrderItems;
import com.lettitorque.Lettitorque.model.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface OrderItemsRepo extends JpaRepository<OrderItems, Long> {
    public Optional<List<OrderItems>> findByOrder(Orders order);
}
