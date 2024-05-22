package com.lettitorque.Lettitorque.repo;

import com.lettitorque.Lettitorque.model.ConfirmedOrderDetails;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.model.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ConfirmedOrderDetailsRepo
        extends JpaRepository<ConfirmedOrderDetails, Long> {
    public Optional<ConfirmedOrderDetails> findByOrder(Orders order);
    public Optional<ConfirmedOrderDetails> findByPayment(Payment payment);

    @Query("SELECT c FROM ConfirmedOrderDetails c WHERE c.confirmedOrder = :isTrue")
    public Optional<List<ConfirmedOrderDetails>> getByBoolean(boolean isTrue);
}
