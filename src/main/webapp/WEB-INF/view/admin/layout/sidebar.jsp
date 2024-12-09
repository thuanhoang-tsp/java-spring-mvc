<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Core</div>
                        <a class="nav-link" href="/admin">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Dashboard
                        </a>
                        <a class="nav-link" href="/admin/user">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-user"></i></div>
                            User
                        </a>
                        <a class="nav-link" href="/admin/product">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-laptop"></i></div>
                            Product
                        </a>
                        <a class="nav-link" href="/admin/order">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-box"></i></div>
                            Order
                        </a>
                    </div>
                </div>
            </nav>
        </div>