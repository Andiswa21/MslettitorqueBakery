<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
    <title>Document</title>
    <link rel="stylesheet" href="css/menu.css">
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

        <section class="our-menu section bg-light repeat-img" id="menu">
                    <div class="sec-wp">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="sec-title text-center mb-5">
                                        <p class="sec-sub-title mb-3"><h2>OUR MENU</h2></p>
                                        <h2 class="h2-title">wake up early, <span>eat fresh & healthy</span></h2>
                                        <div class="sec-title-shape mb-4">
                                            <img src="title-shape.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="menu-tab-wp">
                                <div class="row">
                                    <div class="col-lg-12 m-auto">
                                        <div class="menu-tab text-center">
                                            <ul class="filters">
                                                <div class="filter-active"></div>
                                                <li class="filter" data-filter=".all">
                                                    <img src="menu/menu-1.png" alt="">
                                                    All
                                                </li>
                                                <li class="filter" data-filter=".breakfast">
                                                    <img src="pictires/Menus/emage (1).jpg" alt="">
                                                    Koeke
                                                </li>
                                                <li class="filter" data-filter=".lunch">
                                                    <img src="menu/menu-3.png" alt="">
                                                    Soetgebak
                                                </li>
                                                <li class="filter" data-filter=".dinner">
                                                    <img src="menu/menu-1.png" alt="">
                                                    Platters
                                                </li>
                                                <li class="filter" data-filter=".terte">
                                                    <img src="menu/menu-1.png" alt="">
                                                    Terte
                                                </li>
                                                <li class="filter" data-filter=".bisquit">
                                                    <img src="menu/menu-1.png" alt="">
                                                    Beskuit
                                                </li>
                                                <li class="filter" data-filter=".extras">
                                                    <img src="menu/menu-1.png" alt="">
                                                    Extras
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="menu-list-row">
                                <div class="row g-xxl-5 bydefault_show" id="menu-dish">
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/worsrolletjies.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Worsrolletjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 60</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 2 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/Hoender.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.3
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Hoenderpasteitjies</h3>
                                            </div>

                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/All/spek.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Spek en Kaas Oorvouhappies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/All/wasg.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Wasgoedbondeltjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 5 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/spek en kaas souttertjies.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Spek en Kaas Souttertjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/spinasie en kaas.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Spinasie en Kaas Souttertjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 7 --->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/worsie oo.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Worsie Oorvouhappies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 8 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/aspersie tert.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Aspersie Tertjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 60</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/pizza.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Pizzas</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Poloniepoffers</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 50</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Tunahappies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/vetkoek.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Klein Vetkoekies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/biltong.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Biltongbroodjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 60</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/gevulde.png" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Gevulde Eiers</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/hoender sosaties.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Hoender Sosaties</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 60</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/spekwi.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Spekwieletjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/frikkadelle.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Frikkadelle</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/kaassk.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Kaasskons</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp all" data-cat="all">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/resized/samoosas.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Samoosas</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 72</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-----------------------------------------------------Koeko------------------------------------------------->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/sjokolade.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Sjokolade Koek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 125</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 2 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/vanilla.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.3
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Vanilla Koek</h3>
                                            </div>

                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 115</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/granadila.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Grenadella Koek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 115</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/mokka.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Mokka Koek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 125</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 5 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/vlakoek.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Vlakoek(4 lae)</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 135</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/wortelk.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Wortelkoek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 220</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/ring sjoko.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Ring Sjokolade Koek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 100</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/kaaskoe.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Kaaskoek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 170</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/Swartwoud-Kersiekoek.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Swartwoud Kersiekoek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 200</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/bar one koek.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Bar One Koek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 100</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Top Deck Koek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 120</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/ring vanilla.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Ring Vanillakoek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 100</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/cream caramel.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Cream Caramel sjok</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 125</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/red velvet.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Red Velvet Koek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 220</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/enkel grenadella.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Enkel Grenadella</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 70</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/enkel sjokolade.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Enkel Sjokolade met Karamel</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 80</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/peppermint.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Peppermint Crisp Koek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 95</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/Oondpan Red velvet.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Oondpan Red Velvet</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 280</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/Oondpan Bar One.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Oondpan Bar One</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 230</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/Oondpan Sjok Vanilla.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Oondpan Sjok / Vanilla</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 220</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/Oondpan Koffie.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Oondpan Koffie/Vla/Cream C</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 250</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/cakes/Oondpan Wortelkoek.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Oondpan Wortelkoek</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 280</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-----------------------------------------------------Soetgebak------------------------------------------------->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/melkt.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Melkterthies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 2 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/pepperm.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.3
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Peppermint Crisp Tertjies</h3>
                                            </div>

                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/Karamel Horinkies.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Karamel Horinkies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 60</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/laming.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Lamingtons</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 5 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/tamboesies.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Tamboesies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Vlapoffers</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/choc.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Choc Eclairs</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 60</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/koeksisters.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Koeksisters</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/sjokolade.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Sjokolade Weile</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Tipsy Tetjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/dadelballet.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Dadelballetjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 45</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/muffins.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Muffins</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 85</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/skons.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Skons (Konfyt en room)</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 80</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/kolwy.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Kolwyntjies</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 84</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/Soutgebak/red velvet.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Red Velvet Cupcakes</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 96</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-----------------------------------------------------Platters------------------------------------------------->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp dinner" data-cat="dinner">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/platters/soet platter.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Soet Platter(6 dos)</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 360</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 2 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp dinner" data-cat="dinner">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/platters/gemengde.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.3
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Gemengde Platter (7 dos)</h3>
                                            </div>

                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 400</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp dinner" data-cat="dinner">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/platters/sout platter.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Sout Platter (7 dos)</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 450</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-----------------------------------------------------Terte------------------------------------------------->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/spek.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Spek en Kaas Souttert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 80</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 2 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/spinasie.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.3
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Spinasie en Kaas Quiche</h3>
                                            </div>

                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 80</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/aspersie.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Aspersie tert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 85</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/tunayert.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Tunatert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 80</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/tipsy.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Tipsytert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 80</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/lemon.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Lemon  Meringue</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 85</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/melk.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Melktert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 50</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/appelt.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Appeltert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 60</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/appelkruimeltaart.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Appelkruimeltert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 75</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/cremora.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Cremoratert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 70</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/miljoe.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Miljoeners Tert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 85</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/malva.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Malvatert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 75</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp terte" data-cat="terte">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/terte/koffie.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Koffie Karamel Tert</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 75</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-----------------------------------------------------Bisquit------------------------------------------------->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp bisquit" data-cat="bisquit">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/beskuit/karring.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Karringmelkbeskuit</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 50</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 2 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp bisquit" data-cat="bisquit">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/beskuit/nutty.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.3
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Nuttywheat Beskuit</h3>
                                            </div>

                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 52</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp bisquit" data-cat="bisquit">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/beskuit/All-bran-beskuit.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">All Bran Beskuit</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 52</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 4 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp bisquit" data-cat="bisquit">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/beskuit/ontbyt.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.3
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Ontbyt Beskuit</h3>
                                            </div>

                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 5 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp bisquit" data-cat="bisquit">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/beskuit/sewe.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Sewe Sade Beskuit</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 60</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 6 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp bisquit" data-cat="bisquit">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/beskuit/Semel-Rosyne-Beskuit.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Semel en Rosyne Beskuit</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 52</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 5 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp bisquit" data-cat="bisquit">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/beskuit/boerb.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Boerbeskuit</h3>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 55</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-----------------------------------------------------Extras------------------------------------------------->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp extras" data-cat="extras">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/last3/klein kokekies.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                5
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Klein Koekies</h3>
                                            </div>
                                            <div class="dish-info">
                                                <ul>
                                                    <li>
                                                        <p>Price</p>
                                                        <b>R105</b>
                                                    </li>
                                                    <li>
                                                        <p>Kilograms</p>
                                                        <b>1 KG</b>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 105</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 2 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp extras" data-cat="extras">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/last3/melting_moments.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4.3
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Melting Moments</h3>
                                            </div>
                                            <div class="dish-info">
                                                <ul>
                                                    <li>
                                                        <p>Price</p>
                                                        <b>R120</b>
                                                    </li>
                                                    <li>
                                                        <p>Kilograms</p>
                                                        <b>1 KG</b>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 120</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3 -->
                                    <div class="col-lg-4 col-sm-6 dish-box-wp extras" data-cat="extras">
                                        <div class="dish-box text-center">
                                            <div class="dist-img">
                                                <img src="pictires/last3/Hertzoggies.jpg" alt="">
                                            </div>
                                            <div class="dish-rating">
                                                4
                                                <i class="uil uil-star"></i>
                                            </div>
                                            <div class="dish-title">
                                                <h3 class="h3-title">Hertzoggies</h3>
                                            </div>
                                            <div class="dish-info">
                                                <ul>
                                                    <li>
                                                        <p>Price</p>
                                                        <b>R72</b>
                                                    </li>
                                                    <li>
                                                        <p>Dos</p>
                                                        <b>1 DOS</b>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="dist-bottom-row">
                                                <ul>
                                                    <li>
                                                        <b>R 72</b>
                                                    </li>
                                                    <li>
                                                        <button class="dish-add-btn">
                                                            <i class="uil uil-plus"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
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


