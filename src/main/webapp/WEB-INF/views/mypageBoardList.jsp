<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>   

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | My Page | Board List</title>

    <!-- Blogzine Style -->
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Bootstrap based News, Magazine and Blog Theme">
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700&family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/apexcharts/css/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">
    <!-- Theme CSS -->
    <link id="style-switch" rel="stylesheet" type="text/css" href="resources/resources1b/css/style.css">
    <!-- Blogzine Style -->

    <!-- Finder Style -->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, 
                job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
    <link rel="mask-icon" color="#5bbad5" href="safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#766df4">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="resources/resources3f/vendor/simplebar/dist/simplebar.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="resources/resources3f/css/theme.min.css">
    <!-- Finder - theme.css -->
    <style>
        .card-nav {
            margin: 0;
            padding: 0;
            list-style: none;
        }
        
        .card-nav li {
            margin-bottom: 0;
        }
        
        .card-nav-link {
            position: relative;
            display: block;
            padding: 1rem 0;
            transition: color 0.25s ease-in-out, background-color 0.25s ease-in-out, box-shadow 0.25s ease-in-out, border-color 0.25s ease-in-out;
            border-top: 1px solid #efecf3;
            color: #454056;
            text-decoration: none;
        }
        
        .card-nav-link::before {
            position: absolute;
            display: none;
            top: 0;
            left: -1.25rem;
            width: 0.125rem;
            height: 100%;
            background-color: #fd5631;
            content: "";
        }
        
        .card-nav-link:hover {
            color: #fd5631;
        }
        
        .card-nav-link.active {
            color: #fd5631;
            pointer-events: none;
        }
        
        .card-nav-link.active::before {
            display: block;
        }
        
        .card-nav-link>i {
            margin-top: -0.125rem;
            transition: opacity 0.25s ease-in-out;
        }
        
        .card-nav-link:hover>i,
        .card-nav-link.active>i {
            opacity: 1 !important;
        }
        
        .card-nav-light .card-nav-link,
        .card-light .card-nav-link {
            border-top-color: rgba(255, 255, 255, 0.15);
            color: rgba(255, 255, 255, 0.65);
        }
        
        .card-nav-light .card-nav-link::before,
        .card-light .card-nav-link::before {
            background-color: #fff;
        }
        
        .card-nav-light .card-nav-link:hover,
        .card-light .card-nav-link:hover {
            color: #fff;
        }
        
        .card-nav-light .card-nav-link.active,
        .card-light .card-nav-link.active {
            color: #fff;
        }
        
        .fi-align-justify:before {
            content: "\e927";
        }
        
        .dark-overlay:after,
        .gradient-overlay:after,
        .light-overlay:after {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            content: " ";
            opacity: .3;
            background: #000;
        }
        
         :after,
         :before {
            box-sizing: border-box;
        }
        
        .navbar {
            --bs-navbar-padding-x: 0;
            --bs-navbar-padding-y: 0;
            --bs-navbar-color: #a1a1a8;
            --bs-navbar-hover-color: #2163e8;
            --bs-navbar-disabled-color: rgba(0, 0, 0, 0.3);
            --bs-navbar-active-color: #2163e8;
            --bs-navbar-brand-padding-y: 30px;
            --bs-navbar-brand-margin-end: 1rem;
            --bs-navbar-brand-font-size: 1.25rem;
            --bs-navbar-brand-color: rgba(0, 0, 0, 0.9);
            --bs-navbar-brand-hover-color: rgba(0, 0, 0, 0.9);
            /* --bs-navbar-nav-link-padding-x: 1rem; */
            /* --bs-navbar-toggler-padding-y: 0.25rem; */
            --bs-navbar-toggler-padding-x: 0;
            /* --bs-navbar-toggler-font-size: 1.25rem; */
            --bs-navbar-toggler-icon-bg: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='%23a1a1a8' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
            --bs-navbar-toggler-border-color: rgba(0, 0, 0, 0.1);
            --bs-navbar-toggler-border-radius: 0.375rem;
            --bs-navbar-toggler-focus-width: 0;
            --bs-navbar-toggler-transition: box-shadow 0.15s ease-in-out;
            position: relative;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
            padding: var(--bs-navbar-padding-y) var(--bs-navbar-padding-x);
        }
        
        .navbar-nav-sp {
            --bs-nav-link-padding-x: 0;
            --bs-nav-link-padding-y: 0.25rem;
            --bs-nav-link-font-weight: ;
            --bs-nav-link-color: var(--bs-navbar-color);
            --bs-nav-link-hover-color: var(--bs-navbar-hover-color);
            --bs-nav-link-disabled-color: var(--bs-navbar-disabled-color);
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            padding-right: 0;
            margin-bottom: 0;
            list-style: none;
            height: 80px;
        }
        
        .nav-link-sp {
            display: block;
            padding: var(--bs-nav-link-padding-y) var(--bs-nav-link-padding-x);
            /* 헤더폰트사이즈 */
            font-size: 17px;
            /* font-weight: bold; */
            color: white;
            -webkit-transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out;
            /* font: 15px; */
            padding-right: 1.5rem;
            /* 좌우 간격 */
            margin-bottom: 0;
            --bs-nav-link-padding-x: 0;
            --bs-nav-link-padding-y: 0.01rem;
            --bs-nav-link-font-weight: ;
            --bs-nav-link-color: var(--bs-navbar-color);
            --bs-nav-link-hover-color: var(--bs-navbar-hover-color);
            --bs-nav-link-disabled-color: var(--bs-navbar-disabled-color);
            display: -webkit-box;
            display: -ms-flexbox;
            /* height: 80px; */
        }
        
        .navbar-sticky-sp {
            position: fixed;
            /* padding: var(--bs-nav-link-padding-y) var(--bs-nav-link-padding-x); */
            height: 70px;
            /* z-index: 500px; */
            /* padding-top: -500px; */
            padding-bottom: -45px;
            top: -15px;
            right: 0;
            left: 0;
            background-color: #191a1f;
            -webkit-animation: fadeInDown 0.5s;
            animation: fadeInDown 0.5s;
            width: 100%;
            -webkit-box-shadow: 0px 0px 40px rgba(83, 88, 93, 0.2);
            box-shadow: 0px 0px 40px rgba(83, 88, 93, 0.2);
            /* display: -webkit-box; */
            display: center;
        }
        
        .navbar-brand-sp {
            padding-top: var(--bs-navbar-brand-padding-y);
            padding-bottom: var(--bs-navbar-brand-padding-y);
            margin-left: var(--bs-navbar-brand-margin-end);
            font-size: var(--bs-navbar-brand-font-size);
            color: var(--bs-navbar-brand-color);
            white-space: nowrap;
            /* height: 80px; */
        }
    </style>
    <!-- Finder Style -->
</head>

<body>
    <!-- ======================= 헤더 시작 -->
    <header class="navbar-light navbar-sticky-sp header-static bg-dark navbar-nav-sp nav-link-sp">
        <!-- Logo Nav START -->
        <nav class=" navbar navbar-expand-sm navbar-nav-sp nav-link-sp">
            <div class="container ">
                <!-- Logo START -->
                <a class="navbar-brand navbar-nav-sp nav-link-sp" href="index.html ">
                    <img class="navbar-brand-item light-mode-item " src="resources/resources1b/images/01_main/logo_white.png" alt="logo ">
                    <img class="navbar-brand-item dark-mode-item " src="resources/resources1b/images/01_main/logo_white.png" alt="logo ">
                </a>
                <!-- Logo END -->
                <!-- Responsive navbar toggler -->
                <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="text-body h1 d-none d-sm-inline-block">Menu</span>
                        <span class="navbar-toggler-icon"></span>
                    </button>
                <!-- Main navbar START -->
                <div class="collapse navbar-collapse  " id="navbarCollapse ">
                    <ul class="navbar-nav navbar-nav-scroll mx-auto ">
                        <!-- <li class="nav-item "> -->
                        <a class="nav-link-sp active" href="#" id="homeMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Home</a>
                        <!-- </li> -->
                        <!-- 금융메뉴 Nav item 3 Post -->
                        <!-- <h5 class="mb-4 text-white "> -->
                        <!-- Nav item 4 Mega menu -->
                        <li class="nav-item dropdown dropdown-fullwidth ">
                            <a class="nav-link-sp bg-dark text-white" href="# " id="megaMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">뉴스</a>
                            <div class="dropdown-menu bg-dark text-white" aria-labelledby="megaMenu ">
                                <div class="container ">
                                    <div class="row g-4 p-3 flex-fill ">
                                        <!-- Card item START -->
                                        <div class="col-sm-6 col-lg-3 ">
                                            <div class="card bg-transparent ">
                                                <!-- Card img -->
                                                <img class="card-img rounded " src="resources/resources1b/images/blog/16by9/small/01.jpg " alt="Card image ">
                                                <div class="card-body px-0 pt-3 ">
                                                    <h6 class="card-title mb-0 "><a href="# " class="btn-link text-reset fw-bold ">7 common mistakes everyone makes while traveling</a></h6>
                                                    <!-- Card info -->
                                                    <ul class="nav nav-divider align-items-center text-uppercase small mt-2 ">
                                                        <li class="nav-item ">
                                                            <a href="# " class="text-reset btn-link ">Joan Wallace</a>
                                                        </li>
                                                        <li class="nav-item ">Feb 18, 2022</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Card item END -->
                                        <!-- Card item START -->
                                        <div class="col-sm-6 col-lg-3 ">
                                            <div class="card bg-transparent ">
                                                <!-- Card img -->
                                                <img class="card-img rounded " src="resources/resources1b/images/blog/16by9/small/02.jpg " alt="Card image ">
                                                <div class="card-body px-0 pt-3 ">
                                                    <h6 class="card-title mb-0 "><a href="# " class="btn-link text-reset fw-bold ">12 worst types of
                                            business accounts you follow on Twitter</a></h6>
                                                    <!-- Card info -->
                                                    <ul class="nav nav-divider align-items-center text-uppercase small mt-2 ">
                                                        <li class="nav-item ">
                                                            <a href="# " class="text-reset btn-link ">Lori Stevens</a>
                                                        </li>
                                                        <li class="nav-item ">Jun 03, 2022</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Card item END -->
                                        <!-- Card item START -->
                                        <div class="col-sm-6 col-lg-3 ">
                                            <div class="card bg-transparent ">
                                                <!-- Card img -->
                                                <img class="card-img rounded " src="resources/resources1b/images/blog/16by9/small/03.jpg " alt="Card image ">
                                                <div class="card-body px-0 pt-3 ">
                                                    <h6 class="card-title mb-0 "><a href="# " class="btn-link text-reset fw-bold ">Skills that you can
                                            learn from business</a></h6>
                                                    <!-- Card info -->
                                                    <ul class="nav nav-divider align-items-center text-uppercase small mt-2 ">
                                                        <li class="nav-item ">
                                                            <a href="# " class="text-reset btn-link ">Judy Nguyen</a>
                                                        </li>
                                                        <li class="nav-item ">Sep 07, 2022</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Card item END -->
                                        <!-- Card item START -->
                                        <div class="col-sm-6 col-lg-3 ">
                                            <div class="bg-primary bg-opacity-10 p-4 text-center h-100 w-100 rounded ">
                                                <span>The Blogzine</span>
                                                <h3>Premium Membership</h3>
                                                <p>Become a Member Today!</p>
                                                <a href="# " class="btn btn-warning ">View pricing plans</a>
                                            </div>
                                        </div>
                                        <!-- Card item END -->
                                    </div>
                                    <!-- Row END -->
                                    <!-- Trending tags -->
                                    <div class="row px-3 ">
                                        <div class="col-12 ">
                                            <ul class="list-inline mt-3 ">
                                                <li class="list-inline-item ">Trending tags:</li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-primary-soft ">Travel</a></li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-warning-soft ">Business</a></li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-success-soft ">Tech</a></li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-danger-soft ">Gadgets</a></li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-info-soft ">Lifestyle</a></li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-primary-soft ">Vaccine</a></li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-success-soft ">Sports</a></li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-danger-soft ">Covid-19</a></li>
                                                <li class="list-inline-item "><a href="# " class="btn btn-sm btn-info-soft ">Politics</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- Row END -->
                                </div>
                            </div>
                        </li>

                        <!-- Nav item 2 Pages -->
                        <li class="nav-item dropdown ">
                            <a class="nav-link-sp " href="# " id="pagesMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">정치</a>
                            <ul class="dropdown-menu bg-dark" aria-labelledby="pagesMenu ">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item dropdown-toggle text-white" href="post-list.html ">카드한컷</a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="post-list.html ">정부부처소개</a> </li>
                                <li> <a class="dropdown-item text-white" href="post-list-2.html ">제21대국회의원현황</a> </li>
                                <li class="dropdown-divider text-white"></li>
                                <li> <a class="dropdown-item text-white" href="post-single.html ">정치커뮤니티</a> </li>
                            </ul>
                        </li>

                        <!-- <li class="dropdown-submenu dropend text-white">
                                    <li> <a class="dropdown-item dropdown-toggle text-white" href="post-list.html ">카드한컷</a> </li>
                                </li><a class="dropdown-item text-white" href="post-list.html ">정부부처소개</a>
                        </li>
                        <li> <a class="dropdown-item text-white" href="post-list-2.html ">제21대국회의원현황</a> </li>
                        <li class="dropdown-divider text-white"></li>
                        <li> <a class="dropdown-item text-white" href="post-single.html ">정치커뮤니티</a> </li>
                        </ul>
                        </li> -->
                        <!-- 금융메뉴 Nav item 3 Post -->
                        <li class="nav-item dropdown ">
                            <a class="nav-link-sp  " href="# " id="postMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">금융</a>
                            <ul class="dropdown-menu bg-dark text-white" aria-labelledby="postMenu ">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item dropdown-toggle text-white" href="post-list.html ">금융홈</a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="post-list.html ">오늘의 코스피</a> </li>
                                <li> <a class="dropdown-item text-white" href="post-list-2.html ">오늘의 코스닥</a> </li>
                                <li> <a class="dropdown-item text-white" href="post-single.html ">금융상품비교</a> </li>
                                <li class="dropdown-divider text-white"></li>
                                <li> <a class="dropdown-item text-white" href="post-single.html ">금융커뮤니티</a> </li>
                            </ul>
                        </li>

                        <!-- 금융메뉴 Nav item 3 Post -->
                        <li class="nav-item dropdown ">
                            <a class="nav-link-sp  " href="# " id="postMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">부동산청약</a>
                            <ul class="dropdown-menu bg-dark text-white" aria-labelledby="postMenu ">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item dropdown-toggle text-white" href="post-list.html ">청약홈</a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="post-list.html ">청약정보</a> </li>
                                <li> <a class="dropdown-item text-white" href="post-list.html ">청약캘린더</a> </li>
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item text-white" href="post-list.html ">청약공지사항</a>
                                </li>
                                <li class="dropdown-divider text-white"></li>
                                <li> <a class="dropdown-item text-white" href="post-list-2.html ">부동산커뮤니티</a> </li>
                            </ul>
                        </li>

                        <!-- 커뮤니티메뉴 Nav item 3 Post -->
                        <li class="nav-item dropdown">
                            <a class="nav-link-sp " href="# " id="postMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">커뮤니티</a>
                            <ul class="dropdown-menu bg-dark text-white" aria-labelledby="postMenu ">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item dropdown-toggle text-white" href="post-list.html ">커뮤니티홈</a>
                                </li>
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item text-white" href="post-list.html ">정치</a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="post-list.html ">금융</a> </li>
                                <li> <a class="dropdown-item text-white" href="post-list-2.html ">부동산</a> </li>
                                <li class="dropdown-divider text-white"></li>
                                <li> <a class="dropdown-item text-white" href="post-single.html ">자유광장</a> </li>
                            </ul>
                        </li>
                        <!-- Nav item 5 link-->
                        <li class="nav-item "> <a class="nav-link-sp" href="dashboard.html ">오피니언</a></li>
                    </ul>
                </div>
                <!-- Main navbar END -->

                <!-- Nav right START -->
                <div class="nav flex-nowrap align-items-center ">

                    <!-- Nav bookmark -->
                    <div class="nav-item ">
                        <a class="nav-link-sp " href="# ">
                            <i class="bi bi-bookmark-heart fs-4 "></i>
                        </a>
                    </div>
                    <!-- Nav user -->
                    <div class="nav-item ">
                        <a class="nav-link-sp " href="# ">
                            <i class="bi bi-person-square fs-4 "></i>
                        </a>
                    </div>

                    <!-- Nav Search -->
                    <div class="nav-item dropdown dropdown-toggle-icon-none nav-search ">
                        <a class="nav-link-sp dropdown-toggle " role="button " href="# " id="navSearch " data-bs-toggle="dropdown " aria-expanded="false ">
                            <i class="bi bi-search fs-4 "> </i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end shadow rounded p-2 " aria-labelledby="navSearch ">
                            <form class="input-group ">
                                <input class="form-control border-success " type="search " placeholder="Search " aria-label="Search ">
                                <button class="btn btn-success m-0 " type="submit ">Search</button>
                            </form>
                        </div>
                    </div>
                    <!-- Nav Button -->
                    <div class="nav-item d-none d-md-block ">
                        <a href="# " class="btn btn-sm btn-danger mb-0 mx-2 ">Subscribe!</a>
                    </div>
                    <!-- Offcanvas menu toggler -->
                    <div class="nav-item ">
                        <a class="nav-link-sp p-0 " data-bs-toggle="offcanvas " href="#offcanvasMenu " role="button " aria-controls="offcanvasMenu ">
                            <i class="bi bi-text-right rtl-flip fs-2 " data-bs-target="#offcanvasMenu "> </i>
                        </a>
                    </div>
                </div>
                <!-- Nav right END -->
            </div>
        </nav>
        <!-- Logo Nav END -->
    </header>
    <!-- ======================= 헤더 끝 -->
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section class="bg-dark-overlay-4" style="background-image:url('resources/resources1b/images/avatar/fintouch/finance01.jpg'); background-position: center left; background-size: cover; height: 300px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 py-md-5 my-lg-0">
                        <a href="#" class="badge text-bg-mypage mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>MyPage</a>
                        <h1 class="text-white">마이페이지</h1>
                        <p class="lead text-white"> 내 재태크는 FinTouch에서! <br>회원정보와 내가 찜한 컨텐츠를 볼 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- ======================= 내 글 보기 시작 -->
        <section class="py-4">
            <div class="container">
                <div class="row g-4">
                    <div class="col-12">
                        <!-- 상단 띄움 - 추후 조정 -->
                    </div>
                    <aside class="col-md-3 col-xxl-3">
                        <!-- 사이드바 시작 -->
                        <!-- 사이드바 -->
                        <div class="card card-body border-0 shadow-sm pb-1 me-lg-1">
                            <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-4">
                                <div class="avatar avatar-lg flex-shrink-0">
                                    <img class="avatar-img rounded-0" src="assets/images/avatar/logo.png" alt="avatar">
                                </div>
                                <div class="pt-md-2 pt-lg-0 ps-3 ps-md-0 ps-lg-3">
                                    <h5 class="fs-lg mb-0">건물주가될테야</h5>
                                    <ul class="list-unstyled fs-sm mt-3 mb-0">
                                        <li><a class="nav-link fw-normal p-0" href="mailto:annette_black@email.com"><i class="fi-mail opacity-60 me-2"></i>test01@gmail.com</a></li>
                                    </ul>
                                </div>
                            </div><a class="btn btn-primary btn-lg w-100 mb-3" href="real-estate-add-property.html"><i class="bi bi-plus-lg me-2"></i>게시글 작성하기</a>
                            <a class="btn btn-outline-secondary d-block d-md-none w-100 mb-3" href="#account-nav" data-bs-toggle="collapse"><i class="fi-align-justify me-2"></i>Menu</a>
                            <div class="collapse d-md-block mt-3" id="account-nav">
                                <div class="card-nav">
                                    <a class="card-nav-link" href="real-estate-account-info.html"><i class="bi bi-person-check"></i>회원정보</a>
                                    <a class="card-nav-link" href="real-estate-account-security.html"><i class="fi-lock opacity-60 me-2"></i>내 금융상품</a>
                                    <a class="card-nav-link" href="real-estate-account-properties.html"><i class="fi-home opacity-60 me-2"></i>청약부동산</a>
                                    <a class="card-nav-link" href="real-estate-account-wishlist.html"><i class="fi-heart opacity-60 me-2"></i>뉴스 스크랩</a>
                                    <a class="card-nav-link active" href="real-estate-account-reviews.html"><i class="fi-star opacity-60 me-2"></i>내 글 목록</a>
                                    <a class="card-nav-link" href="real-estate-account-notifications.html"><i class="fi-bell opacity-60 me-2"></i>내 댓글 목록</a>
                                    <a class="card-nav-link" href="real-estate-help-center.html"><i class="fi-logout opacity-60 me-2"></i>회원탈퇴</a>
                                </div>
                            </div>
                        </div>
                        <!-- 사이드바 끝 -->
                    </aside>

                    <div class="col-md-9 col-xxl-9">
                        <!-- 내 글 보기 시작 -->
                        <div class="card border">
                            <!-- Card header -->
                            <div class="card border bg-transparent rounded-3">
                                <!-- Board list -->
                                <div class="card-header bg-transparent border-bottom p-3">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <h5 class="mb-2 mb-sm-0">Board list <span class="badge bg-primary bg-opacity-10 text-primary">105</span></h5>
                                    </div>
                                </div>
                                <!-- Board list -->

                                <!-- Card body START -->
                                <div class="card-body">
                                    <!-- Search and select START -->
                                    <div class="row g-3 align-items-center justify-content-between mb-3">
                                        <!-- Search -->
                                        <div class="col-md-7">
                                            <form class="rounded position-relative">
                                                <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                                <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                            </form>
                                        </div>

                                        <!-- Select option -->
                                        <div class="col-md-3">
                                            <!-- Short by filter -->
                                            <form>
                                                <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
													<option value="">최근 작성 순</option>
													<option>오래된 작성 순</option>
													<option>정치</option>
													<option>뉴스</option>
													<option>금융</option>
													<option>부동산청약</option>
												</select>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- Search and select END -->

                                    <!-- Blog list table START -->
                                    <div class="table-responsive border-0">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                            <!-- Table head -->
                                            <thead class="table-dark">
                                                <tr>
                                                    <th scope="col" class="border-0 rounded-start">Title</th>
                                                    <th scope="col" class="border-0">Date Created</th>
                                                    <th scope="col" class="border-0">Categories</th>
                                                    <th scope="col" class="border-0 rounded-end">Action</th>
                                                </tr>
                                            </thead>

                                            <!-- 목록 시작 -->
                                            <tbody class="border-top-0">
                                                <!-- Table item -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">강남 역세권 청약 일정 어디서 찾아보죠?</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td>2022-11-02</td>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="#" class="badge text-bg-warning"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                                    </td>
                                                    <!-- Action -->
                                                    <td>
                                                        <div class="d-flex gap-2">
                                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <!-- Table item -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">이번에 새로 개정된 노동법</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td>2022-10-29</td>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="#" class="badge text-bg-primary"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                                    </td>
                                                    <!-- Action -->
                                                    <td>
                                                        <div class="d-flex gap-2">
                                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <!-- Table item -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">삼전아 나를 살려줘</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td>2022-10-22</td>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="#" class="badge text-bg-danger"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                                    </td>
                                                    <!-- Action -->
                                                    <td>
                                                        <div class="d-flex gap-2">
                                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <!-- Table item -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">하남쪽 청약 노리는거 메리트가 있을까</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td>2022-10-14</td>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="#" class="badge text-bg-warning"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                                    </td>
                                                    <!-- Action -->
                                                    <td>
                                                        <div class="d-flex gap-2">
                                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <!-- Table item -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">우리 회사 구내식당 라인업</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td>2022-09-30</td>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="#" class="badge text-bg-success"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                                                    </td>
                                                    <!-- Action -->
                                                    <td>
                                                        <div class="d-flex gap-2">
                                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <!-- Table item -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">개발자보호법 좀 만들어주지</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td>2022-09-23</td>
                                                    <!-- Table data -->
                                                    <td>
                                                        <a href="#" class="badge text-bg-primary"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                                    </td>
                                                    <!-- Action -->
                                                    <td>
                                                        <div class="d-flex gap-2">
                                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </tbody>
                                            <!-- Table body END -->
                                        </table>
                                    </div>
                                    <!-- Blog list table END -->
                                    <!-- 내 글 보기 끝 -->
                                </div>

                                <!-- 페이지넘버 시작 -->
                                <nav class="mb-sm-0 d-flex justify-content-center mt-0" aria-label="navigation">
                                    <ul class="pagination pagination-sm pagination-bordered mb-3">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Prev</a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                                        <li class="page-item"><a class="page-link" href="#">6</a></li>
                                        <li class="page-item"><a class="page-link" href="#">7</a></li>
                                        <li class="page-item"><a class="page-link" href="#">8</a></li>
                                        <li class="page-item"><a class="page-link" href="#">9</a></li>
                                        <li class="page-item"><a class="page-link" href="#">10</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </ul>
                                </nav>
                                <!-- 페이지넘버 끝 -->
                            </div>
                        </div>
                        <!-- Blog list table END -->
                    </div>
                </div>
            </div>
        </section>
        <!-- ======================= Main contain END -->

    </main>
    <!-- **************** MAIN CONTENT END **************** -->

    <!-- ======================= 푸터 시작 -->
    <footer class="bg-dark pt-3 ">
        <div class="container ">
            <!-- About and Newsletter START -->
            <div class="row pt-3 pb-1 ">
                <div class="col-md-3 ">
                    <img src="resources/resources1b/images/01_main/logo_white.png" alt="footer logo ">
                </div>
                <div class="col-md-5 ">
                    <p class="text-muted ">그 누구보다도 정치경제소식에 신속하게 닿을 수 있는 곳. <br> 여러 사람들과 정보를 공유할 수 있는 커뮤니티! <br> FinTouch는 늘 고급 정보를 여러분께 전달하기 위해 노력합니다.</p>
                </div>
                <div class="col-md-4 ">
                    <!-- Form -->
                    <form class="row row-cols-lg-auto g-2 align-items-center justify-content-end ">
                        <div class="col-12 ">
                            <input type="email " class="form-control " placeholder="Enter your email address ">
                        </div>
                        <div class="col-12 ">
                            <button type="submit " class="btn btn-primary m-0 ">Subscribe</button>
                        </div>
                        <div class="form-text mt-2 ">By subscribing you agree to our
                            <a href="# " class="text-decoration-underline text-reset ">Privacy Policy</a>
                        </div>
                    </form>
                </div>
            </div>
            <!-- About and Newsletter END -->

            <!-- Divider -->
            <hr>

            <!-- Widgets START -->
            <div class="row pt-3 ">
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-4 ">
                    <h5 class="mb-4 text-white ">Recent post</h5>
                    <!-- Item -->
                    <div class="mb-4 position-relative ">
                        <div><a href="# " class="badge text-bg-danger mb-2 "><i
                                    class="fas fa-circle me-2 small fw-bold "></i>Finance</a></div>
                        <a href="post-single-3.html " class="btn-link text-white fw-normal ">10조로 커진 액티브 ETF…금리연동·채권형 대세로</a>
                        <div>
                            <br>
                            <a href="# " class="badge text-bg-info mb-2 "><i
                            class="fas fa-circle me-2 small fw-bold "></i>Community</a></div>
                        <a href="post-single-3.html " class="btn-link text-white fw-normal ">지속가능한 부동산 산업의 미래</a>
                    </div>
                    <!-- <ul class="nav nav-divider align-items-center small mt-2 text-muted ">
                        <li class="nav-item position-relative ">
                            <div class="nav-link ">by <a href="# " class="stretched-link text-reset btn-link ">Dennis</a>
                            </div>
                        </li>
                        <li class="nav-item ">Apr 06, 2022</li>
                    </ul> -->
                </div>

                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-4 ">
                    <h5 class="mb-4 text-white ">Sponsor</h5>
                    <div class="row ">
                        <div class="col-6 ">
                            <ul class="nav flex-column text-primary-hover ">
                                <li class="nav-item "><a class="nav-link " href="# ">대한민국 국회</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독원</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독위원회 </a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">한국예탁결제원</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">국토교통부</a></li>
                            </ul>
                        </div>
                        <div class="col-6 ">
                            <ul class="nav flex-column text-primary-hover ">
                                <li class="nav-item "><a class="nav-link " href="# ">기획재정부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">한국부동산원</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">주택도시기금</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">매일경제</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-4 ">
                    <h5 class="mb-4 text-white ">Get Regular Updates</h5>
                    <ul class="nav flex-column text-primary-hover ">
                        <li class="nav-item "><a class="nav-link pt-0 " href="# "><i
                                    class="fab fa-whatsapp fa-fw me-2 "></i>WhatsApp</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i
                                    class="fab fa-youtube fa-fw me-2 "></i>YouTube</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="far fa-bell fa-fw me-2 "></i>Website
                                Notifications</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i
                                    class="far fa-envelope fa-fw me-2 "></i>Newsletters</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i
                                    class="fas fa-headphones-alt fa-fw me-2 "></i>Podcasts</a></li>
                    </ul>
                </div>

                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-4 ">
                    <h5 class="mb-4 text-white ">Our Mobile App</h5>
                    <p class="text-muted ">FinTouch의 앱을 다운로드하여 최신 속보 알림과 오늘의 기사 헤드라인 및 주요뉴스를 가장 빠르게 확인해보세요! </p>
                    <div class="row g-2 ">
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/app-store.svg " alt="app-store "></a>
                        </div>
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/google-play.svg " alt="google-play "></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Widgets END -->
        </div>
    </footer>
    <!-- ======================= 푸터 끝 -->

    <!-- Back to top -->
    <div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

    <!-- =======================JS libraries, plugins and custom scripts -->

    <!-- Bootstrap JS -->
    <script src="resources/resources1b/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="resources/resources1b/vendor/apexcharts/js/apexcharts.min.js"></script>
    <script src="resources/resources1b/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

    <!-- Template Functions -->
    <script src="resources/resources1b/js/functions.js"></script>
    
    <!-- Finder script -->
    <script src="resources/resources3f/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/resources3f/vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="resources/resources3f/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="resources/resources3f/js/theme.min.js"></script>
    
    

</body>

</html>