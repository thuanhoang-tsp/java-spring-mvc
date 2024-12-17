<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>LaptopShop</title>
            <link rel="icon" type="image/x-icon" href="/images/favicon.webp">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link
                href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                rel="stylesheet">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
            <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
            <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
            <link href="/client/css/bootstrap.min.css" rel="stylesheet">
            <link href="/client/css/style.css" rel="stylesheet">
            <link href="/css/core.css" rel="stylesheet">
        </head>

        <body>
            <div id="spinner"
                class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                <div class="spinner-grow text-primary" role="status"></div>
            </div>

            <jsp:include page="../layout/header.jsp" />

            <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content rounded-0">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body d-flex align-items-center">
                            <div class="input-group w-75 mx-auto d-flex">
                                <input type="search" class="form-control p-3" placeholder="keywords"
                                    aria-describedby="search-icon-1">
                                <span id="search-icon-1" class="input-group-text p-3"><i
                                        class="fa fa-search"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="../layout/banner.jsp" />

            <jsp:include page="../layout/feature.jsp" />

            <div class="container-fluid fruite py-5">
                <div class="container">
                    <div class="tab-class text-center"
                        style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                        <h1>Featured products</h1>
                        <button class="btn--main">All products</button>
                    </div>
                    <div class="tab-content">
                        <div class="">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item"
                                                style="cursor: pointer; background-color: #fff;">
                                                <div class="fruite-img">
                                                    <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100"
                                                        alt="">
                                                </div>
                                                <div class="text-white px-3 py-1 rounded position-absolute bg-secondary"
                                                    style="top: 10px; left: 10px;">Apple</div>
                                                <div class="p-4 rounded-bottom">
                                                    <h4 style="color: #363636">Apple</h4>
                                                    <p
                                                        style="color: #828282; width: 200px; overflow: hidden; display: inline-block; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; margin-bottom: 12px;">
                                                        2020 Apple MacBook Air Laptop: Apple M1
                                                        Chip, 13” Retina Display,
                                                        8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD
                                                        Camera, Touch ID. Works with iPhone/iPad; Silver</p>
                                                    <p style="font-size: 16px">$499</p>
                                                    <hr style="margin: 12px 0" />
                                                    <button class="btn--main" style="width: 100%;">
                                                        Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item"
                                                style="cursor: pointer; background-color: #fff;">
                                                <div class="fruite-img">
                                                    <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100"
                                                        alt="">
                                                </div>
                                                <div class="text-white px-3 py-1 rounded position-absolute bg-secondary"
                                                    style="top: 10px; left: 10px;">Apple</div>
                                                <div class="p-4 rounded-bottom">
                                                    <h4 style="color: #363636">Apple</h4>
                                                    <p
                                                        style="color: #828282; width: 200px; overflow: hidden; display: inline-block; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; margin-bottom: 12px;">
                                                        2020 Apple MacBook Air Laptop: Apple M1
                                                        Chip, 13” Retina Display,
                                                        8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD
                                                        Camera, Touch ID. Works with iPhone/iPad; Silver</p>
                                                    <p style="font-size: 16px">$499</p>
                                                    <hr style="margin: 12px 0" />
                                                    <button class="btn--main" style="width: 100%;">
                                                        Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item"
                                                style="cursor: pointer; background-color: #fff;">
                                                <div class="fruite-img">
                                                    <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100"
                                                        alt="">
                                                </div>
                                                <div class="text-white px-3 py-1 rounded position-absolute bg-secondary"
                                                    style="top: 10px; left: 10px;">Apple</div>
                                                <div class="p-4 rounded-bottom">
                                                    <h4 style="color: #363636">Apple</h4>
                                                    <p
                                                        style="color: #828282; width: 200px; overflow: hidden; display: inline-block; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; margin-bottom: 12px;">
                                                        2020 Apple MacBook Air Laptop: Apple M1
                                                        Chip, 13” Retina Display,
                                                        8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD
                                                        Camera, Touch ID. Works with iPhone/iPad; Silver</p>
                                                    <p style="font-size: 16px">$499</p>
                                                    <hr style="margin: 12px 0" />
                                                    <button class="btn--main" style="width: 100%;">
                                                        Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item"
                                                style="cursor: pointer; background-color: #fff;">
                                                <div class="fruite-img">
                                                    <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100"
                                                        alt="">
                                                </div>
                                                <div class="text-white px-3 py-1 rounded position-absolute bg-secondary"
                                                    style="top: 10px; left: 10px;">Apple</div>
                                                <div class="p-4 rounded-bottom">
                                                    <h4 style="color: #363636">Apple</h4>
                                                    <p
                                                        style="color: #828282; width: 200px; overflow: hidden; display: inline-block; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; margin-bottom: 12px;">
                                                        2020 Apple MacBook Air Laptop: Apple M1
                                                        Chip, 13” Retina Display,
                                                        8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD
                                                        Camera, Touch ID. Works with iPhone/iPad; Silver</p>
                                                    <p style="font-size: 16px">$499</p>
                                                    <hr style="margin: 12px 0" />
                                                    <button class="btn--main" style="width: 100%;">
                                                        Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item"
                                                style="cursor: pointer; background-color: #fff;">
                                                <div class="fruite-img">
                                                    <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100"
                                                        alt="">
                                                </div>
                                                <div class="text-white px-3 py-1 rounded position-absolute bg-secondary"
                                                    style="top: 10px; left: 10px;">Apple</div>
                                                <div class="p-4 rounded-bottom">
                                                    <h4 style="color: #363636">Apple</h4>
                                                    <p
                                                        style="color: #828282; width: 200px; overflow: hidden; display: inline-block; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; margin-bottom: 12px;">
                                                        2020 Apple MacBook Air Laptop: Apple M1
                                                        Chip, 13” Retina Display,
                                                        8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD
                                                        Camera, Touch ID. Works with iPhone/iPad; Silver</p>
                                                    <p style="font-size: 16px">$499</p>
                                                    <hr style="margin: 12px 0" />
                                                    <button class="btn--main" style="width: 100%;">
                                                        Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item"
                                                style="cursor: pointer; background-color: #fff;">
                                                <div class="fruite-img">
                                                    <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100"
                                                        alt="">
                                                </div>
                                                <div class="text-white px-3 py-1 rounded position-absolute bg-secondary"
                                                    style="top: 10px; left: 10px;">Apple</div>
                                                <div class="p-4 rounded-bottom">
                                                    <h4 style="color: #363636">Apple</h4>
                                                    <p
                                                        style="color: #828282; width: 200px; overflow: hidden; display: inline-block; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; margin-bottom: 12px;">
                                                        2020 Apple MacBook Air Laptop: Apple M1
                                                        Chip, 13” Retina Display,
                                                        8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD
                                                        Camera, Touch ID. Works with iPhone/iPad; Silver</p>
                                                    <p style="font-size: 16px">$499</p>
                                                    <hr style="margin: 12px 0" />
                                                    <button class="btn--main" style="width: 100%;">
                                                        Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item"
                                                style="cursor: pointer; background-color: #fff;">
                                                <div class="fruite-img">
                                                    <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100"
                                                        alt="">
                                                </div>
                                                <div class="text-white px-3 py-1 rounded position-absolute bg-secondary"
                                                    style="top: 10px; left: 10px;">Apple</div>
                                                <div class="p-4 rounded-bottom">
                                                    <h4 style="color: #363636">Apple</h4>
                                                    <p
                                                        style="color: #828282; width: 200px; overflow: hidden; display: inline-block; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; margin-bottom: 12px;">
                                                        2020 Apple MacBook Air Laptop: Apple M1
                                                        Chip, 13” Retina Display,
                                                        8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD
                                                        Camera, Touch ID. Works with iPhone/iPad; Silver</p>
                                                    <p style="font-size: 16px">$499</p>
                                                    <hr style="margin: 12px 0" />
                                                    <button class="btn--main" style="width: 100%;">
                                                        Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item"
                                                style="cursor: pointer; background-color: #fff;">
                                                <div class="fruite-img">
                                                    <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100"
                                                        alt="">
                                                </div>
                                                <div class="text-white px-3 py-1 rounded position-absolute bg-secondary"
                                                    style="top: 10px; left: 10px;">Apple</div>
                                                <div class="p-4 rounded-bottom">
                                                    <h4 style="color: #363636">Apple</h4>
                                                    <p
                                                        style="color: #828282; width: 200px; overflow: hidden; display: inline-block; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; margin-bottom: 12px;">
                                                        2020 Apple MacBook Air Laptop: Apple M1
                                                        Chip, 13” Retina Display,
                                                        8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD
                                                        Camera, Touch ID. Works with iPhone/iPad; Silver</p>
                                                    <p style="font-size: 16px">$499</p>
                                                    <hr style="margin: 12px 0" />
                                                    <button class="btn--main" style="width: 100%;">
                                                        Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- Fruits Shop End-->

            <jsp:include page="../layout/footer.jsp" />

            <div class="btn--main rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></div>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="/client/lib/easing/easing.min.js"></script>
            <script src="/client/lib/waypoints/waypoints.min.js"></script>
            <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
            <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

            <script src="/client/js/main.js"></script>
        </body>

        </html>