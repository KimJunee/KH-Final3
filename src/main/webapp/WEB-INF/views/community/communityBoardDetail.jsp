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
    <title>FinTouch | Community | 게시글제목</title>

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
    </header>
    <!-- =======================헤더 끝 =======================-->
    <!-- **************** MAIN CONTENT START **************** -->
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section style="background-image:url('resources/resources1b/images/avatar/fintouch/community04.png'); background-position: center; height:652px; width:99%;"></section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- Divider -->
        <div class="border-primary border-1 opacity-1"></div>
        <!-- ======================= Inner intro START -->
        <section class="pb-3 pb-lg-5" style="margin-top:-100px;">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>제목이 길게길게길게길게길게길게길게길게길게길게길게길게길게길게길게길게길게</h1>
                    </div>
                </div>
            </div>
        </section>
        <!-- ======================= Inner intro END -->
        <!-- ======================= Main START -->
        <section class="pt-0">
            <div class="container position-relative" data-sticky-container>
                <div class="row">
                    <!-- 왼쪽 사이드바 시작 -->
                    <div class="col-lg-2">
                        <div class="text-start text-lg-center mb-5" data-sticky data-margin-top="80" data-sticky-for="991">
                            <!-- 작성자 -->
                            <div class="position-relative">
                                <div class="avatar avatar-xl">
                                    <img class="avatar-img rounded-circle" src="resources/resources1b/images/avatar/fintouch/logo.png" alt="avatar">
                                </div>
                                <a href="#" class="h5 stretched-link mt-2 mb-0 d-block">서현동뒹굴이</a>
                            </div>
                            <hr class="d-none d-lg-block">
                            <!-- 작성일 / 조회수 / 댓글수 -->
                            <ul class="list-inline list-unstyled">
                                <li class="list-inline-item d-lg-block my-lg-2">2022-09-23 15:49</li>
                                <li class="list-inline-item d-lg-block my-lg-2"><i class="far fa-eye me-1"></i> 23 Views</li>
                                <li class="list-inline-item d-lg-block my-lg-2"><i class="bi bi-chat-left-quote-fill me-1"></i> 2 Commenets</li>
                            </ul>
                        </div>
                    </div>
                    <!-- 왼쪽 사이드바 끝 -->
                    <!-- 메인 컨텐츠 시작 -->
                    <div class="col-lg-7 mb-5">
                        <p>어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 스크롤을 내려서 확인할라면 더 길어야 해요어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 스크롤을 내려서 확인할라면 더 길어야
                            해요어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 스크롤을 내려서 확인할라면 더 길어야 해요어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 스크롤을 내려서 확인할라면
                            더 길어야 해요어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 라쏼라 암냠냠냠 옴뇽뇽뇽 스크롤을 내려서 확인할라면 더 길어야 해요어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 어쩌구 저쩌구 쏼라쏼라 암냠냠냠 옴뇽뇽뇽 스크롤을 내려서 확인할라면
                            더 길어야 해요</p>
                        <!-- Image -->
                        <figure class="figure mt-2">
                            <a href="resources/resources1b/images/blog/3by2/04.jpg" data-glightbox data-gallery="image-popup">
                                <img class="rounded" src="resources/resources1b/images/blog/3by2/04.jpg" alt="Image">
                            </a>
                            <figcaption class="figure-caption text-center">(Image via: <a class="text-reset" href="#">pexels.com</a>)</figcaption>
                        </figure>

                        <p>그림 어쩌구 빠밤빠밤 신나는 금요일 정말 신나는게 맞나요 아니요 왜 아니죠 그럴리가요 그럴수도이쬬 그렇군요 쭈꾸미는 정말 맛있다 치즈토핑 최고다 치즈토핑은 너무 비싸요 4천원 진짜 선넘었다 얌마</p>

                        <!-- 댓글 시작 -->
                        <div class="border-bottom border-top border-2 mb-3 pt-3" style="color:#a1a1a8">
                            <h3>2 comments</h3>
                            <!-- Comment level 1-->
                            <div class="my-4 d-flex border-bottom border-1 mb-1" style="color:#a1a1a8">
                                <img class="avatar avatar-md rounded-circle float-start me-3" src="resources/resources1b/images/avatar/01.jpg" alt="avatar">
                                <div>
                                    <div class="mb-2">
                                        <h5 class="m-0">쏩쏲쏫쏙쏳쏘</h5>
                                        <span class="me-3 small">2022-09-23 16:06 </span>
                                    </div>
                                    <div style="color:#191a1f">
                                        <p>님 이렇게 뻘글 쓰면 신고할거임</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Comment level 1 -->
                            <div class="my-4 d-flex">
                                <img class="avatar avatar-md rounded-circle float-start me-3 pb-1" src="resources/resources1b/images/avatar/04.jpg" alt="avatar">
                                <div>
                                    <div class="mb-2">
                                        <h5 class="m-0">형님들진정하세요</h5>
                                        <span class="me-3 small">2022-09-24 11:33</span>
                                    </div>
                                    <div style="color:#191a1f">
                                        <p>댓글은 어디까지 허용해야하나 3000자인가 역시 대세는 3000이긴 해 왜 3000이냐 2000은 적고 4000은 많으니까요</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 댓글 끝 -->
                        <!-- 댓글 작성 시작 -->
                        <div>
                            <h3>Leave a reply</h3>
                            <form class="row g-3 mt-1">
                                <div class="col-12">
                                    <textarea class="form-control" rows="3"></textarea>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">Post comment</button>
                                </div>
                            </form>
                        </div>
                        <!-- 댓글 작성 끝 -->
                    </div>
                    <!-- Main Content END -->

                    <!-- 오른쪽 사이드바 시작 -->
                    <div class="col-lg-3">
                        <div data-sticky data-margin-top="80" data-sticky-for="991">
                            <h4>Share this article</h4>
                            <ul class="nav text-white-force">
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-facebook" href="#">
                                        <i class="fab fa-facebook-square align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-twitter" href="#">
                                        <i class="fab fa-twitter-square align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-linkedin" href="#">
                                        <i class="fab fa-linkedin align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-pinterest" href="#">
                                        <i class="fab fa-pinterest align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-primary" href="#">
                                        <i class="far fa-envelope align-middle"></i>
                                    </a>
                                </li>
                            </ul>
                            <!-- 인기검색어 -->
                            <div class="row g-2 mt-5">
                                <h5>인기검색어</h5>
                                <div class="d-flex justify-content-between align-items-center bg-warning bg-opacity-15 rounded p-2 position-relative">
                                    <h6 class="m-0 text-warning">쭈꾸미</h6>
                                    <a href="#" class="badge bg-warning text-dark stretched-link">09</a>
                                </div>
                                <div class="d-flex justify-content-between align-items-center bg-info bg-opacity-10 rounded p-2 position-relative">
                                    <h6 class="m-0 text-info">코로나</h6>
                                    <a href="#" class="badge bg-info stretched-link">25</a>
                                </div>
                                <div class="d-flex justify-content-between align-items-center bg-danger bg-opacity-10 rounded p-2 position-relative">
                                    <h6 class="m-0 text-danger">환율</h6>
                                    <a href="#" class="badge bg-danger stretched-link">75</a>
                                </div>
                                <div class="d-flex justify-content-between align-items-center bg-primary bg-opacity-10 rounded p-2 position-relative">
                                    <h6 class="m-0 text-primary">개발자노동보호법</h6>
                                    <a href="#" class="badge bg-primary stretched-link">19</a>
                                </div>
                                <div class="d-flex justify-content-between align-items-center bg-success bg-opacity-10 rounded p-2 position-relative">
                                    <h6 class="m-0 text-success">로또</h6>
                                    <a href="#" class="badge bg-success stretched-link">35</a>
                                </div>
                            </div>
                            <!-- 인기정치게시글 -->
                            <div>
                                <h5 class="mt-5 mb-3">인기<span style="color:#2163E8">정치</span>게시글</h5>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">01</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">정치정치조정치</a></h6>
                                </div>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">02</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">큰일이다 이게 한줄밖에 안되면 저렇게 보이네 어떡하지 제목을 보이게 하면 짧을텐데</a></h6>
                                </div>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">03</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">영어는 좋겠다 별거 안써도 길어보이고 한글만세 세종대왕 만만세</a></h6>
                                </div>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">04</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">10 facts about business that will instantly put you in a good mood</a></h6>
                                </div>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">05</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">How did we get here? The history of the business told through tweets</a></h6>
                                </div>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">06</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">Ten tips about startups that you can't learn from books</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 오른쪽 사이드바 끝 -->
                </div>
            </div>
        </section>
        <!-- ======================= Main END -->

        <!-- ======================= Sticky post START -->
        <div class="sticky-post bg-light border p-4 mb-5 text-sm-end rounded d-none d-xxl-block">
            <div class="d-flex align-items-center">
                <!-- Title -->
                <div class="me-3">
                    <span>다음 게시글 보기<i class="bi bi-arrow-right ms-3 rtl-flip"></i></span>
                    <h6 class="m-0"> <a href="javascript:void(0)" class="stretched-link btn-link text-reset">오늘 너무 재미난 일이 있었는데 무슨일이었냐면</a></h6>
                </div>
                <!-- image -->
                <div class="col-4 d-none d-md-block">
                    <img src="resources/resources1b/images/blog/4by3/05.jpg" alt="Image">
                </div>
            </div>
        </div>
        <!-- ======================= Sticky post END -->

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