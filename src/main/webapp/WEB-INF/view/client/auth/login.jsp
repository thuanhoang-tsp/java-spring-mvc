<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Login - LaptopShop</title>
                <link rel="icon" type="image/x-icon" href="/images/favicon.webp">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                    rel="stylesheet">
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                    rel="stylesheet">
                <link href="/client/css/bootstrap.min.css" rel="stylesheet">
                <link href="/client/css/style.css" rel="stylesheet">
                <link href="/css/core.css" rel="stylesheet">
            </head>
            <style>
                .flex-center {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                }

                .container-login {
                    background: url('/images/background.png') no-repeat center center;
                    background-size: cover;
                    background-attachment: fixed;
                }

                .container-login-form {
                    background-color: #F6FBF9;
                    border-radius: 32px;
                    padding: 40px 40px 0 40px;
                    max-width: 480px;
                    width: 100%;
                    margin: 0 16px;
                }

                .login-title {
                    padding: 0 30px;
                    margin-bottom: 4px;
                    font-size: 36px;
                }

                .btn-login {
                    text-decoration: underline;
                }

                .btn-login:hover {
                    color: var(--primary-color)
                }
            </style>

            <body>
                <div class="container-login flex-center">
                    <div class="container-login-form">
                        <div style="margin-bottom: 32px;">
                            <h1 class="text-center login-title">Login</h1>
                        </div>
                        <form method="post" action="/login" class="row">
                            <div class="mb-3 col-12">
                                <label><span class="input-required">*</span>Email</label>
                                <input type="email" placeholder="Enter email" />
                            </div>
                            <div class="mb-3 col-12">
                                <label><span class="input-required">*</span>Password
                                </label>
                                <input type="password" placeholder="Enter password" />
                            </div>
                            <div class="mb-3 col-12 d-flex justify-content-between">
                                <div class="checkbox-antd">
                                    <input type="checkbox" id="remember" name="remember">
                                    <label for="remember">Remember</label>
                                </div>
                                <div>
                                    <a href="/forgot-password"
                                        style="text-decoration: underline; color: var(--primary-color); font-size: var(--font-size-xs);">Forgot
                                        password?</a>
                                </div>
                            </div>
                            <div class="mb-3 col-12">
                                <button type="submit" class="btn--main" style="width: 100%;">Create
                                    Account</button>
                            </div>
                            <div class="mb-3 text-center">
                                <a class="btn-login" href="/register">Need an account?
                                    Sign up!
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </body>

            </html>