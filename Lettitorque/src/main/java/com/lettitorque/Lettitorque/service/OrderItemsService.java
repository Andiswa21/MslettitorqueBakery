package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.OrderItems;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.repo.OrderItemsRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderItemsService {
    @Autowired
    private OrderItemsRepo oiRepo;

    public boolean addOrderItem(OrderItems oi) {
        return oiRepo.save(oi) != null;
    }

    public boolean addAllOrderItems(List<OrderItems> orderItemsList) {
        return oiRepo.saveAll(orderItemsList) != null;
    }

    public Optional<List<OrderItems>> getAllOrderItems(Orders order) {
        return oiRepo.findByOrder(order);
    }

}
