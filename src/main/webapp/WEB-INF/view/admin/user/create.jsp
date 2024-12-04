<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous">
                <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
                    crossorigin="anonymous"></script>
                <link rel="stylesheet" href="/css/core.css">
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-5 col-12 mx-auto">
                            <h3>Create dd1</h3>
                            <hr />
                            <form:form method="post" action="/admin/user/create1" modelAttribute="user">
                                <div class="mb-3">
                                    <form:label path="email">Email: </form:label>
                                    <form:input type="email" placeholder="Enter email" path="email" />
                                </div>
                                <div class="mb-3">
                                    <form:label path="password">Password: </form:label>
                                    <form:input type="password" placeholder="Enter password" path="password" />
                                </div>
                                <div class="mb-3">
                                    <form:label path="phone">Phone number: </form:label>
                                    <form:input type="text" placeholder="Enter phone" path="phone" />
                                </div>
                                <div class="mb-3">
                                    <form:label path="fullName">Full Name: </form:label>
                                    <form:input type="text" placeholder="Enter full name" path="fullName" />
                                </div>
                                <div class="mb-3">
                                    <form:label path="address">Address: </form:label>
                                    <form:input type="text" placeholder="Enter address" path="address" />
                                </div>
                                <button type="submit" class="btn--main">Create</button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </body>

            </html>