package com.lettitorque.Lettitorque.repo;

import com.lettitorque.Lettitorque.model.Customer;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface OrdersRepo extends JpaRepository<Orders, Long> {
    public Optional<List<Orders>> findByCustomer(Customer customer);


}
