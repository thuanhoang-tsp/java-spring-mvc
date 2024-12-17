<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Product - LaptopShop Admin</title>
            <link rel="icon" type="image/x-icon" href="/images/favicon.webp">
            <link href="/css/styles.css" rel="stylesheet" />
            <link href="/css/core.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp" />
            <div id="layoutSidenav">
                <jsp:include page="../layout/sidebar.jsp" />
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Manage products</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                <li class="breadcrumb-item active">Products</li>
                            </ol>
                            <div class="container mt-5" style="padding: 0;">
                                <div class="row">
                                    <div class="col-12 mx-auto">
                                        <div class="d-flex justify-content-between">
                                            <h3>Table products</h3>
                                            <button class="btn--main"
                                                onclick="window.location.href='/admin/product/create'">
                                                Create
                                            </button>
                                        </div>
                                        <hr />
                                        <table class="antd-table">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Product Name</th>
                                                    <th>Price</th>
                                                    <th>Factory</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="product" items="${productsList}">
                                                    <tr>
                                                        <td>${product.id}</td>
                                                        <td>
                                                            <a href="/admin/product/${product.id}" class="link">
                                                                ${product.name}
                                                            </a>
                                                        </td>
                                                        <td>${product.price}</td>
                                                        <td>${product.factory}</td>
                                                        <td>
                                                            <button class="btn--warning"
                                                                onclick="window.location.href='/admin/product/update/${product.id}'">Update</button>
                                                            <button class="btn--danger"
                                                                onclick="window.location.href='/admin/product/delete/${product.id}'">Delete</button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="/js/scripts.js"></script>
        </body>

        </html>