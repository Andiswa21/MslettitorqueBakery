package com.lettitorque.Lettitorque.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {


    @GetMapping("AdminHomePage")
    public String getAdminHomePage() {
        return "admin_home_page";
    }


}
