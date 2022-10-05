<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
    
<!DOCTYPE html>
<html lang="ko">

<style>
    /* 레이아웃분할css 시작 */
    
    div.left {
        width: 70%;
        float: left;
        box-sizing: border-box;
        /* background: #8977ad; */
    }
    
    div.right {
        width: 28.5%;
        float: right;
        box-sizing: border-box;
        /* background: #ece6cc; */
    }
    /* 레이아웃분할css 끝 */
    /* 스크롤바 css 시작 */
    
    #scroll-bar {
        width: 200px;
        height: 400px;
        overflow: auto;
    }
    
    #scroll-bar::-webkit-scrollbar {
        width: 5px;
        /*스크롤바의 너비*/
    }
    
    #scroll-bar::-webkit-scrollbar-thumb {
        background-color: #2163E8;
        /*스크롤바의 색상*/
    }
    
    #scroll-bar::-webkit-scrollbar-track {
        background-color: #F7F8F9;
        /*스크롤바 트랙 색상*/
    }
    /* 스크롤바 css 끝 */
</style>

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
    <title>FinTouch | Community | Free</title>

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
                                                <img class="card-img rounded " src="resources/resources1b/images/blog/16by9/small/01.jpg " alt="Card image ">
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
        </nav>
    </header>
    <!-- =======================헤더 끝 =======================-->

    <!-- **************** MAIN CONTENT START **************** -->
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section style="background-image:url('resources/resources1b/images/avatar/fintouch/community04.png'); background-position: center; height:652px; width:99%;"></section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- ======================= 커뮤니티 메인 시작 -->
        <section class="py-4">
            <div class="container">
                <div class="row g-4" style="margin-top:-150px;">
                    <a href="#" class="badge text-bg-success" style="width: 100px; margin-left: 15px;"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                    <h1>자유 <span style="color:#0CBC87;">광장</span></h1>
                    <div class="col-12">
                        <!-- Counter START -->
                        <div class="row g-4">
                            <div class="col-12">
                                <!-- Blog list table START -->
                                <div class="card border bg-transparent rounded-3">
                                    <!-- Card body START -->
                                    <div class="card-body">
                                        <!-- Search and select START -->
                                        <div class="row g-3 align-items-center justify-content-between mb-3">
                                            <!-- Search -->
                                            <div class="col-md-8">
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
										                <option value="">Sort by</option>
										                <option>Free</option>
										                <option>Newest</option>
										                <option>Oldest</option>
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
                                                        <th scope="col" class="border-0 text-center rounded-start">No</th>
                                                        <th scope="col" class="border-0 ">Title</th>
                                                        <th scope="col" class="border-0 text-center">Writer</th>
                                                        <th scope="col" class="border-0 text-center">Posting date</th>
                                                        <th scope="col" class="border-0 text-center">Hits</th>
                                                        <th scope="col" class="border-0 text-center rounded-end">Comments</th>
                                                    </tr>
                                                </thead>

                                                <!-- Table body START -->
                                                <tbody class="border-top-0">
                                                    <!-- 글 1 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3325</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영숙 헤어졌는데</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">영숙</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 2 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3324</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">반응형말고 고정으로 해야게땅</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">제목 글자수 넘어가면 잘리게 하궁</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 3 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3323</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">■ 영광커플 지금 조용히 잘 만나고 있다는 증거 ■</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">한국의 장만옥 = 9옥순</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 4 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3322</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">샤넬백이 난리네~! 난리야~~!! 난리~~~!!!</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 5 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3321</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">나도 조섹츤은 불호지만 학벌 직업 아줌마들 망상 싸움보단 나음</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 6 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3320</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">9현숙이 영숙 올려치기</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 7 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3319</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">광수는 순자랑 얘기할때보다</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 8 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3318</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">차라리 조선시대 신분제 사회가 더 나은거 같다..</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 9 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3317</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영숙이 표정이 안좋네</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 10 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3316</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">둘이 어울리긴 한다.</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 11 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3315</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영호는 동성한테만 인기있을 타입이지</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 12 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3314</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">조섹츤엔터에서 이태원 땅 샀네 ㄷㄷㄷㄷ</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 13 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3313</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">사내에서 썸도 타고 좋을때다</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 14 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3312</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">상남자타령하면서 사랑에 자존심 질투 이런거는 치욕이냐?</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 15 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3311</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영숙 닮은 아이돌 진짜 있음</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 16 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3310</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">손만 잡고 잘께</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 17 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3309</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">이두희 슈퍼카 보유 임금 미지급</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 18 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3308</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">정치정치조정치</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 19 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3307</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">인스타 협찬으로 돈벌이 하는애</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 20 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3306</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">아니 이 프로는 예능이에요</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                </tbody>
                                                <!-- Table body END -->
                                            </table>
                                        </div>
                                        <!-- Blog list table END -->

                                        <!-- 페이지넘버 시작 -->
                                        <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                            <ul class="pagination pagination-sm pagination-bordered mb-0">
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
                </div>
            </div>
        </section>
        <!-- ======================= Main contain END -->

    </main>
    <!-- **************** MAIN CONTENT END **************** -->

    <!-- =======================푸터 시작 =======================-->
    <footer class="bg-light pt-3">
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
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/app-store.svg " alt="app-store "></a>
                        </div>
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/google-play.svg " alt="google-play "></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Widgets END -->
    </footer>
    <!-- ====================== 푸터 끝 ======================= -->

    <!-- Back to top -->
    <div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

    <!-- ======================= JS libraries, plugins and custom scripts -->

    <!-- Bootstrap JS -->
    <script src="resources/resources1b/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="resources/resources1b/vendor/apexcharts/js/apexcharts.min.js"></script>
    <script src="resources/resources1b/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

    <!-- Template Functions -->
    <script src="resources/resources1b/js/functions.js"></script>

</body>

</html>