package com.example.java_spring_mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.java_spring_mvc.domain.User;
import com.example.java_spring_mvc.repository.UserRepository;
import com.example.java_spring_mvc.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<User> user = userService.getallUsersByEmail("thuangg1222111@gmail.com");
        System.out.println(">>>>>>>> " + user);
        model.addAttribute("user", user);
        return "home";
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("user", new User());
        return "/admin/user/create";
    }

    @PostMapping("/admin/user/create1")
    public String createUserPage(Model model, @ModelAttribute("user") User user) {
        userService.handleSaveUser(user);
        return "redirect:/";
    }
}
