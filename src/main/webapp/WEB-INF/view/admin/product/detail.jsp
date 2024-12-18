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
                <title>Detail product - LaptopShop Admin</title>
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
                                    <li class="breadcrumb-item active">Detail</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-8 mx-auto">
                                            <h3>Detail product ${product.name}</h3>
                                            <hr />
                                            <div class="d-flex">
                                                <ul class="list-group me-4" style="flex: 1;">
                                                    <li class="list-group-item">Product name: ${product.name}</li>
                                                    <li class="list-group-item">Price: ${product.price}</li>
                                                    <li class="list-group-item">Detail description:
                                                        ${product.detailDesc}</li>
                                                    <li class="list-group-item">Short description: ${product.shortDesc}
                                                    </li>
                                                    <li class="list-group-item">Current quantity: ${product.quantity}
                                                    </li>
                                                    <li class="list-group-item">Sold: ${product.sold}</li>
                                                    <li class="list-group-item">Factory: ${product.factory}</li>
                                                    <li class="list-group-item">Target: ${product.target}</li>
                                                </ul>

                                                <div class="text-center" style="flex: 1;">
                                                    <img src="/images/product/${product.imageProduct}"
                                                        alt="${product.name}" class="img-fluid"
                                                        style="max-width: 100%; height: auto;" />
                                                </div>
                                            </div>
                                            <hr />
                                            <button onclick="window.location.href='/admin/product'"
                                                class="btn--main">Back</button>
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