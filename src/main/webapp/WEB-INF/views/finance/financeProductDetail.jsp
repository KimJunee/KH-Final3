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
        width: 45%;
        float: left;
        box-sizing: border-box;
        /* background: #8977ad; */
    }
    
    div.right {
        width: 45%;
        float: right;
        box-sizing: border-box;
        /* background: #ece6cc; */
    }
    /* 레이아웃분할css 끝 */
</style>
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
    <title>FinTouch | FinancialProduct | Detail</title>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Bootstrap based News, Magazine and Blog Theme">

    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
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

    <!-- 차트제이에스 chart.js css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">

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

    <!-- **************** 금융상품 상세 시작 **************** -->
    <main>
        <section class="container mt-5 pt-5 pb-lg-5">
            <div class="row gy-5 pt-lg-2">
                <div class="col-lg-7">
                    <div class="d-flex flex-column">
                        <!-- Page title + Features-->
                        <div class="row">
                            <div class="col-9">
                                <h1 class="h2 mb-2">KB내맘대로적금</h1>
                                <p class="mb-2 pb-1 fs-lg"> &nbsp; - 가입대상 : 실명의 개인 또는 개인사업자<br> &nbsp; - 가입방법 : 인터넷, 스마트폰<br> &nbsp; - 최고한도 : 없음</p>
                            </div>
                            <div class="col-3">
                                <img src="resources/resources1b/images/03_financePro/kbBank.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <hr>
                    <h2 class="h5">유의사항</h2>
                    <p class="mb-4 pb-2">&nbsp; ※ 이 금융상품을 가입하시기 전에 상품설명서 및 약관을 읽어보시기 바랍니다.<br>&nbsp; ※ 금융소비자는 해당 상품 또는 서비스에 대하여 설명받을 권리가 있습니다.<br> &nbsp; ※ 만기 전 해지할 경우 계약에서 정한 이율보다 낮은 중도해지이율이 적용됩니다.</p>
                    <h2 class="h5">은행별 최고 우대금리</h2>
                    <div class="card-body col-lg-15 p-4 rounded-3 border border-1 mb-5">
                        <div class="card-body">
                            <canvas id="rate-chart" width="400" height="120"> </canvas>
                        </div>
                        <script>
                            new Chart(document.getElementById("rate-chart"), {
                                type: 'bar',
                                data: {
                                    width: [100],
                                    height: [100],
                                    labels: ["국민은행", "신한은행", "우리은행", "중소기업은행", "농협은행", "SC은행"],
                                    datasets: [{
                                        label: "최고우대금리(소수점 두자리)",
                                        backgroundColor: ["#0CBC87", "#0CBC87", "#0CBC87", "#0CBC87", "#0CBC87", "#0CBC87"],
                                        data: [4.4, 5.5, 4.25, 6.5, 6.15, 3.1]
                                    }]
                                },
                                options: {
                                    title: {
                                        display: true,
                                        text: '연령별의원현황'
                                    }
                                }
                            });
                        </script>
                    </div>

                    <h2 class="h5">Financial Advisors</h2>
                    <div class="card col-lg-15 p-2 rounded-3 border border-1">
                        <div class="card-body">
                            <div class="left rounded-circle">
                                <img src="resources/resources1b/images/03_financePro/woman.jpg" style="width:300px; height:250px">
                            </div>
                            <div class="right" style="width:300px; height:250px">
                                <p class="mb-4 mt-2"> 자본주의 사회에서 금융에 대해 이해하는 것은 필수입니다. 당장 무엇부터 알아야 할지, 어디부터 시작해야 할지 막막하다면 전문가와의 재무상담을 통해 계획을 세워보시기 바랍니다!</p>
                                <div class="d-flex justify-content-between">
                                    <div class="pe-3">
                                        <h6 class="mb-0">김태임 재무설계사</h6>
                                        <div class="text-secondary fw-normal fs-sm mb-3">KH자산관리법인</div>
                                        <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#">
                                            <i class="fab fa-facebook-square"></i>
                                        </a>
                                        <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#">
                                            <i class="fab fa-linkedin"></i>
                                        </a>
                                        <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#">
                                            <i class="fab fa-twitter-square"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 상품정보 details-->
                <aside class="col-lg-5">
                    <div class="ps-lg-5">
                        <div class="row">
                            <div class="col-8">
                                <div><span class="badge bg-success me-2 mb-2">Verified</span><span class="badge bg-info me-2 mb-2">New</span></div>
                                <h3 class="h5 mb-2">이율:</h3>
                                <h2 class="h3 mb-2 pb-2">최저 1.95 ~ 최고 3.05 </h2>
                            </div>
                            <div class="col-4">
                                <div class="avatar avatar-xl">
                                    <img class="mt-2 avatar-img rounded-circle" src="resources/resources1b/images/03_financePro/BankDetail.jpg" alt="avatar" style="margin-left: 20px;">
                                </div>
                            </div>
                        </div>
                        <div class="card border-0 bg-light mb-4">
                            <div class="card-body">
                                <h5 class="mb-0 pb-3">Preferential Conditions</h5>
                                <span>우대이율 최고 연1.3%p <br>- 가족사랑 우대이율 : 연0.2%p <br>- 자동이체 우대이율 : 연0.1%p <br>- 아동수당 우대이율 : 연0.1%p <br>- 주택청약종합저축 우대이율 : 최고 연0.4%p <br>- 우리아이 성장축하/지문등록 우대이율 : 연0.5%p</span>
                            </div>
                        </div><a class="btn btn-lg btn-primary w-100 mb-3" href="#">♥ Like This Financial Product</a><a class="d-inline-block mb-4 pb-2 text-decoration-none" href="#"><i class="fi-help me-2 mt-n1 align-middle"></i>목록으로 돌아가기</a>
                        <div class="card border-0 bg-light mb-4">
                            <div class="card-body">
                                <h5>Post-Maturity Interest Rates</h5>
                                <span>- 1개월 이내 : 기본이율 X 50% <br>- 1개월 초과 ~ 3개월 이내 : 기본이율 X 30% <br>- 3개월 초과 : 0.1%</span>
                            </div>
                        </div>
                        <div class="card border-0 bg-light mb-4">
                            <div class="card-body">
                                <h5>Not included in rent</h5>
                                <span>- 금리유형 : 단리</span><br>
                                <span>- 적립유형 : 정액적립식</span><br>
                                <span>- 저축기간 : 6 ~ 36개월</span><br>
                                <span>- 최고우대금리 : 3.05%</span><br>
                                <span>- 기타 유의사항 : 인터넷뱅킹/KB스타뱅킹 전용상품</span>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </section>

        <section class="py-1 mb-5">
            <div class="container">
                <div class="row g-4 mb-2">
                    <div class="col-12" style="margin-left: 10px;">
                        <h3 class="mb-0">최고금리상품</h3>
                    </div>
                </div>
                <div class="row g-4">
                    <div class="col-md-6 col-xl-3" style="height: 80px;">
                        <!-- 최고금리상품 START -->
                        <div class="card border">
                            <!-- 상품명 -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img" src="resources/resources1b/images/03_financePro/nhBank.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">NH1934월복리적금</h5>
                                </div>
                            </div>

                            <!-- 상품정보 -->
                            <div class="card-body" style="padding-left:0px;">
                                <ul>
                                    <li>가입대상 : 만19세~만34세 개인 및 개인사업자</li>
                                    <li>저축기간 : 24개월</li>
                                    <li>적립유형 : 자유적립식</li>
                                </ul>
                                <div class="d-flex justify-content-end">
                                    <div>
                                        <h4 class="mb-0">6.15%</h4>
                                    </div>
                                </div>
                            </div>
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
                                            <img class="avatar-img" src="resources/resources1b/images/03_financePro/wcBank.png" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">웰뱅 든든적금</h5>
                                </div>
                            </div>

                            <!-- Card body START -->
                            <div class="card-body" style="padding-left:0px;">
                                <ul>
                                    <li>가입대상 : 만 19세 이상 실명의 개인</li>
                                    <li>저축기간 : 6개월</li>
                                    <li>적립유형 : 정액적립식</li>
                                </ul>
                                <div class="d-flex justify-content-end">
                                    <div>
                                        <h4 class="mb-0">6.0%</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-xl-3">
                        <!-- Category item START -->
                        <div class="card border">
                            <!-- Card header -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img" src="resources/resources1b/images/03_financePro/kbBank.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">KB마이핏적금</h5>
                                </div>
                            </div>
                            <div class="card-body" style="padding-left:0px;">
                                <ul>
                                    <li>가입대상 : 만18세이상 ~ 만38세이하 실명의 개인</li>
                                    <li>저축기간 : 12개월</li>
                                    <li>적립유형 : 자유적립식</li>
                                </ul>
                                <div class="d-flex justify-content-end">
                                    <div>
                                        <h4 class="mb-0">4.4%</h4>
                                    </div>
                                </div>
                            </div>
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
                                            <img class="avatar-img" src="resources/resources1b/images/03_financePro/shinhanBank.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">신한 안녕,반가워적금</h5>
                                </div>
                            </div>
                            <div class="card-body" style="padding-left:0px;">
                                <ul>
                                    <li>가입대상 : 제한없음</li>
                                    <li>저축기간 : 12개월</li>
                                    <li>적립유형 : 자유적립식</li>
                                </ul>
                                <div class="d-flex justify-content-end">
                                    <div>
                                        <h4 class="mb-0">4.8%</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
                            </div>
                        </div>
                        <!-- Category item END -->
                    </div>
                </div>
        </section>
    </main>

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
                        <div><a href="# " class="badge text-bg-danger mb-2 "><i
class="fas fa-circle me-2 small fw-bold "></i>Finance</a></div>
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
    <div class="back-top "><i class="bi bi-arrow-up-short "></i></div>

    <!-- =======================
JS libraries, plugins and custom scripts -->

    <!-- Bootstrap JS -->
    <script src="resources/resources1b/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Template Functions -->
    <script src="resources/resources1b/js/functions.js"></script>

</body>

</html>