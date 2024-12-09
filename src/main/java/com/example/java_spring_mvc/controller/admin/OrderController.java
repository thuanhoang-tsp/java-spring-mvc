package com.example.java_spring_mvc.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {
    @GetMapping("/admin/order")
    public String getDashBoard() {
        return "admin/order/show";
    }
}
