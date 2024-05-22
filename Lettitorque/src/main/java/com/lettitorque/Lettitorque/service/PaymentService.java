package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.Admin;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.model.Payment;
import com.lettitorque.Lettitorque.model.User;
import com.lettitorque.Lettitorque.repo.PaymentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PaymentService {
    @Autowired
    private PaymentRepo repo;

    public boolean savePayment(Payment payment) {
        boolean isSaved = false;
        Optional<Payment> pmtExist = repo.findByOrder(payment.getOrder());

        if(pmtExist.isPresent()) {
            pmtExist.get().setReceipt(payment.getReceipt());
            pmtExist.get().setTotAmt(payment.getTotAmt());
            pmtExist.get().setPmtDate(payment.getPmtDate());
            repo.save(pmtExist.get());
            isSaved = true;
        } else {
            repo.save((payment));
            isSaved = true;
        }

        return isSaved;
    }

    public boolean updateReceipt(Orders order, byte[] receipt,
                                 double totAmtPaid) {
        boolean updated = false;
        Optional<Payment> payment = repo.findByOrder(order);

        if(payment.isPresent()) {
            payment.get().setReceipt(receipt);
            payment.get().setTotAmt(totAmtPaid);
            repo.save(payment.get());
            updated = true;
        }

        return updated;
    }

    public boolean updateStatusByAdmin(Long pmtId,
                                       boolean status,
                                       String statusDesc,
                                       User user) {
        boolean updated = false;
        Optional<Payment> payment = repo.findById(pmtId);

        if(payment.isPresent()) {
            payment.get().setStatus(status);
            payment.get().setStatusDesc(statusDesc);
            payment.get().setAdmin((Admin) user);
            repo.save(payment.get());
            updated = true;
        }

        return updated;
    }

    public Optional<List<Payment>> getAllPayments() {
        return repo.getPaymentsInDescOrder();
    }

    public Optional<Payment> getById(Long pmtId) {
        return repo.findById(pmtId);
    }

    public Optional<Payment> findByOrder(Orders order) {
        return repo.findByOrder(order);
    }
}
