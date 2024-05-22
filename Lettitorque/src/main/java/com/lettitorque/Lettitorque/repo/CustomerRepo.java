package com.lettitorque.Lettitorque.repo;

import com.lettitorque.Lettitorque.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepo extends JpaRepository<Customer, Long> {
    public Optional<Customer> findByUsername(String username);
}
