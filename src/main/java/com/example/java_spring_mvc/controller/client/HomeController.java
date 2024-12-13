package com.example.java_spring_mvc.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String getHomePage() {
        return "client/homepage/show";
    }
}
