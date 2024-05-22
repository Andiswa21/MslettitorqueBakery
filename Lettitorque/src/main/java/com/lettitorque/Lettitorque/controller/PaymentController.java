package com.lettitorque.Lettitorque.controller;

import com.lettitorque.Lettitorque.model.Admin;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.model.Payment;
import com.lettitorque.Lettitorque.model.User;
import com.lettitorque.Lettitorque.service.OrdersService;
import com.lettitorque.Lettitorque.service.PaymentService;
import com.lettitorque.Lettitorque.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class PaymentController {
    @Autowired
    private PaymentService pmtService;
    @Autowired
    private UserService userService;
    @Autowired
    private OrdersService ordersService;

    @PostMapping("UploadPayment")
    public String uploadPayment(@RequestParam("orderId") Long orderId,
                                @RequestParam("totAmt") Double totAmt,
                                @RequestParam("pdfFile") MultipartFile pdfFile,
                                @AuthenticationPrincipal UserDetails userDetails,
                                HttpSession session) throws IOException {
        Optional<User> user = userService.searchUserByUsername(userDetails.getUsername());
        Optional<Orders> order = ordersService.getOrderById(orderId);
        String msg = "There is no need to make payment if you have not yet ordered.";

        if(user.isPresent() && order.isPresent()) {
            if(!pdfFile.isEmpty()) {
                byte[] receipt = pdfFile.getBytes();
                Payment payment = new Payment(totAmt, order.get(), receipt,
                        null, null, new Date(), null);

                if(pmtService.savePayment(payment)) {
                    msg = "The payment details have been successfully added.";
                } else {
                    msg = "The payment was not added.";
                }

            } else {
                msg = "You did not upload the receipt document in pdf format. The receipt is required.";
            }
        }

        session.setAttribute("msg", msg);

        return "success";
    }

    @GetMapping("ViewPayments")
    public String getViewPaymentsPage(HttpSession session) {
        Optional<List<Payment>> payments = pmtService.getAllPayments();
        session.setAttribute("payments", payments.get());
        return "view_payments";
    }

    @PostMapping("ViewPaymentDetails")
    public String getViewPaymentDetailsPage(@RequestParam("pmtId") Long pmtId,
                                            HttpSession session) {
        Optional<Payment> payment = pmtService.getById(pmtId);
        session.setAttribute("payment", payment.get());
        return "view_selected_payment";
    }

    @PostMapping("ConfirmPayment")
    public String confirmPayment(@RequestParam("pmtId") Long pmtId,
                                 @RequestParam("status") boolean status,
                                 @RequestParam("statusDesc") String statusDesc,
                                 @AuthenticationPrincipal UserDetails userDetails,
                                 HttpSession session) {
        String msg = "The status has not been updated.";
        User user = (Admin) userService.searchUserByUsername(userDetails
                .getUsername()).get();

        if(pmtService.updateStatusByAdmin(pmtId, status,
                statusDesc, user)) {
            msg = "The status has been updated successfully.";
        }

        session.setAttribute("msg", msg);

        return "success";
    }
}
