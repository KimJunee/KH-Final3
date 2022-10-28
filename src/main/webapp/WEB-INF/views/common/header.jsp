<%@page import="com.kh.realfinal.member.model.vo.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | 신속하고 정확한 금융지식전달을 위해 노력합니다. </title>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Bootstrap based News, Magazine and Blog Theme">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">

    <!-- Google Font Noto Sans 노토산스-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources1b/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources1b/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources1b/vendor/tiny-slider/tiny-slider.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources1b/vendor/plyr/plyr.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources1b/vendor/apexcharts/css/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources1b/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">
    
    <!-- 차트제이에스 chart.js css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">

    <!-- Theme CSS -->
    <link id="style-switch" rel="stylesheet" type="text/css" href="${path}/resources/resources1b/css/style.css">
</head>

<body>
    <header class="navbar-sticky-sp header-static bg-dark navbar-nav-sp nav-link-sp mice">
        <!-- 네비게이션 시작-->
        <nav class="navbar navbar-expand-sm navbar-nav-sp nav-link-sp">
            <div class="container ">
                <!-- 로고 시작 -->
                <a class="navbar-brand navbar-nav-sp nav-link-sp" href="${path}/main.do" style="margin-top:-5px">
                    <img class="navbar-brand-item light-mode-item " src="${path}/resources/resources1b/images/01_main/logo_white.png" alt="logo ">
                    <img class="navbar-brand-item dark-mode-item " src="${path}/resources/resources1b/images/01_main/logo_white.png" alt="logo ">
                </a>
                <!-- 로고 끝-->
                <!-- 메뉴 시작 -->
                <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="text-body h1 d-none d-sm-inline-block ">Menu</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- 메인 네비바 시작 -->
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav navbar-nav-scroll mx-auto ">
                        <!-- <li class="nav-item "> -->
                        <a class="nav-link-sp active " href="${path}/main.do" id="homeMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">Home</a>

                        <!-- 금융 메뉴 시작-->
                        <li class="nav-item dropdown">
                            <a class="nav-link-sp  " href="${path}/stockprice/fin_main.do" id="postMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">금융</a>
                            <ul class="dropdown-menu bg-dark text-white" aria-labelledby="postMenu">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item  text-white" href="${path}/stockprice/fin_main.do"> 금융메인</a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="${path}/stockprice/fin_kospiDetail.do">오늘의 KOSPI <span class="badge bg-danger smaller me-1">New</span></a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="${path}/stockprice/fin_kosdaqDetail.do">오늘의 KOSDAQ  <span class="badge bg-danger smaller me-1">New</span></a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="${path}/finance/productMain">금융상품안내</a> </li>
                                <li class="dropdown-divider text-white"></li>
                                <li> <a class="dropdown-item text-white" href="${path}/board/list?type=3">금융Talk  <span class="badge bg-danger smaller me-1">New</span></a> </li>
                            </ul>
                        </li>
                        <!-- 금융 메뉴 끝-->

                        <!-- 부동산청약 메뉴 시작 -->
                        <li class="nav-item dropdown ">
                            <a class="nav-link-sp  " href="${path}/realEstate/main" id="postMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">부동산청약</a>
                            <ul class="dropdown-menu bg-dark text-white" aria-labelledby="postMenu ">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item text-white" href="${path}/realEstate/main">청약메인</a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="${path}/realEstate/calendar">청약캘린더 <span class="badge bg-danger smaller me-1">New</span></a> </li>
                                <li> <a class="dropdown-item text-white" href="${path}/realEstate/list">청약상세조회</a> </li>
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item text-white" href="${path}/realEstate/notice">청약공지사항</a>
                                </li>
                                <li class="dropdown-divider text-white"></li>
                                <li> <a class="dropdown-item text-white" href="${path}/board/list?type=2">부동산Talk  <span class="badge bg-danger smaller me-1">New</span></a> </li>
                            </ul>
                        </li>
                        <!-- 부동산청약 메뉴 끝 -->

                        <!-- 정치 메뉴 시작-->
                        <li class="nav-item dropdown ">
                            <a class="nav-link-sp " href="${path}/politics/cardCut" id="pagesMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">정치</a>
                            <ul class="dropdown-menu bg-dark" aria-labelledby="pagesMenu ">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item text-white" href="${path}/politics/cardCut">카드한컷 <span class="badge bg-danger smaller me-1">New</span></a>
                                </li>
                                <li> <a class="dropdown-item text-white" href="${path}/politics/polGovInfo">정부부처소개</a> </li>
                                <li> <a class="dropdown-item text-white" href="${path}/politics/polMnaList">제21대 국회의원현황</a> </li>
                                <li> <a class="dropdown-item text-white" href="https://www.epeople.go.kr/index.jsp">국민신문고 <i class="bi bi-box-arrow-up-right"></i></a> </li>
                                <li class="dropdown-divider text-white"></li>
                                <li> <a class="dropdown-item text-white" href="${path}/board/list?type=1">정치Talk <span class="badge bg-danger smaller me-1">New</span></a> </li>
                            </ul>
                        </li>
                        <!-- 정치 메뉴 끝-->

                        <!-- 뉴스 메뉴 시작 -->
                        <li class="nav-item "> <a class="nav-link-sp" href="${path}/news/main">뉴스</a></li>
                        <!-- 뉴스 메뉴 끝  -->

                        <!-- 오피니언 메뉴 시작 -->
                        <li class="nav-item "> <a class="nav-link-sp" href="${path}/opinion">오피니언</a></li>
                        <!-- 오피니언 메뉴 끝 -->

                        <!-- 커뮤니티 메뉴 시작 -->
                        <li class="nav-item dropdown">
                            <a class="nav-link-sp " href="${path}/board/communityMain" id="postMenu " data-bs-toggle="dropdown " aria-haspopup="true " aria-expanded="false ">커뮤니티</a>
                            <ul class="dropdown-menu bg-dark text-white" aria-labelledby="postMenu ">
                                <!-- dropdown submenu -->
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item text-white" href="${path}/board/communityMain">커뮤니티메인</a></li>
                                <li class="dropdown-submenu dropend text-white">
                                    <a class="dropdown-item text-white" href="${path}/board/list?type=1">정치Talk 
                                    	<span class="badge bg-danger smaller me-1">New</span></a></li>
                                <li> <a class="dropdown-item text-white" href="${path}/board/list?type=3">금융Talk 
                                	<span class="badge bg-danger smaller me-1">New</span></a></li>
                                <li> <a class="dropdown-item text-white" href="${path}/board/list?type=2">부동산Talk 
                                	<span class="badge bg-danger smaller me-1">New</span></a></li>
                                <!-- <li class="dropdown-divider text-white"></li> -->
                                <li> <a class="dropdown-item text-white" href="${path}/board/list?type=4"> 자유Talk 
                                	<span class="badge bg-danger smaller me-1">New</span></a></li>
                            </ul>
                        </li>
                        <!-- 커뮤니티메뉴 끝-->
                    </ul>
                </div>
                <!-- 메인 네비바 끝 -->
                <!-- 네비바 오른쪽 아이콘들 시작-->
                <div class="nav flex-nowrap align-items-center">
                	<c:if test="${!empty loginMember}">
                	<a class="nav-link-sp" style="font-size: 15px; color: white;">${loginMember.user_name} 님 환영합니다!</a>
                    </c:if>
                    <!-- 마이페이지 아이콘 -->
                    <div class="nav-item ">
                    <c:if test="${empty loginMember}">
                    	<i class="bi bi-person-square fs-4" style="display: none;"></i>
                    </c:if>
                    <c:if test="${!empty loginMember}">
                        <a class="nav-link-sp" href="${path}/member/view" >
                            <i class="bi bi-person-square fs-4 "></i>
                        </a>
                    </c:if>
                    </div>
                    
                    <!-- 로그인 버튼 -->
                    <div class="nav-item d-none d-md-block ">
                    <c:if test="${empty loginMember}">
                    	<a href="${path}/mypage/signIn" class="btn btn-sm btn-danger mb-0 mx-2 ">Sign In</a>
                    </c:if>
                    <c:if test="${!empty loginMember}">
                    	<a href="${path}/logout" class="btn btn-sm btn-danger mb-0 mx-2 ">Sign Out</a>
                    </c:if>
                    </div>
                </div>
                <!-- 네비바 오른쪽 아이콘들 끝-->
            </div>
            <!-- 로고 네비 끝-->
        </nav>
    </header>
</body>
</html>