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

<!-- 파인더 스타일 -->
<style>
    .password-toggle {
        position: relative;
    }
    
    .password-toggle .form-control {
        padding-right: 3rem;
    }
    
    .password-toggle-btn {
        position: absolute;
        top: 50%;
        right: 0.625rem;
        margin-bottom: 0;
        padding: 0.5rem;
        transform: translateY(-50%);
        font-size: 1rem;
        line-height: 1;
        cursor: pointer;
    }
    
    .password-toggle-btn .password-toggle-indicator {
        transition: color 0.2s ease-in-out;
        color: #9691a4;
        font-family: "finder-icons";
        font-size: 1.125em;
        font-style: normal;
    }
    
    .password-toggle-btn .password-toggle-indicator::before {
        content: "\e972";
    }
    
    .password-toggle-btn .password-toggle-indicator:hover {
        color: #454056;
    }
    
    .password-toggle-btn .password-toggle-check {
        position: absolute;
        left: 0;
        z-index: -1;
        width: 1rem;
        height: 1.25rem;
        opacity: 0;
    }
    
    .password-toggle-btn .password-toggle-check:checked~.password-toggle-indicator::before {
        content: "\e971";
    }
    
    .form-control-light+.password-toggle-btn .password-toggle-indicator {
        color: rgba(255, 255, 255, 0.5);
    }
    
    .form-control-light+.password-toggle-btn .password-toggle-indicator:hover {
        color: #fff;
    }
    
    .was-validated .password-toggle .form-control:invalid,
    .was-validated .password-toggle .form-control.is-invalid,
    .was-validated .password-toggle .form-control:valid,
    .was-validated .password-toggle .form-control.is-valid {
        padding-right: 4rem;
    }
    
    .was-validated .password-toggle .form-control:invalid+.password-toggle-btn,
    .was-validated .password-toggle .form-control.is-invalid+.password-toggle-btn,
    .was-validated .password-toggle .form-control:valid+.password-toggle-btn,
    .was-validated .password-toggle .form-control.is-valid+.password-toggle-btn {
        right: 2.1rem;
    }
    
    @font-face {
        font-family: "finder-icons";
        src: url("resources/resources1b/fonts/finder-icons.ttf?7648j3") format("truetype"), url("resources/resources1b/fonts/finder-icons.woff?7648j3") format("woff"), url("resources/resources1b/fonts/finder-icons.svg?7648j3#finder-icons") format("svg");
        font-weight: normal;
        font-style: normal;
        font-display: block;
    }
    
    [class^=fi-],
    [class*=" fi-"] {
        display: inline-block;
        /* use !important to prevent issues with browser extensions that change fonts */
        font-family: "finder-icons" !important;
        font-style: normal;
        font-weight: normal;
        font-variant: normal;
        text-transform: none;
        vertical-align: middle;
        line-height: 1;
    }
    
    .fi-edit:before {
        content: '\e96e';
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
        background-color: #2163e8;
        content: "";
    }
    
    .card-nav-link:hover {
        color: #2163e8;
    }
    
    .card-nav-link.active {
        color: #2163e8;
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
    
    .d-md-block {
        display: block !important;
    }
    
    .card[data-bs-toggle=collapse] {
        transition: border-color 0.2s ease-in-out, background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
        cursor: pointer;
    }
    
    .card[data-bs-toggle=collapse] .card-title {
        transition: color 0.25s ease-in-out;
    }
    
    .card[data-bs-toggle=collapse].collapsed .card-title {
        color: #454056;
    }
    
    .card[data-bs-toggle=collapse]:not(.collapsed) {
        background-color: #fff !important;
        box-shadow: 0 0.125rem 0.125rem -0.125rem rgba(31, 27, 45, 0.08), 0 0.25rem 0.75rem rgba(31, 27, 45, 0.08);
    }
    
    .card[data-bs-toggle=collapse]:not(.collapsed) .card-title {
        color: #2163e8;
    }
    
    .navbar-collapse {
        flex-basis: 100%;
        flex-grow: 1;
        align-items: center;
    }
    
    .navbar-toggler {
        padding: 0.5rem 0.75rem;
        font-size: 1rem;
        line-height: 1;
        background-color: transparent;
        border: 1px solid transparent;
        border-radius: 0;
        transition: box-shadow 0.15s ease-in-out;
    }
    
    .page-loading {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        -webkit-transition: all .4s .2s ease-in-out;
        transition: all .4s .2s ease-in-out;
        background-color: #fff;
        opacity: 0;
        visibility: hidden;
        z-index: 9999;
    }
    
    .page-loading.active {
        opacity: 1;
        visibility: visible;
    }
    
    .page-loading-inner {
        position: absolute;
        top: 50%;
        left: 0;
        width: 100%;
        text-align: center;
        -webkit-transform: translateY(-50%);
        transform: translateY(-50%);
        -webkit-transition: opacity .2s ease-in-out;
        transition: opacity .2s ease-in-out;
        opacity: 0;
    }
    
    .page-loading.active>.page-loading-inner {
        opacity: 1;
    }
    
    .page-loading-inner>span {
        display: block;
        font-size: 1rem;
        font-weight: normal;
        color: #666276;
        ;
    }
    
    .page-spinner {
        display: inline-block;
        width: 2.75rem;
        height: 2.75rem;
        margin-bottom: .75rem;
        vertical-align: text-bottom;
        border: .15em solid #bbb7c5;
        border-right-color: transparent;
        border-radius: 50%;
        -webkit-animation: spinner .75s linear infinite;
        animation: spinner .75s linear infinite;
    }
    
    @-webkit-keyframes spinner {
        100% {
            -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
        }
    }
    
    @keyframes spinner {
        100% {
            -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
        }
    }
</style>
<script>
    (function() {
        window.onload = function() {
            var preloader = document.querySelector('.page-loading');
            preloader.classList.remove('active');
            setTimeout(function() {
                preloader.remove();
            }, 2000);
        };
    })();
</script>

<head>
    <title>FinTouch | My Page | Personal Info</title>

    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Bootstrap based News, Magazine and Blog Theme">
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>

    <!-- Google Font 노토산즈 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/apexcharts/css/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/tiny-slider/tiny-slider.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/plyr/plyr.css">

    <!-- Theme CSS -->
    <link id="style-switch" rel="stylesheet" type="text/css" href="resources/resources1b/css/style.css">
    <!-- <link rel="stylesheet" media="screen" href="resources/resources1b/css/theme.min.css"> -->
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
                                                    <h6 class="card-title mb-0 "><a href="# " class="btn-link text-reset fw-bold ">Skills that you can learn from business</a></h6>
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
        <section class="bg-dark-overlay-1" style="background-image:url(resources/resources1b/images/finance01.jpg); background-position: center left; background-size: cover; height: 300px;">
            <div class="container">
                <div class="row mt-0">
                    <div class="col-lg-8 py-md-5 my-lg-0">
                        <a href="#" class="badge text-bg-mypage mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>MyPage</a>
                        <h1 class="text-black">마이페이지</h1>
                    </div>
                </div>
            </div>
        </section>
        <!-- ======================= Main contain START -->
        <section class="py-4">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 d-sm-flex justify-content-between align-items-center">
                        <div class="col-4"></div>
                        <div class="col-8 mb-1" style="margin-left:20px;">
                            <h3 class="mb-2 mb-sm-0"><i class="fa fa-solid fa-user"></i>&nbsp;Personal Info</h3>
                        </div>
                    </div>
                    <div class="col-4 mb-0">
                        <aside class="pe-xl-4 mb-5">
                            <!-- 왼쪽 사이드바 -->
                            <div class="card border card-body shadow-sm pb-1 me-lg-1">
                                <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-2"><img class="" src="resources/resources1b/images/favicon.ico" width="48" alt="Annette Black">
                                    <div class="pt-md-2 pt-lg-0 ps-3 ps-md-0 ps-lg-3">
                                        <h2 class="fs-lg mb-0" style="margin-left: 10px;">탬버리이인</h2>
                                        <ul class="list-unstyled fs-sm mt-1 mb-0">
                                            <li>
                                                <a class="nav-link fw-normal p-0" href="mailto:annette_black@email.com">
                                                    <i class="fi-mail opacity-60 me-2"></i>rlaxodla91@email.com</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <a class="btn btn-primary btn-lg w-100 mb-2 fw-bold" href="real-estate-add-property.html">+ 게시글 작성하기</a>
                                <div class="collapse d-md-block mt-0 fw-bold" id="account-nav">
                                    <div class="card-nav">
                                        <a class="card-nav-link active" href="real-estate-account-info.html"><i class="fa fa-solid fa-user" style="margin-right:10px; margin-left: 10px;"></i>회원정보</a>
                                        <a class="card-nav-link" href="real-estate-account-security.html"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link" href="real-estate-account-properties.html"><i class="fa fa-solid fa-building" style="margin-right:10px; margin-left: 10px;"></i>청약부동산</a>
                                        <a class="card-nav-link" href="real-estate-account-wishlist.html"><i class="fa fa-solid fa-bookmark" style="margin-right:10px; margin-left: 10px;"></i>뉴스 스크랩</a>
                                        <a class="card-nav-link" href="real-estate-account-reviews.html"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link" href="real-estate-account-notifications.html"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 회원정보수정 -->
                    <div class="col-8 mb-0">
                        <form class="needs-validation pb-4 mb-0" style="padding-bottom: 0px;" novalidate>
                            <!-- Blog list table START -->
                            <div class="border rounded-3 p-3 mb-2" id="personal-info">
                                <!-- ID -->
                                <div class="border-bottom pb-3 mb-3">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="pe-2">
                                            <label class="form-label fw-bold">ID</label>
                                            <div id="name-value">test01</div>
                                        </div>
                                    </div>
                                    <div class="collapse" id="name-collapse" data-bs-parent="#personal-info">
                                        <input class="form-control mt-3" type="text" data-bs-binded-element="#name-value" data-bs-unset-value="Not specified" value="Annette Black">
                                    </div>
                                </div>
                                <!-- 닉네임 -->
                                <div class="border-bottom pb-3 mb-3">
                                    <div class="col-12 d-flex align-items-center justify-content-between">
                                        <div class="col-11 pe-2">
                                            <label class="form-label fw-bold">닉네임</label>
                                            <div id="gender-value">탬버리이인</div>
                                        </div>
                                        <div class="col-1 me-n3" data-bs-toggle="tooltip" title="Edit"><a style="margin-left: 10px;" class="nav-link py-0" href="#gender-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                                    </div>
                                    <div class="collapse" id="gender-collapse" data-bs-parent="#personal-info">
                                        <div class="input-group mt-3">
                                            <input class="form-control date-picker rounded pe-5" type="text" data-bs-binded-element="#birth-value" data-datepicker-options="{&quot;altInput&quot;: true, &quot;altFormat&quot;: &quot;F j, Y&quot;, &quot;dateFormat&quot;: &quot;F j, Y&quot;}" placeholder="수정할 닉네임">
                                            <i class="fi-calendar text-muted position-absolute top-50 end-0 translate-middle-y me-3"></i>
                                        </div>
                                    </div>
                                </div>
                                <!-- Email -->
                                <div class="border-bottom pb-3 mb-3">
                                    <div class="col-12 d-flex align-items-center justify-content-between">
                                        <div class="col-11 pe-2">
                                            <label class="form-label fw-bold">Email</label><a href="">&nbsp;&nbsp;&nbsp;이메일 인증을 해주세요.</a>
                                            <div id="email-value">rlaxodla91@email.com</div>
                                        </div>
                                        <div class="col-1 me-n3" data-bs-toggle="tooltip" title="Edit">
                                        	<a style="margin-left: 10px;" class="nav-link py-0" href="#email-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a>
                                        </div>
                                    </div>
                                    <div class="collapse" id="email-collapse" data-bs-parent="#personal-info">
                                        <input class="form-control mt-3" type="email" data-bs-binded-element="#email-value" data-bs-unset-value="Not specified" value="rlaxodla91@email.com">
                                    </div>
                                </div>
                                <!-- 현재 비밀번호 -->
                                <div class="border-bottom d-flex align-items-center justify-content-between">
                                    <div class="col-12 mb-3">
                                        <label class="form-label fw-bold" for="account-password">현재 비밀번호</label><a class="d-inline-block mb-2" href="#">&nbsp;&nbsp;&nbsp;비밀번호를 잊었어요.</a>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" id="account-password" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                                <input class="password-toggle-check" type="checkbox">
                                                <span class="password-toggle-indicator"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- 변경할 비밀번호 -->
                                <div class="border-bottom d-flex align-items-center justify-content-between">
                                    <div class="col-12 mb-3 mt-3">
                                        <label class="form-label fw-bold" for="account-password-new">변경할 비밀번호</label>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" id="account-password-new" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                                <input class="password-toggle-check" type="checkbox">
                                                <span class="password-toggle-indicator"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- 비밀번호 확인 -->
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="col-12 mb-4 mt-3">
                                        <label class="form-label fw-bold" for="account-password-confirm">비밀번호 확인</label>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" id="account-password-confirm" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                                <input class="password-toggle-check" type="checkbox">
                                                <span class="password-toggle-indicator"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-outline-primary mb-0" type="submit">회원정보 변경</button>
                            </div>
                        </form>
                        <!-- Blog list table END -->
                        <!-- 회원탈퇴 -->
                        <div>
                            <div class="col-12 d-sm-flex justify-content-between align-items-center">
                                <div class="col-8 mb-1" style="margin-left:20px;">
                                    <h3 class="mb-2 mb-sm-0"><i class="fa fa-solid fa-user-slash"></i>&nbsp;Resign</h3>
                                </div>
                            </div>
                            <div class="col-12 mb-0" style="float: right;">
                                <form class="needs-validation pb-4 mb-0" style="padding-bottom: 0px;" novalidate>
                                    <!-- Blog list table START -->
                                    <div class="border rounded-3 p-3 mb-2" id="personal-info">
                                        <!-- 비밀번호 확인 -->
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="col-12 mb-4 mt-3">
                                                <label class="form-label fw-bold" for="account-password-confirm">비밀번호 확인</label>
                                                <div class="password-toggle">
                                                    <input class="form-control" type="password" id="account-password-confirm" required>
                                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                                        <input class="password-toggle-check" type="checkbox">
                                                        <span class="password-toggle-indicator"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn btn-outline-primary mb-0" type="submit">회원탈퇴</button>
                                    </div>
                                </form>
                            </div>
                            <!-- 회원탈퇴 끝 -->
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
        </div>
    </footer>
    <!-- ====================== 푸터 끝 ======================= -->

    <!-- Back to top -->
    <div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

    <!-- ======================= JS libraries, plugins and custom scripts -->
    <script>
        const passwordVisibilityToggle = (() => {

            let elements = document.querySelectorAll('.password-toggle');

            for (let i = 0; i < elements.length; i++) {
                let passInput = elements[i].querySelector('.form-control'),
                    passToggle = elements[i].querySelector('.password-toggle-btn');

                passToggle.addEventListener('click', (e) => {

                    if (e.target.type !== 'checkbox') return;
                    if (e.target.checked) {
                        passInput.type = 'text';
                    } else {
                        passInput.type = 'password';
                    }

                }, false);
            }
        })();

        // export default passwordVisibilityToggle;
    </script>

    <!-- Bootstrap JS -->
    <script src="resources/resources1b/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="resources/resources1b/vendor/apexcharts/js/apexcharts.min.js"></script>
    <script src="resources/resources1b/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

    <!-- Template Functions -->
    <script src="resources/resources1b/js/functions.js"></script>

</body>

</html>