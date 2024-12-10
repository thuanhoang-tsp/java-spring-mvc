package com.example.java_spring_mvc.repository;

import com.example.java_spring_mvc.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}
