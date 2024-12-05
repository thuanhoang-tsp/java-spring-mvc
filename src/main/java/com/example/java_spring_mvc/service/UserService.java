package com.example.java_spring_mvc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.java_spring_mvc.domain.User;
import com.example.java_spring_mvc.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "Hello from Service";
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
}
