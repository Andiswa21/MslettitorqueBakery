package com.lettitorque.Lettitorque.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {

    @GetMapping({"/", "/home"})
    public String getHomePage() {
        return "index";
    }

    @GetMapping("/GetLoginPage")
    public String getLoginPage() {
        return "login";
    }

    @GetMapping("GetSignupPage")
    public String getSignupPage() {
        return "register";
    }

    @GetMapping("GetMenuPage")
    public String getMenuPage() {
        return "menu";
    }

}
