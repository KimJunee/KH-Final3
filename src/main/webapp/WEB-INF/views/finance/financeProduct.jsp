<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | FinanceProduct | Detail</title>
        <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
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
		                                        <p class="mb-1 h5 fw-light lead">회원님께 안성맞춤인 
		                                        <br>금융정보를 원하시나요?</p>
		                                        <a href="#" class="btn btn-primary mb-0 mt-2" style="margin-left: 20px;">View Information</a>
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
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </section>
		    </main>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>