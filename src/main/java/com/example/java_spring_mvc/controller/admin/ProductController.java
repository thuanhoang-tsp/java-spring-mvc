package com.example.java_spring_mvc.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.java_spring_mvc.domain.Product;

@Controller
public class ProductController {
    @GetMapping("/admin/product")
    public String getDashBoard() {
        return "admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("product", new Product());
        return "admin/product/create";
    }
}
