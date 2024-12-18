package com.example.java_spring_mvc.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.java_spring_mvc.domain.Product;
import com.example.java_spring_mvc.domain.User;
import com.example.java_spring_mvc.service.ProductService;
import com.example.java_spring_mvc.service.UploadService;

import jakarta.validation.Valid;

@Controller
public class ProductController {
    private final UploadService uploadService;
    private final ProductService productService;

    public ProductController(ProductService productService, UploadService uploadService) {
        this.uploadService = uploadService;
        this.productService = productService;
    }

    @GetMapping("/admin/product")
    public String getProductPage(Model model) {
        List<Product> products = productService.getAllProducts();
        model.addAttribute("productsList", products);
        return "admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("product", new Product());
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String createProductPage(Model model, @ModelAttribute("product") @Valid Product product,
            BindingResult productBindingResult,
            @RequestParam("avatarFile") MultipartFile file) {

        if (productBindingResult.hasErrors()) {
            return "/admin/product/create";
        }

        String img = uploadService.handleSaveUploadFile(file, "product");
        product.setImageProduct(img);
        productService.handleSaveProduct(product);

        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/update/{productId}")
    public String getUpdateProductPage(Model model, @PathVariable long productId) {
        Product product = productService.getProductById(productId);
        model.addAttribute("productId", productId);
        model.addAttribute("product", product);
        return "admin/product/update";
    }

    @PostMapping("/admin/product/update")
    public String updateProductPage(Model model,
            @ModelAttribute("product") @Valid Product product, BindingResult productBindingResult,
            @RequestParam("avatarFile") MultipartFile file) {

        if (productBindingResult.hasErrors()) {
            return "/admin/product/update";
        }

        Product productById = productService.getProductById(product.getId());
        if (productById != null) {
            productById.setName(product.getName());
            productById.setPrice(product.getPrice());
            productById.setQuantity(product.getQuantity());
            productById.setDetailDesc(product.getDetailDesc());
            productById.setShortDesc(product.getShortDesc());
            productById.setFactory(product.getFactory());
            productById.setTarget(product.getTarget());
            productById.setSold(100);

            if (file != null && !file.isEmpty()) {
                String img = uploadService.handleSaveUploadFile(file, "product");
                productById.setImageProduct(img);
            }

            productService.handleSaveProduct(productById);
        }
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/{productId}")
    public String getProductDetailPage(Model model, @PathVariable long productId) {
        Product product = productService.getProductById(productId);
        model.addAttribute("product", product);
        return "admin/product/detail";
    }

    @GetMapping("/admin/product/delete/{productId}")
    public String getDeletePoductPage(Model model, @PathVariable long productId) {
        Product product = productService.getProductById(productId);
        model.addAttribute("product", product);
        return "admin/product/delete";
    }

    @PostMapping("/admin/product/delete")
    public String deleteProduct(@ModelAttribute("product") Product product) {
        productService.deleteProduct(product.getId());
        return "redirect:/admin/product";
    }
}
