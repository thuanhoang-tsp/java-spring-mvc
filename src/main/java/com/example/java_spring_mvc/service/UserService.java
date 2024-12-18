package com.example.java_spring_mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.java_spring_mvc.domain.Role;
import com.example.java_spring_mvc.domain.User;
import com.example.java_spring_mvc.repository.RoleRepository;
import com.example.java_spring_mvc.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public List<User> getallUsers() {
        return userRepository.findAll();
    }

    public User getUserById(long id) {
        return userRepository.findById(id);
    }

    public User handleSaveUser(User user) {
        return userRepository.save(user);
    }

    public void handleDeleteUser(long id) {
        userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return roleRepository.findByName(name);
    }
}
