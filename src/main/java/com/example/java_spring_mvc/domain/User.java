package com.example.java_spring_mvc.domain;

public class User {
    private Long id;
    private String email;
    private String password;
    private String fullName;
    private String address;
    private String phone;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "id: " + id + "" +
                "email: " + email + "" +
                "password: " + password + "" +
                "fullName: " + fullName + "" +
                "address: " + address + "" +
                "phone: " + phone + "";
    }
}