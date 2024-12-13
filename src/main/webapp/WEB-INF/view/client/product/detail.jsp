<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <title>LaptopShop</title>
            <meta content="width=device-width, initial-scale=1.0" name="viewport">
            <meta content="" name="keywords">
            <meta content="" name="description">
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
            <div class="container-fluid py-5 mt-5">
                <div class="container pt-5">
                    <div class="row g-4 mb-5">
                        <div class="col-lg-8 col-xl-9">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="border rounded">
                                        <a href="#">
                                            <img src="/client/img/single-item.jpg" class="img-fluid rounded"
                                                alt="Image">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <h4 class="fw-bold mb-3">Brocoli</h4>
                                    <p class="mb-3">Category: Vegetables</p>
                                    <h5 class="fw-bold mb-3">3,35 $</h5>
                                    <div class="d-flex mb-4">
                                        <i class="fa fa-star text-secondary"></i>
                                        <i class="fa fa-star text-secondary"></i>
                                        <i class="fa fa-star text-secondary"></i>
                                        <i class="fa fa-star text-secondary"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <p class="mb-4">The generated Lorem Ipsum is therefore always free from repetition
                                        injected humour, or non-characteristic words etc.</p>
                                    <p class="mb-4">Susp endisse ultricies nisi vel quam suscipit. Sabertooth peacock
                                        flounder; chain pickerel hatchetfish, pencilfish snailfish</p>
                                    <div class="input-group quantity mb-5" style="width: 200px;">
                                        <div class="input-group-btn">
                                            <button class="btn--main btn-minus border"
                                                style="min-width: 0; height: 40px;">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                        <input type="text" class="text-center" value="1">
                                        <div class="input-group-btn">
                                            <button class="btn--main btn-plus border"
                                                style="min-width: 0; height: 40px;">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <button class="btn--main rounded-pill px-4 py-2 mb-4"><i
                                            class="fa fa-shopping-bag me-2"></i> Add to cart</button>
                                </div>
                                <div class="col-lg-12">
                                    <nav>
                                        <div class="nav nav-tabs mb-3">
                                            <div class="nav-link active" role="tab" id="nav-about-tab"
                                                data-bs-toggle="tab" data-bs-target="#nav-about"
                                                aria-controls="nav-about" aria-selected="true" style="padding-left: 0;">
                                                Description</div>
                                        </div>
                                    </nav>
                                    <div class="tab-content mb-5">
                                        <div class="tab-pane active" id="nav-about" role="tabpanel"
                                            aria-labelledby="nav-about-tab">
                                            <p>The generated Lorem Ipsum is therefore always free from repetition
                                                injected humour, or non-characteristic words etc.
                                                Susp endisse ultricies nisi vel quam suscipit </p>
                                            <p>Sabertooth peacock flounder; chain pickerel hatchetfish, pencilfish
                                                snailfish filefish Antarctic
                                                icefish goldeye aholehole trumpetfish pilot fish airbreathing catfish,
                                                electric ray sweeper.</p>
                                            <table class="antd-table" style="width: 50%;">
                                                <thead>
                                                    <tr>
                                                        <th>Attribute</th>
                                                        <th>Value</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Weight</td>
                                                        <td>1 kg</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Country of Origin</td>
                                                        <td>Agro Farm</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Quality</td>
                                                        <td>Organic</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Check</td>
                                                        <td>Healthy</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Min Weight</td>
                                                        <td>250 Kg</td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                        </div>
                                        <div class="tab-pane" id="nav-mission" role="tabpanel"
                                            aria-labelledby="nav-mission-tab">
                                            <div class="d-flex">
                                                <img src="/client/img/avatar.jpg" class="img-fluid rounded-circle p-3"
                                                    style="width: 100px; height: 100px;" alt="">
                                                <div class="">
                                                    <p class="mb-2" style="font-size: 14px;">April 12, 2024</p>
                                                    <div class="d-flex justify-content-between">
                                                        <h5>Jason Smith</h5>
                                                        <div class="d-flex mb-3">
                                                            <i class="fa fa-star text-secondary"></i>
                                                            <i class="fa fa-star text-secondary"></i>
                                                            <i class="fa fa-star text-secondary"></i>
                                                            <i class="fa fa-star text-secondary"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p>The generated Lorem Ipsum is therefore always free from
                                                        repetition injected humour, or non-characteristic
                                                        words etc. Susp endisse ultricies nisi vel quam suscipit </p>
                                                </div>
                                            </div>
                                            <div class="d-flex">
                                                <img src="/client/img/avatar.jpg" class="img-fluid rounded-circle p-3"
                                                    style="width: 100px; height: 100px;" alt="">
                                                <div class="">
                                                    <p class="mb-2" style="font-size: 14px;">April 12, 2024</p>
                                                    <div class="d-flex justify-content-between">
                                                        <h5>Sam Peters</h5>
                                                        <div class="d-flex mb-3">
                                                            <i class="fa fa-star text-secondary"></i>
                                                            <i class="fa fa-star text-secondary"></i>
                                                            <i class="fa fa-star text-secondary"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p class="text-dark">The generated Lorem Ipsum is therefore always
                                                        free from repetition injected humour, or non-characteristic
                                                        words etc. Susp endisse ultricies nisi vel quam suscipit </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="nav-vision" role="tabpanel">
                                            <p class="text-dark">Tempor erat elitr rebum at clita. Diam dolor diam ipsum
                                                et tempor sit. Aliqu diam
                                                amet diam et eos labore. 3</p>
                                            <p class="mb-0">Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et
                                                eos labore.
                                                Clita erat ipsum et lorem et sit</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-xl-3">
                            <div class="row g-4 fruite">
                                <div class="col-lg-12">

                                    <div class="mb-4">
                                        <h4>Categories</h4>
                                        <ul class="list-unstyled fruite-categorie">
                                            <li>
                                                <div class="d-flex justify-content-between fruite-name">
                                                    <a href="#"><i class="fas fa-apple-alt me-2"></i>Apples</a>
                                                    <span>(3)</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="d-flex justify-content-between fruite-name">
                                                    <a href="#"><i class="fas fa-apple-alt me-2"></i>Oranges</a>
                                                    <span>(5)</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="d-flex justify-content-between fruite-name">
                                                    <a href="#"><i class="fas fa-apple-alt me-2"></i>Strawbery</a>
                                                    <span>(2)</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="d-flex justify-content-between fruite-name">
                                                    <a href="#"><i class="fas fa-apple-alt me-2"></i>Banana</a>
                                                    <span>(8)</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="d-flex justify-content-between fruite-name">
                                                    <a href="#"><i class="fas fa-apple-alt me-2"></i>Pumpkin</a>
                                                    <span>(5)</span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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