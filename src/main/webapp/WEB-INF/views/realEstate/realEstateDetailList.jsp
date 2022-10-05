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
    <title>Blogzine - Blog and Magazine Bootstrap 5 Theme</title>

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

</head>

<body>
    <!-- ======================= 헤더 시작 =======================-->
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
    <!-- ======================= 헤더 끝 =========================-->
    <!-- **************** MAIN CONTENT START **************** -->

    <!-- ======================= 섹션1: 청약조회 시작 =========================-->
    <section class="position-relative overflow-hidden" style="background-image:url('resources/resources1b/images/02_realEstate/501b249c45892.jpg'); background-position: center; background-size: cover;">
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
                        <div class="d-inline-block bg-white bg-opacity-75 px-3 py-2 rounded-pill mb-3">
                            <p class="mb-0 text-dark"><span class="badge text-bg-success rounded-pill me-1">New</span> Start with the best Real Estate</p>
                        </div>
                        <!-- Title -->
                        <h1 class="text-white display-5">청약조회</h1>
                        <p class="text-white">조건에 맞는 검색을 통해 청약에 관한 상세 정보들을 확인하실 수 있습니다.</p>
                        <div class="d-sm-flex align-items-center mt-4">
                            <!-- Button -->
                            <a href="#" class="btn btn-primary me-2 mb-4 mb-sm-0">Get Started</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ======================= 섹션1 끝 =========================-->


    <!-- ======================= 섹션2: 청약 검색목록 시작 =========================-->
    <section class="py-4 mb-lg-5">
        <div class="container">
            <div class="row g-5">
                <!------------- Title ------------->
                <div class="mb-1">
                </div>
                <!------------- 검색 엔진 ------------->
                <aside class="col-xl-4 col-xxl-3 mt-0">
                    <!------------- body start ------------->
                    <div class="offcanvas-xl offcanvas-end" tabindex="-1" id="offcanvasSidebar" aria-labelledby="offcanvasSidebarLabel">
                        <div class="offcanvas-header bg-light">
                            <h5 class="offcanvas-title" id="offcanvasSidebarLabel">Advance Filter</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body flex-column p-3 p-xl-0">
                            <form class="border rounded-2">
                                <!-- Availability START -->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-3">검색 목록</h6>
                                    <!-- Availability group -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
                                        <label class="form-check-label" for="flexRadioDefault1">전체</label>
                                    </div>
                                </div>
                                <!-- Availability END -->
                                <hr class="my-0">
                                <!-- Divider -->

                                <!------------- filter 1 START ------------->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-2">지역선택</h6>
                                    <!-- Amenities group -->
                                    <div class="col-12">
                                        <!-- Checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType1">
                                            <label class="form-check-label" for="amenitiesType1">전국</label>
                                        </div>
                                        <!-- Checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType2">
                                            <label class="form-check-label" for="amenitiesType2">서울특별시</label>
                                        </div>
                                        <!-- Checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType3">
                                            <label class="form-check-label" for="amenitiesType3">부산광역시</label>
                                        </div>
                                        <!-- Checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType4">
                                            <label class="form-check-label" for="amenitiesType4">대구광역시</label>
                                        </div>
                                        <!-- Collapse body -->
                                        <div class="multi-collapse collapse" id="amenitiesCollapes">
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType5">
                                                <label class="form-check-label" for="amenitiesType5">인천광역시</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType6">
                                                <label class="form-check-label" for="amenitiesType6">광주광역시</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType7">
                                                <label class="form-check-label" for="amenitiesType7">대전광역시</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType8">
                                                <label class="form-check-label" for="amenitiesType8">울산광역시</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType9">
                                                <label class="form-check-label" for="amenitiesType9">세종특별자치시</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType10">
                                                <label class="form-check-label" for="amenitiesType10">경기도</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType11">
                                                <label class="form-check-label" for="amenitiesType11">강원도</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType12">
                                                <label class="form-check-label" for="amenitiesType12">충청북도</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType13">
                                                <label class="form-check-label" for="amenitiesType13">충청남도</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType14">
                                                <label class="form-check-label" for="amenitiesType14">전라북도</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType15">
                                                <label class="form-check-label" for="amenitiesType15">전라남도</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType16">
                                                <label class="form-check-label" for="amenitiesType16">경상북도</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType17">
                                                <label class="form-check-label" for="amenitiesType17">제주특별자치도</label>
                                            </div>
                                        </div>
                                        <!-- Collapse button -->
                                        <a class="p-0 mb-0 mt-2 btn-more d-flex align-items-center collapsed" data-bs-toggle="collapse" href="#amenitiesCollapes" role="button" aria-expanded="false" aria-controls="amenitiesCollapes">
                                                See <span class="see-more ms-1">more</span><span class="see-less ms-1">less</span><i class="fas fa-angle-down ms-2"></i>
                                            </a>
                                    </div>
                                </div>
                                <!------------- filter 1 END ------------->

                                <hr class="my-0">
                                <!-- Divider -->
                                <!------------- filter 2 START ------------->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-3">분양종류</h6>

                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType18">
                                        <label class="form-check-label" for="amenitiesType18">민영</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType19">
                                        <label class="form-check-label" for="amenitiesType19">국민</label>
                                    </div>
                                </div>
                                <!------------- filter 2 END ------------->
                                <hr class="my-0">
                                <!-- Divider -->

                                <!------------- filter 3 START ------------->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-3">주택구분</h6>

                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType20">
                                        <label class="form-check-label" for="amenitiesType20">아파트</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType21">
                                        <label class="form-check-label" for="amenitiesType21">오피스텔/도시형/민간임대</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="type[]" id="amenitiesType22">
                                        <label class="form-check-label" for="amenitiesType22">무순위/잔여세대</label>
                                    </div>
                                </div>
                                <!------------- filter 3 END ------------->

                                <hr class="my-0">
                                <!-- Divider -->

                                <!------------- filter 4 START ------------->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-3">청약일정</h6>

                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox"  id="amenitiesType23" name="type[]">
                                        <label class="form-check-label" for="amenitiesType23">분양중</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox"  id="amenitiesType24" name="type[]">
                                        <label class="form-check-label" for="amenitiesType24">분양예정</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox"  id="amenitiesType25" name="type[]">
                                        <label class="form-check-label" for="amenitiesType25">분양완료</label>
                                    </div>
                                </div>
                                <!------------- filter 4 END ------------->

                                <hr class="my-0">
                                <!-- Divider -->
                            
                            <!-- Form End -->
                        </div>
                        <!-- Buttons -->
                        <div class="d-flex justify-content-between p-2 p-xl-0 mt-xl-3">
                            <button onclick="deselect()" type="button" class="btn btn-link p-0 mb-0">초기화</button>
                            <button class="btn btn-primary mb-0">검색</button>
                 <script>
                        function deselect() {
                            $('.form-check-input').prop('checked', false);
                        }
                    </script>
                        </div>
                    </div>
                    <!-- Responsive offcanvas body END -->
                </aside>
                    </form>
                <!------------- 검색 엔진 END ------------->

                <!------------- Main part START ------------->
                <div class="col-xl-9 mt-0">
                    <h2 class="m-0"><i class="bi bi-card-list me-2"></i>청약 전체보기</h2>
                    <!-- Product START -->
                    <div class="row g-4 pt-3">
                        <!-- 공지사항 START -->
                        <div class="col-12 ">
                            <!-- Blog list table START -->
                            <!-- Card header END -->
                            <!-- Card body START -->
                            <div class="card-body mb-5">
                                <!-- Search filter START -->
                                <form class="row g-2 g-xl-4 mb-4">
                                    <!-- Search -->
                                    <div class="col-xl-8">
                                        <div class="rounded position-relative">
                                            <input class="form-control pe-5" type="search" placeholder="검색어를 입력하세요" aria-label="Search">
                                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="bi bi-search fs-5"> </i></button>
                                        </div>
                                    </div>
                                    <!-- Select -->
                                    <div class="col-md-4 col-xl-4">
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected>검색필터</option>
                                            <option value="1">최신순</option>
                                            <option value="2">오래된순</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4 col-xl-3 d-grid d-xl-none">
                                        <!-- Filter offcanvas button -->
                                        <button class="btn btn-primary-soft btn-primary-check mb-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
                                            <i class="fas fa-sliders-h me-1"></i> Show filter
                                        </button>
                                    </div>
                                </form>
                                <!-- Search filter END -->
                                <!-- Blog list table START -->
                                <div class="table-responsive border-0 ">
                                    <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                        <!-- Table head -->
                                        <thead class="table-dark text-center">
                                            <tr>
                                                <th scope="col" class="border-0 rounded-start">지역</th>
                                                <th scope="col" class="border-0">주택구분</th>
                                                <th scope="col" class="border-0">주택명</th>
                                                <th scope="col" class="border-0">분양가(만원)</th>
                                                <th scope="col" class="border-0 rounded-end">모집공고일</th>
                                            </tr>
                                        </thead>
                                        <!------------- 청약 전체보기 list ------------->
                                        <tbody class="border-top-0 text-center">
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>
                                            <tr>
                                                <td>서울</td>
                                                <td>아파트</td>
                                                <td>경산지역 미분양매입 임대주택</td>
                                                <td>미정</td>
                                                <td>2023-09-02</td>
                                            </tr>

                                        </tbody>
                                        <!------------- 청약 전체보기 list END ------------->
                                    </table>
                                </div>
                                <!-- Blog list table END -->

                                <!-- Pagination START -->
                                <div class="justify-content-sm-between align-items-sm-center mt-4 mt-sm-3 ">
                                    <!-- Content -->
                                    <!-- Pagination -->
                                    <nav class="mb-sm-0 d-flex justify-content-center " aria-label="navigation ">
                                        <ul class="pagination pagination-sm pagination-bordered mb-0 ">
                                            <li class="page-item disabled ">
                                                <a class="page-link " href="# " tabindex="-1 " aria-disabled="true ">Prev</a>
                                            </li>
                                            <li class="page-item "><a class="page-link " href="# ">1</a></li>
                                            <li class="page-item active "><a class="page-link " href="# ">2</a></li>
                                            <li class="page-item disabled "><a class="page-link " href="# ">..</a></li>
                                            <li class="page-item "><a class="page-link " href="# ">15</a></li>
                                            <li class="page-item ">
                                                <a class="page-link " href="# ">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- Pagination END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!-- ======================= 섹션2: 청약 검색목록 끝 =========================-->
    <!-- **************** MAIN CONTENT END **************** -->

    <!-- =======================푸터 시작 =======================-->
    <footer class="bg-light pt-3 ">
        <div class="container ">
            <!-- About and Newsletter START -->
            <div class="row pt-3 pb-1 ">
                <div class="col-md-3 ">
                    <img src="resources/resources1b/images/01_main/logo_dark.png " alt="footer logo ">
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
            <div class="row pt-1 text-dark">
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-dark">Recent post</h5>
                    <!-- Item -->
                    <div class="mb-4 position-relative ">
                        <div><a href="# " class="badge text-bg-danger mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Finance</a></div>
                        <a href="post-single-3.html " class="btn-link text-dark fw-normal ">10조로 커진 액티브 ETF…금리연동·채권형 대세로</a>
                    </div>
                </div>

                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 text-dark">
                    <h5 class="mb-4 text-dark ">Sponsor</h5>
                    <div class="row ">
                        <div class="col-6 ">
                            <ul class="nav flex-column  ">
                                <li class="nav-item "><a class="nav-link " href="# ">대한민국 국회</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독원</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독위원회 </a></li>
                            </ul>
                        </div>
                        <div class="col-6 ">
                            <ul class="nav flex-column   ">
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
                    <ul class="nav flex-column">
                        <li class="nav-item ">
                            <a class="nav-link pt-0 " href="# ">
                                <i class="fab fa-whatsapp fa-fw me-2 "></i>WhatsApp</a>
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
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/app-store.svg  " alt="app-store "></a>
                        </div>
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/google-play.svg  " alt="google-play "></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Widgets END -->
    </footer>
    <!-- ====================== 푸터 끝 ======================= -->

    <!-- Back to top -->
    <div class="back-top "><i class="bi bi-arrow-up-short "></i></div>

    <!-- ======================= JS libraries, plugins and custom scripts -->

    <!-- Bootstrap JS -->
    <script src="resources/resources1b/vendor/bootstrap/dist/js/bootstrap.bundle.min.js "></script>

    <!-- Template Functions -->
    <script src="resources/resources1b/js/functions.js"></script>
    
    <!-- jquery import -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>


</body>

</html>
