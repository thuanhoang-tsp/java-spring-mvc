package com.example.java_spring_mvc.service.validator;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import org.springframework.stereotype.Service;

import com.example.java_spring_mvc.domain.dto.RegisterDTO;
import com.example.java_spring_mvc.service.UserService;

@Service
public class RegisterValidator implements ConstraintValidator<RegisterChecked, RegisterDTO> {
    private final UserService userService;

    public RegisterValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean isValid(RegisterDTO user, ConstraintValidatorContext context) {
        boolean valid = true;

        // require firstName
        if (user.getFirstName() == null || user.getFirstName().trim().isEmpty()) {
            context.buildConstraintViolationWithTemplate("First name is required")
                    .addPropertyNode("firstName")
                    .addConstraintViolation();
            valid = false;
        }

        // check email
        if (user.getEmail() == null || user.getEmail().trim().isEmpty()) {
            context.buildConstraintViolationWithTemplate("Email is required")
                    .addPropertyNode("email")
                    .addConstraintViolation();
            valid = false;
        } else if (userService.checkEmail(user.getEmail())) {
            context.buildConstraintViolationWithTemplate("Email is existed")
                    .addPropertyNode("email")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }

        // Check if password fields match
        if (user.getPassword() == null || user.getPassword().trim().isEmpty()) {
            context.buildConstraintViolationWithTemplate("Password is required")
                    .addPropertyNode("password")
                    .addConstraintViolation();
            valid = false;
        } else if (!user.getPassword().equals(user.getConfirmPassword())) {
            context.buildConstraintViolationWithTemplate("Confirm password don't match")
                    .addPropertyNode("confirmPassword")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }

        return valid;
    }
}
