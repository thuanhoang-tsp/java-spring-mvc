package com.example.java_spring_mvc.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.java_spring_mvc.domain.User;
import com.example.java_spring_mvc.repository.UserRepository;
import com.example.java_spring_mvc.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        return "home";
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = userService.getallUsers();
        model.addAttribute("usersList", users);
        return "admin/user/user-table";
    }

    @GetMapping("/admin/user/create")
    public String createUserPage(Model model) {
        model.addAttribute("user", new User());
        return "admin/user/user-create";
    }

    @PostMapping("/admin/user/create")
    public String createUserPage(Model model, @ModelAttribute("user") User user) {
        userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/{userId}")
    public String getUserDetailPage(Model model, @PathVariable long userId) {
        User user = userService.getUserById(userId);

        model.addAttribute("userId", userId);
        model.addAttribute("userData", user);
        return "admin/user/user-detail";
    }

    @GetMapping("/admin/user/update/{userId}")
    public String updateUserPage(Model model, @PathVariable long userId) {
        User user = userService.getUserById(userId);

        model.addAttribute("userId", userId);
        model.addAttribute("user", user);
        return "admin/user/user-update";
    }

    @PostMapping("/admin/user/update")
    public String updateUserPage(Model model, @ModelAttribute("user") User user) {
        User userById = userService.getUserById(user.getId());
        if (userById != null) {
            userById.setAddress(user.getAddress());
            userById.setFullName(user.getFullName());
            userById.setPhone(user.getPhone());

            userService.handleSaveUser(userById);
        }
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String createUserPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        model.addAttribute("user", new User());
        return "admin/user/user-delete";
    }

    @PostMapping("/admin/user/delete")
    public String deleteUserPage(Model model, @ModelAttribute("user") User user) {
        userService.handleDeleteUser(user.getId());
        return "redirect:/admin/user";
    }
}
