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
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
                    integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
                    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change((e) => {
                            const imgUrl = URL.createObjectURL(e.target.files[0]);
                            console.log("imgUrl", imgUrl);
                            $("#avatarPreview").attr("src", imgUrl);
                            $("#avatarPreview").css({ "display": "block" })
                        })
                    })
                </script>
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
                                                class="row" enctype="multipart/form-data">
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
                                                    <form:select class="form-select antd-select" path="role.name">
                                                        <form:option value="USER">USER</form:option>
                                                        <form:option value="ADMIN">ADMIN</form:option>
                                                    </form:select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label path="avatarfile">Avatar: </label>
                                                    <input type="file" placeholder="Select file" id="avatarFile"
                                                        accept=".png, .jpg, .jpeg" name="avatarFile" />
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <img src="" id="avatarPreview" alt=""
                                                        style="display: none; width: 100px;">
                                                </div>
                                                <div class="col-12">
                                                    <button type="submit" class="btn--main"
                                                        style="width: 100%;">Create</button>
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