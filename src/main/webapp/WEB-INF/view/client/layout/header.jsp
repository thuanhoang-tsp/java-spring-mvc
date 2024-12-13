<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div class="fixed-top">
            <div class="px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="/" class="navbar-brand">
                        <h1 class="display-6">LaptopShop</h1>
                    </a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="/" class="nav-item nav-link active">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="/product/1" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu custom-dropdown">
                                    <a href="cart.html" class="dropdown-item">Cart</a>
                                    <a href="checkout.html" class="dropdown-item">Checkout</a>
                                    <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="d-flex m-3 me-0">
                            <a href="#" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <span
                                    class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-white px-1"
                                    style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                            </a>
                            <a href="#" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>