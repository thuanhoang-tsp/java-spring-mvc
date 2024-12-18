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
                <title>Update product - LaptopShop Admin</title>
                <link rel="icon" type="image/x-icon" href="/images/favicon.webp">
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
                                <h1 class="mt-4">Manage products</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/product">Products</a></li>
                                    <li class="breadcrumb-item active">Update</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <h3>Update product</h3>
                                            <hr />
                                            <form:form method="post" action="/admin/product/update"
                                                modelAttribute="product" class="row" enctype="multipart/form-data">
                                                <div class="mb-3 col-12 col-md-6" style="display: none;">
                                                    <form:label path="id">Product ID: </form:label>
                                                    <form:input path="id" class="disabled" readonly="true" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorName">
                                                        <form:errors path="name" class="input-error-message" />
                                                    </c:set>
                                                    <form:label path="name"><span class="input-required">*</span>Name
                                                        product: </form:label>
                                                    <form:input type="text" placeholder="Enter name" path="name"
                                                        class="${not empty errorName ? 'input-error' : ''}"
                                                        required="required" />
                                                    ${errorName}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorPrice">
                                                        <form:errors path="price" class="input-error-message" />
                                                    </c:set>
                                                    <form:label path="price"><span class="input-required">*</span>Price:
                                                    </form:label>
                                                    <form:input type="number" placeholder="Enter price" path="price"
                                                        value="100" class="${not empty errorPrice ? 'input-error' : ''}"
                                                        required="required" />
                                                    ${errorPrice}
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <c:set var="errorDetailDesc">
                                                        <form:errors path="detailDesc" class="input-error-message" />
                                                    </c:set>
                                                    <form:label path="detailDesc"><span
                                                            class="input-required">*</span>Detail description:
                                                    </form:label>
                                                    <form:textarea rows="4" placeholder="Enter detail description"
                                                        path="detailDesc"
                                                        class="textarea-antd ${not empty errorDetailDesc ? 'input-error' : ''}"
                                                        required="required" />
                                                    ${errorDetailDesc}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorShortDesc">
                                                        <form:errors path="shortDesc" class="input-error-message" />
                                                    </c:set>
                                                    <form:label path="shortDesc"><span
                                                            class="input-required">*</span>Short description:
                                                    </form:label>
                                                    <form:input type="text" placeholder="Enter short description"
                                                        path="shortDesc"
                                                        class="${not empty errorShortDesc ? 'input-error' : ''}"
                                                        required="required" />
                                                    ${errorShortDesc}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorQuantity">
                                                        <form:errors path="quantity" class="input-error-message" />
                                                    </c:set>
                                                    <form:label path="quantity"><span
                                                            class="input-required">*</span>Quantity: </form:label>
                                                    <form:input type="number" placeholder="Enter quantity" value="1"
                                                        path="quantity"
                                                        class="${not empty errorQuantity ? 'input-error' : ''}"
                                                        required="required" />
                                                    ${errorQuantity}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label path="factory">Factory: </label>
                                                    <form:select class="form-select antd-select" path="factory">
                                                        <form:option value="APPLE">Apple (Macbook)</form:option>
                                                        <form:option value="ASUS">Asus</form:option>
                                                        <form:option value="LENOVO">Lenovo</form:option>
                                                        <form:option value="DELL">Dell</form:option>
                                                        <form:option value="LG">LG</form:option>
                                                        <form:option value="ACER">Acer</form:option>
                                                    </form:select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label path="target">Target: </label>
                                                    <form:select class="form-select antd-select" path="target">
                                                        <form:option value="GAMING">Gaming</form:option>
                                                        <form:option value="OFFICE">Office</form:option>
                                                        <form:option value="STUDENT">Student</form:option>
                                                        <form:option value="LIGHT">Light</form:option>
                                                        <form:option value="BUSINESS">Business</form:option>
                                                    </form:select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label>Image: </label>
                                                    <input type="file" placeholder="Select file" id="avatarFile"
                                                        accept=".png, .jpg, .jpeg" name="avatarFile" />
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <img src="/images/product/${product.imageProduct}"
                                                        id="avatarPreview" alt="${product.name}" style="width: 100px;">
                                                </div>
                                                <div class="col-12">
                                                    <button type="submit" class="btn btn--warning"
                                                        style="width: 100%;">Update</button>
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