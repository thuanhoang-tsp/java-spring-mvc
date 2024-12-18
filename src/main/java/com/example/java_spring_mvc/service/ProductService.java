package com.example.java_spring_mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.java_spring_mvc.domain.Product;
import com.example.java_spring_mvc.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product handleSaveProduct(Product product) {
        return productRepository.save(product);
    }

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductById(long id) {
        return productRepository.findById(id);
    }

    public void deleteProduct(long id) {
        productRepository.deleteById(id);
    }
}
