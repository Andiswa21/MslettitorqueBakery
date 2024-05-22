package com.lettitorque.Lettitorque.controller;

import com.lettitorque.Lettitorque.model.Customer;
import com.lettitorque.Lettitorque.model.Orders;
import com.lettitorque.Lettitorque.model.Product;
import com.lettitorque.Lettitorque.service.CustomerService;
import com.lettitorque.Lettitorque.service.OrdersService;
import com.lettitorque.Lettitorque.service.ProductService;
import jakarta.persistence.criteria.Order;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class OderController {
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private ProductService productService;
    @Autowired
    private CustomerService customerService;

    @GetMapping("GetOrdersPage")
    private String getMakeOrderPage(HttpSession session){
        List<Orders> orders = ordersService.getAllOrders();
        session.setAttribute("orders", orders);
        return "displayAllOrders";
    }

    @GetMapping("GetOrderByIdPage")
    private String getOrderByIdPage(){
        return "orderId_input";
    }

    @PostMapping("GetOrderById")
    public String getOrderById(@RequestParam() String searchKey, HttpSession session) {
        String url = null;
        if (searchKey.chars().allMatch(Character::isDigit)) {
            Long searchK = Long.parseLong(searchKey);

            Optional<Orders> order = ordersService.getOrderById(searchK);
            if (order.isPresent()) {
                Orders oda = order.get();
                session.setAttribute("oda", oda);
                url = "found_order";
            } else {
                session.setAttribute("msg", "Order Not Found");
                url = "success";
            }
        }
         else {
            List<Customer> allCust = customerService.getAllCustomers();
            if (!allCust.isEmpty()) {
                for (Customer kk : allCust) {
                    if (kk.getFirstname().equals(searchKey) || kk.getLastname().equals(searchKey)) {
                        Customer cc = kk;
                        Optional<List<Orders>> orders = ordersService.getAllOrdersByCustomers(cc);
                        if (orders.isPresent()) {
                            session.setAttribute("orders", orders.get());
                            url = "found_order";
                        } else {
                            session.setAttribute("msg", "Orders Not Found for Customer: " + searchKey);
                            url = "success";
                        }
                        break;
                    }
                }
                if (url == null) {
                    session.setAttribute("msg", "Customer Not Found: " + searchKey);
                    url = "success";
                }
            } else {
                session.setAttribute("msg", "No Customers Found");
                url = "success";
            }
        }
        return url;
    }

    @PostMapping("DeleteOrder")
    public String deleteOrder(@RequestParam("id") Long id, HttpSession session){
        Optional<Orders> order = ordersService.getOrderById(id);
        if(order.isPresent()){
            ordersService.deleteOrderByOrderId(id);
        }
        session.setAttribute("msg", "Deleted Successfully");
        return "success";
    }

    @GetMapping("GetUpPage")
    public String getUpPage(@RequestParam("id") Long id,
                              HttpSession session){
        session.setAttribute("id",id);
        return "orderUpdate_page";
    }


    // udates order delivery date
    @PostMapping("UpdateOrder")
    public String update(@RequestParam("newDeliveryDate") String newDeliveryDateStr,
                         @RequestParam("id") Long id,
                         HttpSession session) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date newDeliveryDate = null;

        try {
            newDeliveryDate = dateFormat.parse(newDeliveryDateStr);
        } catch (ParseException e) {
            e.printStackTrace();
            session.setAttribute("msg", "Invalid date format");
            return "error";
        }

        Optional<Orders> optionalOrder = ordersService.getOrderById(id);

        if (optionalOrder.isPresent()) {
            Orders order = optionalOrder.get();
            ordersService.updateDeliveryDate(newDeliveryDate,id);
            ordersService.saveOrder(order);

            session.setAttribute("msg", "Updated successfully");
        } else {
            session.setAttribute("msg", "Order not found");
        }
        return "success";
    }

}



