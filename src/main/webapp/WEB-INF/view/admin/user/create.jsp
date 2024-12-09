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
                <title>Create users - LaptopShop Admin</title>
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
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/user">Users</a></li>
                                    <li class="breadcrumb-item active">Create</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <h3>Create user</h3>
                                            <hr />
                                            <form:form method="post" action="/admin/user/create" modelAttribute="user"
                                                class="row">
                                                <div class="mb-3 col-12 col-md-6">
                                                    <form:label path="email">Email: </form:label>
                                                    <form:input type="email" placeholder="Enter email" path="email" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <form:label path="password">Password: </form:label>
                                                    <form:input type="password" placeholder="Enter password"
                                                        path="password" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <form:label path="phone">Phone number: </form:label>
                                                    <form:input type="text" placeholder="Enter phone" path="phone" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <form:label path="fullName">Full Name: </form:label>
                                                    <form:input type="text" placeholder="Enter full name"
                                                        path="fullName" />
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <form:label path="address">Address: </form:label>
                                                    <form:input type="text" placeholder="Enter address"
                                                        path="address" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label path="avatarfile">Role: </label>
                                                    <select class="form-select antd-select"
                                                        aria-label="Default select example">
                                                        <option selected>Select role</option>
                                                        <option value="USER">USER</option>
                                                        <option value="ADMIN">ADMIN</option>
                                                    </select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label path="avatarfile">Avatar: </label>
                                                    <input type="file" placeholder="Select file" id="avatarfile"
                                                        accept=".png, .jpg, .jpeg" />
                                                </div>
                                                <button type="submit" class="btn--main">Create</button>
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