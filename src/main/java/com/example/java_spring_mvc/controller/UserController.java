package com.example.java_spring_mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.java_spring_mvc.service.UserService;

@Controller
public class UserController {
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        String test = userService.handleHello();
        model.addAttribute("thuan", test);
        model.addAttribute("thuan111", "hjhj");
        return "hello";
    }
}
