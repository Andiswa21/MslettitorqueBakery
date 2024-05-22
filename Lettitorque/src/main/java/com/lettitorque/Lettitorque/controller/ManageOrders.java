package com.lettitorque.Lettitorque.controller;

import com.lettitorque.Lettitorque.service.CartService;
import com.lettitorque.Lettitorque.service.ProductService;
import com.lettitorque.Lettitorque.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ManageOrders {
    @Autowired
    private CartService cartService;
    @Autowired
    private UserService userService;
    @Autowired
    private ProductService prodService;







}
