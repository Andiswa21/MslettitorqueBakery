<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- for icons  -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
        <title>Bootstrap Example</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- for swiper slider  -->
        <link rel="stylesheet" href="swiper-bundle.min.css">

        <!-- fancy box  -->
        <link rel="stylesheet" href="jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/home_style.css"/>
    </head>
    <body>

        <header class="site-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="header-logo">
                            <a href="/home">
                                <img src="logo.png" width="160" height="36" alt="Logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="main-navigation">
                            <button class="menu-toggle"><span></span><span></span></button>
                            <nav class="header-menu">
                                <ul class="menu food-nav-menu">
                                    <li><a href="/home">Home</a></li>
                                    <li><a href="#about">About</a></li>
                                    <li><a href="GetMenuPage">Menu</a></li>
                                </ul>
                            </nav>
                            <div class="header-right">
                                <form action="#" class="header-search-form for-des">
                                    <input type="search" class="form-input" placeholder="Search Here...">
                                    <button type="submit">
                                        <i class="uil uil-search"></i>
                                    </button>
                                </form>
                                <a href="#" class="header-btn header-cart">
                                    <i class="uil uil-shopping-bag"></i>
                                </a>
                                <a href="#" class="header-btn">
                                    <i class="uil uil-user-md"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="sec-wp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="banner-text">
                            <h1 class="h1-title">
                                Welcome to our<br>
                                <span>Online</span>
                                restaurant.
                            </h1>
                            <p></p>
                            <h3>The kind of Meels we serve</h3>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <!-- First Div -->
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div id="carouselExampleAutoplaying1" class="carousel slide pointer-event" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item position-center">
                                <img src="las.jpg" />
                            </div>
                            <div class="carousel-item position-center">
                                <img src="lasagne.jpg" />
                            </div>
                            <div class="carousel-item">
                                <img src="53096885.jpg" />
                            </div>
                            <div class="carousel-item active">
                                <img src="60564-StrawberryCakeFromScratch-ddfms-4X3-0291-1-cd8254e28ea14112b5fc49e25cd08ff6.jpg" />
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying1" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying1" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card1">
                    <div id="carouselExampleAutoplaying2" class="carousel slide pointer-event" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item position-center">
                                <img src="las.jpg" />
                            </div>
                            <div class="carousel-item position-center">
                                <img src="lasagne.jpg" />
                            </div>
                            <div class="carousel-item">
                                <img src="53096885.jpg" />
                            </div>
                            <div class="carousel-item active">
                                <img src="60564-StrawberryCakeFromScratch-ddfms-4X3-0291-1-cd8254e28ea14112b5fc49e25cd08ff6.jpg" />
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying2" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying2" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Example Code -->

        <section class="book-table section bg-light">
            <div class="book-table-shape">
                <img src="table-leaves-shape.png"/>
            </div>

            <div class="book-table-shape book-table-shape2">
                <img src="table-leaves-shape.png" />
            </div>

            <div class="sec-wp" id="about">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sec-title text-center mb-5">
                                <br>
                                <h2 class="h2-title">Opening Time</h2>
                                <div class="sec-title-shape mb-4">
                                    <img src="title-shape.svg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="book-table-info">
                        <div class="row align-items-center">
                            <div class="col-lg-4">
                                <div class="table-title text-center">
                                    <h3>Monday to Thrusday</h3>
                                    <p>9:00 am - 22:00 pm</p>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="call-now text-center">
                                    <i class="uil uil-phone"></i>
                                    <a href="tel:+27-722265926">+27- 722265926</a>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="table-title text-center">
                                    <h3>Friday to Sunday</h3>
                                    <p>11::00 am to 20:00 pm</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="gallery">
                        <div class="col-lg-10 m-auto">
                            <div class="book-table-img-slider" id="icon">
                                <div class="swiper-wrapper">
                                    <a href="display/pic1.jpg" data-fancybox="table-slider"
                                                    class="book-table-img back-img swiper-slide"
                                                    style="background-image: url(display/pic1.jpg)"></a>
                                                <a href="display/pic2.jpg" data-fancybox="table-slider"
                                                    class="book-table-img back-img swiper-slide"
                                                    style="background-image: url(display/pic2.jpg)"></a>
                                                <a href="display/pic3.jpg" data-fancybox="table-slider"
                                                    class="book-table-img back-img swiper-slide"
                                                    style="background-image: url(display/pic3.jpg)"></a>
                                                <a href="display/pic4.avif" data-fancybox="table-slider"
                                                    class="book-table-img back-img swiper-slide"
                                                    style="background-image: url(display/pic4.avif)"></a>
                                                <a href="display/pic1.avif" data-fancybox="table-slider"
                                                    class="book-table-img back-img swiper-slide"
                                                    style="background-image: url(display/pic1.avif)"></a>
                                                <a href="display/pic2.avif" data-fancybox="table-slider"
                                                    class="book-table-img back-img swiper-slide"
                                                    style="background-image: url(display/pic2.avif)"></a>
                                                <a href="display/pic3.avif" data-fancybox="table-slider"
                                                    class="book-table-img back-img swiper-slide"
                                                    style="background-image: url(display/pic3.avif)"></a>
                                                <a href="display/pic4.avif" data-fancybox="table-slider"
                                                    class="book-table-img back-img swiper-slide"
                                                    style="background-image: url(display/pic4.avif)"></a>
                                </div>

                                <div class="swiper-button-wp">
                                    <div class="swiper-button-prev swiper-button">
                                        <i class="uil uil-angle-left"></i>
                                    </div>
                                    <div class="swiper-button-next swiper-button">
                                        <i class="uil uil-angle-right"></i>
                                    </div>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

        </section>

        <!-- jquery  -->
        <script src="js/jquery-3.5.1.min.js"></script>
        <!-- bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/popper.min.js"></script>

        <!-- fontawesome  -->
        <script src="js/font-awesome.min.js"></script>
        <!-- swiper slider  -->
        <script src="js/swiper-bundle.min.js"></script>

        <!-- mixitup -- filter  -->
        <script src="js/jquery.mixitup.min.js"></script>

        <!-- fancy box  -->
        <script src="js/jquery.fancybox.min.js"></script>

        <!-- parallax  -->
        <script src="js/parallax.min.js"></script>

        <!-- gsap  -->
        <script src="js/gsap.min.js"></script>

        <!-- scroll trigger  -->
        <script src="js/ScrollTrigger.min.js"></script>
        <!-- scroll to plugin  -->
        <script src="js/ScrollToPlugin.min.js"></script>
        <!-- rellax  -->
        <!-- <script src="assets/js/rellax.min.js"></script> -->
        <!-- <script src="assets/js/rellax-custom.js"></script> -->
        <!-- smooth scroll  -->
        <script src="js/js/smooth-scroll.js"></script>

        <script src="main.js"></script>

    </body>
</html>
