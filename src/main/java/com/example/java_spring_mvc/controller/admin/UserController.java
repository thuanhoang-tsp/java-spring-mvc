package com.example.java_spring_mvc.controller.admin;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.java_spring_mvc.domain.User;
import com.example.java_spring_mvc.service.UploadService;
import com.example.java_spring_mvc.service.UserService;

import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UserController {
    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
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
    public String createUserPage(Model model, @ModelAttribute("user") @Valid User user, BindingResult bindingResult,
            @RequestParam("avatarFile") MultipartFile file) {
        List<FieldError> errors = bindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>>>>>>>>>>" + error.getObjectName() + " - " + error.getDefaultMessage());
        }
        String avatar = uploadService.handleSaveUploadFile(file, "avatar");
        String hashPassword = passwordEncoder.encode(user.getPassword());
        user.setAvatar(avatar);
        user.setPassword(hashPassword);
        user.setRole(userService.getRoleByName(user.getRole().getName()));
        userService.handleSaveUser(user);
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
    public String updateUserPage(Model model, @RequestParam("avatarFile") MultipartFile file,
            @ModelAttribute("user") User user) {
        User userById = userService.getUserById(user.getId());
        if (userById != null) {
            userById.setAddress(user.getAddress());
            userById.setFullName(user.getFullName());
            userById.setPhone(user.getPhone());
            userById.setRole(userService.getRoleByName(user.getRole().getName()));

            if (file != null && !file.isEmpty()) {
                String avatar = uploadService.handleSaveUploadFile(file, "avatar");
                userById.setAvatar(avatar);
            }

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
