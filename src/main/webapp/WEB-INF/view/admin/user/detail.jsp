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
                <title>User detail - LaptopShop Admin</title>
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
                                <h1 class="mt-4">Manage users</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="/admin/user">Users</a></li>
                                    <li class="breadcrumb-item active">Detail</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-8 mx-auto">
                                            <h3>Information user</h3>
                                            <hr />
                                            <ul class="list-group">
                                                <li class="list-group-item">Full name: ${userData.fullName}</li>
                                                <li class="list-group-item">Email: ${userData.email}</li>
                                                <li class="list-group-item">Phone: ${userData.phone}</li>
                                                <li class="list-group-item">Address: ${userData.address}</li>
                                                <li class="list-group-item">Role: ${userData.role.name}</li>
                                            </ul>
                                            <hr />
                                            <button onclick="window.location.href='/admin/user'"
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