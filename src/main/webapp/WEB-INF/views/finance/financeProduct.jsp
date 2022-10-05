<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">


<!-- 헤더스타일css 시작-->
<style>
    /* 헤더스타일css 시작 */
    
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
    /* 헤더스타일css 끝 */
</style>

<head>
    <title>FinTouch | FinancialProduct | Main</title>

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
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/tiny-slider/tiny-slider.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/plyr/plyr.css">

    <!-- Theme CSS -->
    <link id="style-switch" rel="stylesheet" type="text/css" href="resources/resources1b/css/style.css">

</head>

<body>
    <!-- =======================헤더 시작 =======================-->
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
                <button class="navbar-toggler ms-auto " type="button " data-bs-toggle="collapse " data-bs-target="#navbarCollapse " aria-controls="navbarCollapse " aria-expanded="false " aria-label="Toggle navigation ">
                        <span class="text-body h1 d-none d-sm-inline-block ">Menu</span>
                        <span class="navbar-toggler-icon "></span>
                    </button>
                <!-- Main navbar START -->
                <div class="collapse navbar-collapse  " id="navbarCollapse ">
                    <ul class="navbar-nav navbar-nav-scroll mx-auto ">
                        <!-- <li class="nav-item "> -->
                        <a class="nav-link-sp active " href="# " id="homeMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">
                                    Home
                            </a>
                        <!-- </li> -->
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

                        <!-- 금융메뉴 Nav item 3 Post -->
                        <li class="nav-item dropdown ">
                            <a class="nav-link-sp  " href="# " id="postMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">금융</a>
                            <ul class="dropdown-menu bg-dark text-white" aria-labelledby="postMenu ">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item dropdown-toggle text-white" href="post-list.html ">금융홈</a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="post-list.html ">오늘의코스피</a> </li>
                                <li> <a class="dropdown-item text-white" href="post-list-2.html ">오늘의코스닥</a> </li>
                                <li> <a class="dropdown-item text-white" href="post-single.html ">금융상품비교</a> </li>
                                <li class="dropdown-divider text-white"></li>
                                <li> <a class="dropdown-item text-white" href="post-single.html ">금융커뮤니티</a> </li>
                            </ul>
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
                                                <img class="card-img rounded " src="assets/images/blog/16by9/small/01.jpg " alt="Card image ">
                                                <div class="card-body px-0 pt-3 ">
                                                    <h6 class="card-title mb-0 "><a href="# " class="btn-link text-reset fw-bold ">7 common mistakes
                                            everyone makes while traveling</a></h6>
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
                                                <img class="card-img rounded " src="assets/images/blog/16by9/small/02.jpg " alt="Card image ">
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
                                                <img class="card-img rounded " src="assets/images/blog/16by9/small/03.jpg " alt="Card image ">
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

                        <!-- Nav item 5 link-->
                        <li class="nav-item "> <a class="nav-link-sp" href="dashboard.html ">오피니언</a></li>

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
            <!-- Logo Nav END -->
    </header>
    <!-- =======================헤더 끝 =======================-->

    <!-- **************** MAIN CONTENT START **************** -->
    <main>
        <div class="mt-100"></div>
        <section class="position-relative overflow-hidden" style="padding-bottom: 0px; background-image:url(resources/resources1b/images/03_financePro/financeMain.jpg); background-position: center; background-size: cover;">
            <div class="bg-overlay bg-transparent opacity-5"></div>
            <!-- SVG decoration for curve -->
            <figure class="position-absolute bottom-0 left-0 w-100 d-md-block mb-n3 z-index-9">
                <svg class="fill-white" width="100%" height="150" viewBox="0 0 500 150" preserveAspectRatio="none">
                    <path d="M0,150 L0,40 Q250,150 500,40 L580,150 Z"></path>
                </svg>
            </figure>

            <div class="container z-index-9 position-relative">
                <div class="row py-0 align-items-center text-center text-sm-start">
                    <div class="col-sm-12 all-text-white mt-md-0">
                        <div class="py-0 py-md-5 my-2">

                            <!-- Badge with content -->
                            <a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>

                            <!-- Title -->
                            <h1 class="text-black display-5">금융의 One Stop Shopping</h1>
                            <p class="text-black fw-bold" style="font-size:20px;">금융상품을 한 눈에 더 쉽고 빠르게<br>FinTouch 만의 금융상품 정보 서비스</p>
                            <div class="d-sm-flex align-items-center mt-4">
                                <br><br><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-4 mt-0">
            <div class="container">
                <div class="row g-4 mb-2">
                    <div class="col-12" style="margin-left: 10px;">
                        <h3 class="mb-0"><i class="bi bi-piggy-bank"></i>&nbsp;이 달의 BEST 예금상품</h3>
                    </div>
                </div>
                <div class="row g-4">
                    <div class="col-md-6 col-xl-3">
                        <!-- BEST 예금상품 START -->
                        <div class="card border h-100">
                            <!-- 예금상품명 -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="resources/resources1b/images/03_financePro/BankDetail.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">e-금리우대 예금</h5>
                                </div>
                            </div>

                            <!-- 예금상품 정보 -->
                            <div class="card-body">
                                <ul style="padding-left: 10px;">
                                    <li>가입대상 : 개인</li>
                                    <li>저축기간 : 12개월</li>
                                    <li>금리유형 : 단리</li>
                                </ul>
                                <div class="d-flex justify-content-between">
                                    <!-- 최고금리 -->
                                    <div>
                                        <h4 class="mb-0">3.1%</h4>
                                    </div>

                                    <!-- 금융사 이미지 -->
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-xl">
                                            <img class="avatar-img rounded-circle" src="resources/resources1b/images/03_financePro/nhBank.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- BEST 예금상품 END -->

                            <!-- Card footer -->
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-xl-3">
                        <!-- Category item START -->
                        <div class="card border h-100">
                            <!-- Card header -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="resources/resources1b/images/03_financePro/BankDetail.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">KB Star 정기예금</h5>
                                </div>
                            </div>

                            <!-- Card body START -->
                            <div class="card-body">
                                <ul style="padding-left: 10px;">
                                    <li>가입대상 : 개인 또는 개인사업자</li>
                                    <li>저축기간 : 12개월</li>
                                    <li>금리유형 : 단리</li>
                                </ul>
                                <div class="d-flex justify-content-between">
                                    <!-- Total post -->
                                    <div>
                                        <h4 class="mb-0">3.91%</h4>
                                    </div>

                                    <!-- Avatar group -->
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-xl">
                                            <img src="resources/resources1b/images/03_financePro/kbBank.jpg" class="avatar-img" alt="">
                                        </li>
                                    </ul>
                                </div>

                            </div>
                            <!-- Card body END -->

                            <!-- Card footer -->
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
                            </div>
                        </div>
                        <!-- Category item END -->
                    </div>

                    <div class="col-md-6 col-xl-3">
                        <!-- Category item START -->
                        <div class="card border h-100">
                            <!-- Card header -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="resources/resources1b/images/03_financePro/BankDetail.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">1석7조통장</h5>
                                </div>
                            </div>

                            <!-- Card body START -->
                            <div class="card-body">
                                <ul style="padding-left: 10px;">
                                    <li>가입대상 : 실명의 개인</li>
                                    <li>저축기간 : 24개월</li>
                                    <li>금리유형 : 단리</li>
                                </ul>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="mb-0">4.64%</h4>
                                    </div>

                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-xl">
                                            <img src="resources/resources1b/images/03_financePro/ibkBank.jpg" alt="">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card body END -->

                            <!-- Card footer -->
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
                            </div>
                        </div>
                        <!-- Category item END -->
                    </div>

                    <div class="col-md-6 col-xl-3">
                        <!-- Category item START -->
                        <div class="card border h-100">
                            <!-- Card header -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="resources/resources1b/images/03_financePro/BankDetail.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">쏠편한 정기예금</h5>
                                </div>
                            </div>

                            <!-- Card body START -->
                            <div class="card-body">
                                <ul style="padding-left: 10px;">
                                    <li>가입대상 : 만14세이상 개인고객</li>
                                    <li>저축기간 : 24개월</li>
                                    <li>금리유형 : 단리</li>
                                </ul>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="mb-0">4.2%</h4>
                                    </div>

                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-xl">
                                            <img src="resources/resources1b/images/03_financePro/shinhanBank.jpg" alt="">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card body END -->

                            <!-- Card footer -->
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
                            </div>
                        </div>
                        <!-- Category item END -->
                    </div>

                </div>

        </section>

        <section class="py-4 mt-0 mb-5">
            <div class="container">
                <div class="row g-4 mb-2">
                    <div class="col-12" style="margin-left: 10px;">
                        <h3 class="mb-0"><i class="bi bi-search-heart"></i>&nbsp;상품 검색</h3>
                    </div>
                </div>
                <!-- 금융상품 종류 선택 -->
                <div class="row g-4">
                    <div class="col-3">
                        <div class="row">
                            <div class="card border">
                                <div class="nav flex-column nav-pills mt-2 fw-bold" id="v-pills-tab" role="tablist" aria-orientation="vertical" style="text-align: center;">
                                    <a class="nav-link active border-bottom mt-1" id="v-pills-home-tab" data-bs-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">적  금</a>
                                    <a class="nav-link border-bottom" id="v-pills-profile-tab" data-bs-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">예  금</a>
                                    <a class="nav-link border-bottom" id="v-pills-messages-tab" data-bs-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">신용대출</a>
                                    <a class="nav-link border-bottom" id="v-pills-settings-tab" data-bs-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">주택담보대출</a>
                                    <a class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">전세자금대출</a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="bg-primary bg-opacity-10 rounded-3 p-5 h-100 mt-4">
                                <!-- Image -->
                                <div>
                                    <img src="resources/resources1b/images/03_financePro/08.svg" class="h-100px h-sm-200px" alt="">
                                </div>
                                <!-- Content -->
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h3 class="mb-1">To make money</h3>
                                        <a class="mb-3 h5 fw-light lead">회원님께 안성맞춤인 
                                        <p>금융정보를 원하시나요?</p></a>
                                        <a href="#" class="btn btn-primary mb-0" style="margin-left: 20px;">View Information</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-9">
                        <!-- 상품검색 list START -->
                        <div class="card border">
                            <div class="card-header border-bottom p-3">
                                <!-- Search and select START -->
                                <div class="row g-3 align-items-center justify-content-between">
                                    <!-- Search bar -->
                                    <div class="col-md-5">
                                        <form class="rounded position-relative">
                                            <input class="form-control bg-transparent" type="search" placeholder="금융회사명 검색" aria-label="Search">
                                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                        </form>
                                    </div>
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <!-- Short by filter -->
                                        <form>
                                            <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
                                                    <option value="">Sort by</option>
                                                    <option>금리순</option>
                                                    <option>금융회사순</option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- 금융상품 검색 List START -->
                            <div class="card-body p-3 pb-0">
                                <!-- Tabs content START -->
                                <div class="tab-content py-0 my-0">
                                    <!-- Tabs content item START -->
                                    <div class="tab-pane fade show active" id="nav-list-tab">
                                        <!-- Table START -->
                                        <div class="table-responsive border-0">
                                            <table class="table align-middle p-4 mb-0 table-hover">
                                                <!-- Table head -->
                                                <thead class="table-light">
                                                    <tr style="text-align: center;">
                                                        <th scope="col" class="border-0 rounded-start">NO</th>
                                                        <th scope="col" class="border-0">금융상품</th>
                                                        <th scope="col" class="border-0">금융회사</th>
                                                        <th scope="col" class="border-0">가입 방법</th>
                                                        <th scope="col" class="border-0 rounded-end">적립/금리유형</th>
                                                    </tr>
                                                </thead>

                                                <!-- Table body START -->
                                                <tbody class="border-top-0" style="text-align:center;">
                                                    <tr>
                                                        <!-- NO -->
                                                        <td>1</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- 금융사 Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/shinhanBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0"><a href="">신한 알.쏠 적금</a></h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- <h4 class="mt-5 mb-3 fw-bolder">인기<a href="#!" class="text-primary">정치</a>게시글</h4> -->
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">4.15%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>신한은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>영업점,인터넷,스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                    </tr>

                                                    <!-- Table row -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>2</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/kbBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">KB내맘대로적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">3.25%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>국민은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>인터넷,스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>정액적립식</td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/wooriBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">첫급여 우리적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">3.3%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>우리은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>영업점,인터넷,스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                    </tr>

                                                    <!-- Table row -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>4</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/busanBank.png" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">펫 적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">4.15%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>부산은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>영업점,스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                        <!-- 최고 금리 -->
                                                        <!-- <td>4.15%</td> -->
                                                    </tr>

                                                    <!-- Table row -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>5</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/deaguBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">영플러스적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">3.71%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>대구은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>영업점,인터넷,스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                    </tr>

                                                    <!-- Table row -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>6</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/scBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">퍼스트가계적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">2.85%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>한국스탠다드차타드은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>영업점,인터넷,스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                    </tr>

                                                    <!-- Table row -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>7</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/gjBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">스마트모아적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">2.85%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>광주은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>인터넷,스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                    </tr>

                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>8</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/jejuBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">저금통적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">5.05%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>제주은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>인터넷,스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                    </tr>

                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>9</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/nhBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">올원 5늘도 적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">3.1%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>농협은행주식회사</td>
                                                        <!-- 가입방법 -->
                                                        <td>스마트폰</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                    </tr>

                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>10</td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- Image -->
                                                                        <div class="avatar avatar-md">
                                                                            <img src="resources/resources1b/images/03_financePro/ibkBank.jpg" class="avatar-img" alt="">
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">W효도적금</h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연 <a href="#!" class="text-primary">3.65%</a></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                        <td>중소기업은행</td>
                                                        <!-- 가입방법 -->
                                                        <td>영업점,인터넷,스마트폰,기타</td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>자유적립식</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-footer p-3">
                                <!-- Pagination START -->
                                <div class="d-sm-flex justify-content-center align-items-sm-center">
                                    <!-- Content -->
                                    <p class="mb-sm-0 text-center text-sm-start"></p>
                                    <!-- Pagination -->
                                    <nav class="mb-sm-0 d-flex justify-content-center" aria-label="navigation">
                                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Prev</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item disabled"><a class="page-link" href="#">..</a></li>
                                            <li class="page-item"><a class="page-link" href="#">15</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- Pagination END -->
                            </div>
                            <!-- Card Footer END -->
                        </div>
                        <!-- Card END -->
                    </div>
                </div>
            </div>
            <!-- Card END -->
            </div>
        </section>
        <!-- =======================
Author list END -->

    </main>
    <!-- **************** MAIN CONTENT END **************** -->


    <!-- =======================푸터 시작 =======================-->
    <footer class="bg-light pt-3">
        <div class="container ">
            <!-- About and Newsletter START -->
            <div class="row pt-3 pb-1 ">
                <div class="col-md-3 ">
                    <img src="resources/resources1b/images/01_main/logo_dark.png" alt="footer logo ">
                </div>
                <div class="col-md-5 ">
                    <p class="text-dark ">그 누구보다도 정치경제소식에 신속하게 닿을 수 있는 곳. <br> FinTouch는 늘 고급 정보를 여러분께 전달하기 위해 노력합니다.</p>
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
                    </form>
                </div>
            </div>
            <!-- Divider -->
            <hr>
            <!-- Widgets START -->
            <div class="row pt-1 text-dark ">
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-dark ">Recent post</h5>
                    <!-- Item -->
                    <div class="mb-4 position-relative ">
                        <div><a href="# " class="badge text-bg-danger mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Finance</a></div>
                        <a href="post-single-3.html " class="btn-link text-dark fw-normal ">10조로 커진 액티브 ETF…금리연동·채권형 대세로</a>
                    </div>
                </div>
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 text-dark ">
                    <h5 class="mb-4 text-dark ">Sponsor</h5>
                    <div class="row ">
                        <div class="col-6 ">
                            <ul class="nav flex-column ">
                                <li class="nav-item "><a class="nav-link " href="# ">대한민국 국회</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독원</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독위원회 </a></li>
                            </ul>
                        </div>
                        <div class="col-6 ">
                            <ul class="nav flex-column ">
                                <li class="nav-item "><a class="nav-link " href="# ">기획재정부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">국토교통부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">주택도시기금</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-3 text-dark ">
                    <h5 class="mb-4 text-dark ">Get Regular Updates</h5>
                    <ul class="nav flex-column ">
                        <li class="nav-item ">
                            <a class="nav-link pt-0 " href="# ">
                                <i class="fab fa-whatsapp fa-fw me-2 "></i>WhatsApp
                            </a>
                        </li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="fab fa-youtube fa-fw me-2 "></i>YouTube</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="far fa-bell fa-fw me-2 "></i>Website Notifications</a></li>
                    </ul>
                </div>
                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-dark ">Our Mobile App</h5>
                    <p class="text-dark ">FinTouch의 앱을 다운로드하여 최신 속보를 가장 빠르게 확인해보세요! </p>
                    <div class="row g-2 ">
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/app-store.svg" alt="app-store "></a>
                        </div>
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/google-play.svg" alt="google-play "></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Widgets END -->
    </footer>
    <!-- ====================== 푸터 끝 ======================= -->

    <!-- Back to top -->
    <div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

    <!-- =======================
JS libraries, plugins and custom scripts -->

    <!-- Bootstrap JS -->
    <script src="resources/resources1b/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="resources/resources1b/vendor/apexcharts/js/apexcharts.min.js"></script>
    <script src="resources/resources1b/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

    <!-- Template Functions -->
    <script src="resources/resources1b/js/functions.js"></script>

</body>

</html>