package com.example.java_spring_mvc.repository;

import com.example.java_spring_mvc.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Product save(Product product);

    Product findById(long id);
}
