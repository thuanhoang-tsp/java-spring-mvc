<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Delete product - LaptopShop Admin</title>
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
                            <div class="container-fluid px-4 pb-4">
                                <h1 class="mt-4">Manage products</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="/admin/product">Products</a></li>
                                    <li class="breadcrumb-item active">Delete</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-md-5 col-12 mx-auto">
                                            <h3>Delete product</h3>
                                            <hr />
                                            <div style="text-align: center; margin-bottom: 20px;">
                                                <img src="/images/product/${product.imageProduct}" alt="${product.name}"
                                                    style="width: 50%;">
                                            </div>
                                            <div class="alert alert-danger">
                                                Are you sure to delete <span
                                                    style="font-weight: 500;">${product.name}</span> ?
                                            </div>
                                            <form:form method="post" action="/admin/product/delete"
                                                modelAttribute="product">
                                                <div class="mb-3" style="display: none;">
                                                    <form:label path="id">Product ID: </form:label>
                                                    <form:input path="id" class="disabled" value="${id}" />
                                                </div>
                                                <div class="d-flex justify-content-between">
                                                    <button type="submit" class="btn--danger">Delete</button>
                                                    <button type="button" class="btn--close"
                                                        onclick="window.location.href='/admin/product'">Cancel</button>
                                                </div>
                                            </form:form>
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