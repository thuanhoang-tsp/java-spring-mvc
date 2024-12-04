package com.example.java_spring_mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.java_spring_mvc.domain.User;
import com.example.java_spring_mvc.service.UserService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
        return "home";
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("user", new User());
        return "/admin/user/create";
    }

    @PostMapping("/admin/user/create1")
    public String createUserPage(@ModelAttribute("user") User user) {
        System.out.println(">>>> Data" + user);
        return "home";
    }
}
