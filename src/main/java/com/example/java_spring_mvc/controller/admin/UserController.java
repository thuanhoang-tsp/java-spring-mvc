package com.example.java_spring_mvc.controller.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.java_spring_mvc.domain.User;
import com.example.java_spring_mvc.repository.UserRepository;
import com.example.java_spring_mvc.service.UploadService;
import com.example.java_spring_mvc.service.UserService;

import jakarta.servlet.ServletContext;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UserController {
    private final UserService userService;
    private final UploadService uploadService;

    public UserController(UserService userService, UploadService uploadService) {
        this.userService = userService;
        this.uploadService = uploadService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        return "home";
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = userService.getallUsers();
        model.addAttribute("usersList", users);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/create")
    public String createUserPage(Model model) {
        model.addAttribute("user", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String createUserPage(Model model, @ModelAttribute("user") User user,
            @RequestParam("avatarFile") MultipartFile file) {
        uploadService.handleSaveUploadFile(file, "avatar");

        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/{userId}")
    public String getUserDetailPage(Model model, @PathVariable long userId) {
        User user = userService.getUserById(userId);

        model.addAttribute("userId", userId);
        model.addAttribute("userData", user);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/update/{userId}")
    public String updateUserPage(Model model, @PathVariable long userId) {
        User user = userService.getUserById(userId);

        model.addAttribute("userId", userId);
        model.addAttribute("user", user);
        return "admin/user/update";
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
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String deleteUserPage(Model model, @ModelAttribute("user") User user) {
        userService.handleDeleteUser(user.getId());
        return "redirect:/admin/user";
    }
}
