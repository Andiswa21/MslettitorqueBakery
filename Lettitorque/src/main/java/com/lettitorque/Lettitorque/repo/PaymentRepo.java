package com.lettitorque.Lettitorque.repo;

import com.lettitorque.Lettitorque.model.Admin;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.model.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PaymentRepo extends JpaRepository<Payment, Long> {
    public Optional<Payment> findByOrder(Orders order);
    public Optional<List<Admin>> findByAdmin(Admin admin);
    @Query("SELECT p FROM Payment p ORDER BY p.pmtDate DESC")
    public Optional<List<Payment>> getPaymentsInDescOrder();
}
