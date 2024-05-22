package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.ConfirmedOrderDetails;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.model.Payment;
import com.lettitorque.Lettitorque.repo.ConfirmedOrderDetailsRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ConfirmedOrderDetailsService {
    @Autowired
    private ConfirmedOrderDetailsRepo codRepo;

    public boolean addCOD(ConfirmedOrderDetails cod) {
        return codRepo.save(cod) != null;
    }

    public Optional<ConfirmedOrderDetails> getByOrder(Orders order) {
        return codRepo.findByOrder(order);
    }

    public Optional<ConfirmedOrderDetails> getByPayment(Payment payment) {
        return codRepo.findByPayment(payment);
    }

    public Optional<List<ConfirmedOrderDetails>> getAllConfirmedDetailsIf(boolean isTrue) {
        return codRepo.getByBoolean(isTrue);
    }


}
