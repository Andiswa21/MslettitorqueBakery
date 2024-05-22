package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.Customer;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.repo.OrdersRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class OrdersService {
    @Autowired
    private OrdersRepo ordersRepo;

    private boolean addOrder(Orders order) {
        return ordersRepo.save(order) != null;
    }

    public boolean deleteOrderByOrderId(Long orderId) {
        Optional<Orders> orderTest = ordersRepo.findById(orderId);
        boolean isDeleted = false;

        if(orderTest.isPresent()) {
            ordersRepo.delete(orderTest.get());
            isDeleted = true;
        }

        return isDeleted;
    }

    public List<Orders> getAllOrders() {
        return ordersRepo.findAll();
    }
    public void saveOrder(Orders order){
        ordersRepo.save(order);
    }

    public Optional<List<Orders>> getAllOrdersByCustomers(Customer customer) {
        return ordersRepo.findByCustomer(customer);
    }

    public Optional<Orders> getOrderById(Long orderId) {
        return ordersRepo.findById(orderId);
    }

    public boolean updateDeliveryDate(Date deliveryDate, Long orderId) {
        boolean isUpdated = false;
        Optional<Orders> orderTest = ordersRepo.findById(orderId);

        if(orderTest.isPresent()) {
            orderTest.get().setDeliveryDate(deliveryDate);
            ordersRepo.save(orderTest.get());
            isUpdated = true;
        }

        return isUpdated;
    }

}
