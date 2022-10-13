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
    <!-- **************** 메인컨텐츠 시작 **************** -->
    <main>
        <div class="tiny-slider arrow-hover arrow-blur arrow-round position-relative ">
            <!-- <section> -->
            <!-- <div class="container"> -->
            <div class="tiny-slider arrow-hover arrow-blur arrow-round position-relative">
                <div class="tiny-slider-inner" data-autoplay="false" data-hoverpause="true" data-gutter="2" data-arrow="false" data-dots="true" data-items="1">
                    <!-- Slide item -->
                    <div class="card bg-dark-overlay-4 rounded-0 h-400 h-lg-500 h-xl-700 position-relative overflow-hidden " style="background-image:url(${path}/resources/resources1b/images/01_main/finance_1.jpeg); background-position: center left; background-size: cover;">
                        <!-- Card Image overlay -->
                        <div class="card-img-overlay rounded-0 d-flex align-items-center ">
                            <div class="container px-3 my-auto ">
                                <div class="row">
                                    <div class="col-lg-11">
                                        <div class="col-lg-11 text-white mb-3 ">
                                            <h5 class="text-white mice">Finance &nbsp;+&nbsp; Technology&nbsp; + &nbsp;Touch</h5>
                                        </div>
                                        <h1 class="text-white mice">한 손에 잡히는 경제지식</h1>
                                        <div class=" ">
                                            <p class="lead text-white mice ">FinTouch는 올바른 금융 지식 습득을 위한 정치 · 경제 · 금융 · 부동산 정보를<br>한번에 볼 수 있는 금융포털커뮤니티 사이트입니다. </p>
                                        </div>
                                        <div class="d-md-flex align-items-center mt-4 ">
                                            <!-- <h5 class="text-white me-3 ">Share on: </h5> -->
                                            <a type="button " class="btn btn-outline-white" href="02_fin_main.html">S T A R T &nbsp;&nbsp; E X P L O R I N G&nbsp;&nbsp;  F I N A N C E &nbsp;&nbsp; > </a>
                                        </div>

                                        <!-- Custom thumb START -->
                                        <div class="col-xl-4 pe-5 position-absolute top-50 end-0 translate-middle-y d-none d-xxl-block x " id="custom ">
                                            <!-- Thumb 1 -->
                                            <div class="row align-items-center g-3 mb-4 ">
                                                <div class="col-auto ">
                                                    <div class="avatar avatar-lg avatar-img rounded-circle bg-light bg-opacity-50 ">
                                                        <i class="bi bi-bar-chart-line text-center opacity-60" style="font-size: 40px; text-align: center; margin-left: 10px;"></i>
                                                    </div>
                                                </div>
                                                <div class="col-8 ">
                                                    <a href="02_fin_main.html" class="badge text-bg-danger mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Finance</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white ">
                                                        <a href="02_fin_main.html" class="btn-link text-reset fw-bold">오늘의 주식시장을 확인해보세요!</a></h4>
                                                </div>
                                            </div>
                                            <!-- Thumb 2 -->
                                            <div class="row align-items-center g-3 mb-4  " data-autoplay="false " data-hoverpause="true " data-gutter="0 " data-arrow="true " data-dots="false " data-items="1 ">
                                                <div class="col-auto ">
                                                    <div class="avatar avatar-lg avatar-img rounded-circle bg-light bg-opacity-50 ">
                                                        <i class="bi bi-building text-center opacity-70" style="font-size: 40px; text-align: center; margin-left: 10px;"></i>
                                                    </div>
                                                </div>
                                                <div class="col-8 ">
                                                    <a href="03_reales_main.html " class="badge text-bg-warning mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Real Estate</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white "><a href="03_reales_main.html " class="btn-link text-reset fw-bold ">주거고민이 있으신가요?</a></h4>
                                                </div>
                                            </div>
                                            <!-- Thumb 3 -->
                                            <div class="row align-items-center g-3 ">
                                                <div class="col-auto ">
                                                    <div class=" avatar-lg rounded-circle bg-light bg-opacity-50 ">
                                                        <i class="fa fa-solid fa-pen-nib text-center opacity-70 " style="font-size: 37px; text-align: center; margin-left: 12px; margin-top: 12px;" src="assets/images/01_main/main_opi_01.jpg "></i>
                                                    </div>
                                                </div>
                                                <div class="col-8 ">
                                                    <a href="06_opinion.html " class="badge text-bg-success mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Opinion</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white "><a href="06_opinion.html " class="btn-link text-reset fw-bold ">각 분야 전문가들의 기고/칼럼</a></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Custom thumb END -->
                </div>
                <!-- ======================= Inner intro END -->
                <!-- 지수님 여기서부터 작업하시면 됩니다!!! 그래프자리 -->
                <section style="margin-top: -10px; margin-bottom: -20px;">
                    <div class="container" style="margin: top 50px;">
                        <div class="row">
                            <div class="col-1">
                                <h5 class="mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">KOSPI</h5>
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">2,215.54</h3>
                                <p class="mb-0 text-muted">
                                    <span class="text-danger me-2"><i class="mdi mdi-arrow-up-bold" style="color:red"></i>-12.24(-3.92%)</span>
                                </p>
                            </div>
                            <!-- <div class="col-1">
                            <div class="text-end">
                                <div id="new-leads-chart1" data-colors="#0acf97"></div>
                            </div>
                        </div> -->
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 30px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div>
                                    <!-- 하락장일때-->
                                </div>
                            </div>

                            <div class="col-1">
                                <h5 class="mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">KOSDAQ</h5>
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">695.70</h3>
                                <p class="mb-0 text-muted">
                                    <span style="color:rgb(2, 162, 16)"><i class="mdi mdi-arrow-up-bold" style="color:red"></i>+0.29(+0.85%)</span>
                                </p>
                            </div>
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 30px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <div id="basic-area2" class="apex-charts" data-colors="#008000"></div>
                                    <!-- 하락장일때-->
                                </div>
                            </div>
                            <div class="col-1" style="padding-right: 10px;">
                                <h5 class="mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">USD/KRW</h5>
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">1,439.65</h3>
                                <p class="mb-0 text-muted">
                                    <span class="text-danger me-2"><i class="mdi mdi-arrow-up-bold" style="color:red"></i>-6.24(-5.38%)</span>
                                </p>
                            </div>
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 20px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <div id="basic-area3" class="apex-charts" data-colors="#fa6767"></div>
                                    <!-- 하락장일때-->
                                </div>
                            </div>
                            <div class="col-1" style="padding-right: 10px;">
                                <h5 class=" mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">CNY/KRW</h5>
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">199.47</h3>
                                <p class="mb-0 text-muted">
                                    <span style="color:rgb(2, 162, 16)"><i class="mdi mdi-arrow-down-bold" style="font-weight: bold; font-size: 20px; color:rgb(56, 246, 72)"></i>+1.29(+3.38%)</span>
                                </p>
                            </div>
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 20px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <div id="basic-area4" class="apex-charts" data-colors="#008000"></div>
                                    <!-- 하락장일때-->
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <!-- 지수님 여기서부터 작업하시면 됩니다!!! 그래프 끝 -->

            <!-- ======================= 뉴스 시작 -->
            <section class="py-0 card-grid mb-4">
                <div class="container">
                    <div class="row">
                        <!-- Slider START -->
                        <div class="col-lg-7">
                            <div class="tiny-slider arrow-hover arrow-blur arrow-round rounded-3">
                                <div class="tiny-slider-inner" data-autoplay="false" data-hoverpause="true" data-gutter="0" data-arrow="true" data-dots="false" data-items="1">
                                    <div class="card card-overlay-bottom card-bg-scale h-400 h-lg-560 rounded-0" style="background-image:url(${path}/resources/resources1b/images/blog/16by9/07.jpg); background-position: center left; background-size: cover;">
                                        <!-- 왼쪽 위 큰 기사 1 -->
                                        <div class="card-img-overlay d-flex flex-column p-3 p-sm-5">
                                            <div class="w-100 mt-auto">
                                                <div class="col">
                                                    <!-- 카테고리 -->
                                                    <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                                    <!-- 기사제목 / 내용일부 -->
                                                    <h3 class="text-white display-6 mice"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-normal">	
                                                    BBC, 尹 '비속어 논란' 풍자에 이준석 "MBC 이상으로 대응해야 할텐데"</a></h3>
                                                    <p class="text-white">이준석 전 국민의힘 대표는 영국 BBC의 시사코미디 프로그램이 윤석열 대통령의 '비속어 논란'을 풍자한 것을 두고 "이제 당에서 영락없이 MBC에 대응한 …</p>
                                                    <!-- 작성일자 -->
                                                    <ul class="nav nav-divider text-white-force align-items-center d-none d-sm-inline-block">
                                                        <p class="nav-item">2022.10.04</p>
                                                        <p class="nav-item">14:59:48</p>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 왼쪽 위 큰 기사 2 -->
                                    <div class="card card-overlay-bottom card-bg-scale h-400 h-lg-560 rounded-0" style="background-image:url(${path}/resources/resources1b/images/blog/16by9/02.jpg); background-position: center left; background-size: cover;">
                                        <div class="card-img-overlay d-flex flex-column p-3 p-sm-5">
                                            <!-- 왼쪽 위 큰 기사 2 -->
                                            <div class="w-100 mt-auto">
                                                <div class="col">
                                                    <!-- 카테고리 -->
                                                    <a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                                    <!-- 기사제목 / 내용일부 -->
                                                    <h2 class="text-white display-6 mice"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-normal">	
                                                    신한은행, 기업·가계대출 취약차주 채무조정 확대</a></h2>
                                                    <p class="text-white">신한은행은 기업대출 취약차주 대상 '기업 포괄 채무조정 프로그램'을 신설하고 가계대…</p>
                                                    <!-- 작성일자 -->
                                                    <ul class="nav nav-divider text-white-force align-items-center d-none d-sm-inline-block">
                                                        <p class="nav-item">2022.10.04</p>
                                                        <p class="nav-item">15:07:11</p>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 오른쪽 기사 -->
                        <div class="col-lg-5 mt-5 mt-lg-0">
                            <!-- 오른쪽 기사 1 -->
                            <div class="card mb-3">
                                <div class="row g-3">
                                    <div class="col-4">
                                        <img class="rounded-3" src="${path}/resources/resources1b/images/blog/4by3/01.jpg" alt="">
                                    </div>
                                    <div class="col-8">
                                        <a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                        <h5><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold mice">이지스자산운용, 증권부문에 장지영 신임 대표 선임</a></h5>
                                        <p class="nav-item">2022.10.05</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 오른쪽 기사 2 -->
                            <div class="card mb-4">
                                <div class="row g-3">
                                    <div class="col-4">
                                        <img class="rounded-3" src="${path}/resources/resources1b/images/blog/4by3/02.jpg" alt="">
                                    </div>
                                    <div class="col-8">
                                        <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                        <h5><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold mice">은평구 성락타운 재건축…대보건설, 125가구 신축</a></h5>
                                        <p class="nav-item">2022.10.02</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 오른쪽 기사 3 -->
                            <div class="card mb-3">
                                <div class="row g-3">
                                    <div class="col-4">
                                        <img class="rounded-3" src="${path}/resources/resources1b/images/blog/4by3/03.jpg" alt="">
                                    </div>
                                    <div class="col-8">
                                        <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                        <h5><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold mice">尹 "북 도발, 유엔 규범 위반"...NSC에 상응 조치 지시</a></h5>
                                        <p class="nav-item">2022.10.04</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 오른쪽 기사 4 -->
                            <div class="card mb-4">
                                <div class="row g-3">
                                    <div class="col-4">
                                        <img class="rounded-3" src="${path}/resources/resources1b/images/blog/4by3/04.jpg" alt="">
                                    </div>
                                    <div class="col-8">
                                        <a href="#" class="badge text-bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Opinion</a>
                                        <h5><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold mice">[기자수첩] 재건축 부담금, 여전히 문제다</a></h5>
                                        <p class="nav-item">2022.10.04</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Card item END -->
                        </div>
                    </div>
                    <!-- Row END -->
                </div>
            </section>
            <!-- ======================= Main hero END -->

            <!-- ======================= 카드로 보는 뉴스 시작 -->
            <section class="position-relative" style="margin-top: -90px;">
                <div class="container" data-sticky-container>
                    <div class="row">
                        <!-- Main Post START -->
                        <div class="col-lg-9">
                            <!-- Top highlights START -->
                            <div class="mb-4">
                                <h2 class="m-0 mice"><i class="bi bi-hourglass-top me-2"></i>카드로 보는 뉴스</h2>
                                <p>알기 쉬운 인포그래픽 및 카드뉴스를 제공해 드립니다.</p>
                            </div>
                            <div class="tiny-slider arrow-blur arrow-round rounded-3">
                                <div class="tiny-slider-inner" data-autoplay="true" data-hoverpause="true" data-gutter="24" data-arrow="true" data-dots="false" data-items-sm="1" data-items-xs="1" data-items="2">
                                    <!-- 카드뉴스 1 -->
                                    <div class="card">
                                        <div class="position-relative">
                                            <img class="card-img" src="${path}/resources/resources1b/images/01_main/main_card_01.png" alt="Card image">
                                            <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h4 class="card-title mice"><a href="post-single-3.html" class="btn-link text-reset fw-bold">8월 18일부터 달라지는 산업안전 제도</a></h4>
                                            <p class="card-text ">뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용</p>
                                            <p class="nav-item">2022.10.02</p>
                                        </div>
                                    </div>
                                    <!-- 카드뉴스 2 -->
                                    <div class="card">
                                        <div class="position-relative">
                                            <img class="card-img" src="${path}/resources/resources1b/images/01_main/main_card_02.png" alt="Card image">
                                            <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h4 class="card-title mice"><a href="post-single-3.html" class="btn-link text-reset fw-bold">2023년 최저임금</a></h4>
                                            <p class="card-text ">뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용</p>
                                            <p class="nav-item">2022.10.02</p>
                                        </div>
                                    </div>
                                    <!-- 카드뉴스 3 -->
                                    <div class="card">
                                        <div class="position-relative">
                                            <img class="card-img" src="${path}/resources/resources1b/images/01_main/main_card_03.png" alt="Card image">
                                            <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h4 class="card-title mice"><a href="post-single-3.html" class="btn-link text-reset fw-bold">청년고용지원금 안내</a></h4>
                                            <p class="card-text ">뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용</p>
                                            <p class="nav-item">2022.10.02</p>
                                        </div>
                                    </div>
                                    <!-- Card item END -->
                                </div>
                            </div>
                            <!-- ======================= 카드로 보는 뉴스 끝 -->

                            <!-- 구분선 -->
                            <div class="border-bottom border-primary border-2 opacity-1 my-4  "></div>
                            <!-- 청약캘린더 시작 -->
                            <div class="card mb-2 mb-sm-4 " style="margin-bottom: -90px;">
                                <div class="row g-3">
                                    <div class="col-md-4 order-sm-2">
                                        <div class="rounded-3 overflow-hidden">
                                            <h2 class="m-0 mice "><i class="bi bi-bell-fill m-2"></i><a class="text-dark">&nbsp;오늘<a class="text-danger">마감</a>청약</a>
                                            </h2>
                                            <!-- <p>오늘 마감되는 청약을 확인해보세요</p> -->
                                            <div class="card card-body bg-warning bg-opacity-15 p-4 h-75 text-center">
                                                <h3 class=" ">22.09.27</h3>
                                                <!-- <h5>마감 청약</h5> -->
                                                <h1 class="fs-1 text-danger">16개</h1>
                                                <!-- <p>오늘 모집 마감되는 청약일정과 <br> 공급 대상들을 즉시 확인하실 수 있습니다!</p> -->
                                                <div class="mt-auto"><a href="03_reales_detailList.html" class="btn btn-link text-reset p-0 mb-0">일정 확인하러 가기!</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8 ">
                                        <div class="d-sm-flex justify-content-sm-between mb-2 ">
                                            <a href="# " class="badge text-bg-warning "><i class="fas fa-circle me-2 small fw-bold "></i>Real Estate</a>
                                        </div>
                                        <h3 class="mice ">
                                            <a href="post-single-6.html " class="btn-link text-reset fw-bold ">FinTouch에서는 <a class="text-warning">부동산청약</a>에 대해 <br>다양한 정보를 제공합니다.
                                            </a>
                                        </h3>
                                        <p>주택을 구매하는 방법 중에서 가장 일반적인 방법은, 주택청약에 당첨되어서 분양권부터 입주를 기다리는 방식입니다. 국내 아파트 시장은 선분양 후시공이 대다수기 때문에 많은 어려움에 봉착합니다. 이러한 고민들을, 저희 FinTouch와 함께 알아보시는 건 어떠실까요?</p>
                                        <!-- <h3 class="mice "><a href="post-single-6.html " class="btn-link text-reset fw-bold ">청약캘린더 임시자리배치</a></h3>
                                    <p>한주 달력 형식으로 2주 뽑아볼까 했는데 왤케 어려움???? 노력하였으나 사망하였다 나를 찾지말아주세요</p> -->
                                        <!-- Card info -->
                                    </div>
                                </div>
                            </div>
                            <!-- 청약캘린더 끝 -->
                        </div>
                        <!-- 오른쪽 사이드바 시작 -->
                        <div class="col-lg-3 mt-5 mt-lg-0 ">
                            <div data-sticky data-margin-top="80 " data-sticky-for="767 ">
                                <!-- Social links -->
                                <div class="row g-2 ">
                                    <a href="# " class="d-flex justify-content-between align-items-center bg-facebook text-white-force rounded p-2 position-relative ">
                                        <i class="fab fa-facebook-square fs-3 "></i>
                                        <div class="d-flex ">
                                            <h6 class="me-1 mb-0 ">1.5K</h6>
                                            <small class="small ">Fans</small>
                                        </div>
                                    </a>
                                    <a href="# " class="d-flex justify-content-between align-items-center bg-instagram-gradient text-white-force rounded p-2 position-relative ">
                                        <i class="fab fa-instagram fs-3 "></i>
                                        <div class="d-flex ">
                                            <h6 class="me-1 mb-0 ">1.8M</h6>
                                            <small class="small ">Followers</small>
                                        </div>
                                    </a>
                                    <a href="# " class="d-flex justify-content-between align-items-center bg-youtube text-white-force rounded p-2 position-relative ">
                                        <i class="fab fa-youtube-square fs-3 "></i>
                                        <div class="d-flex ">
                                            <h6 class="me-1 mb-0 ">22K</h6>
                                            <small class="small ">Subscribers</small>
                                        </div>
                                    </a>
                                </div>
                                <!-- 인기검색어 -->
                                <div class="row g-2 mt-5 ">
                                    <h4 class="mice ">인기검색어</h4>
                                    <div class="d-flex justify-content-between align-items-center bg-warning bg-opacity-15 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-warning ">디지털 경쟁력</h6>
                                        <a href="# " class="badge bg-warning text-dark stretched-link ">09</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-info bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-info ">소상공인 대출</h6>
                                        <a href="# " class="badge bg-info stretched-link ">25</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-danger bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-danger ">전세피해지원센터</h6>
                                        <a href="# " class="badge bg-danger stretched-link ">75</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-primary bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-primary ">세계 전기차 점유율</h6>
                                        <a href="# " class="badge bg-primary stretched-link ">19</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-success bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-success ">복지멤버십</h6>
                                        <a href="# " class="badge bg-success stretched-link ">35</a>
                                    </div>
                                </div>
                                <!-- 커뮤니티 실시간 -->
                                <div>
                                    <h4 class="mt-5 mb-3 mice ">커뮤니티 실시간&nbsp;<a class="badge text-bg-danger mb-3 " style="font-size: 70%; ">HOT</a></h4>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">01</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">강남 역세권 청약 일정 어디서 찾아보죠?</a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">02</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">나는솔로 보면서, 영철님 같은 분들 많으시죠? 저만 그런가.. </a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">03</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">삼전은 지금 끝물이죠.. 지금 왜 들어갑니까?</a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">04</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">코스피 연말에 2400갈겁니다. 두고보세요. </a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">05</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">저희집 고양이 좀 보고가세요. </a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">06</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">상여금을 코인으로 받아서 묵혀놨는데 3만원이 되버렸는데 어쩌죠?</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Sidebar END -->
                    </div>
                    <!-- Row end -->
                </div>
            </section>
            <!-- ======================= 뉴스 + 카드뉴스 + 오른쪽 사이드바 끝 -->

            <!-- ======================= 한 눈에 보는 90초 금융 시작 -->
            <section class="bg-dark ">
                <div class="container ">
                    <div class="row g-4 ">
                        <div class="col-md-12 ">
                            <!-- Title -->
                            <div class="d-sm-flex justify-content-between align-items-center ">
                                <h2 class="m-sm-0 text-white mice "><i class="bi bi-camera-video "></i>&nbsp; 한 눈에 보는 90초 금융</h2>
                            </div>
                        </div>
                        <!-- 유튜브 1 -->
                        <div class="col-sm-6 col-lg-3 ">
                            <div class="card bg-transparent overflow-hidden ">
                                <div class="position-relative rounded-3 overflow-hidden ">
                                    <iframe src="https://www.youtube.com/embed/-B8F1x9o1VM " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3 ">
                                <h5 class="card-title "><a href="podcast-single.html " class="btn-link text-white fw-bold mice ">은행 창구에서 이것 보여주면 계좌 개설 가능</a></h5>
                                <p class="nav-item text-white mt-2 ">금융위원회</p>
                                <p class="nav-item text-white " style="margin-top:-10px; ">2022.08.25</p>
                            </div>
                        </div>
                        <!-- 유튜브 2 -->
                        <div class="col-sm-6 col-lg-3 ">
                            <div class="card bg-transparent overflow-hidden ">
                                <div class="position-relative rounded-3 overflow-hidden ">
                                    <iframe src="https://www.youtube.com/embed/TPEFszY7j90 " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3 ">
                                <h5 class="card-title "><a href="podcast-single.html " class="btn-link text-white fw-bold mice ">뭐니! 뭐니? 이건 Money 어디 숨어있니? 내 돈?</a></h5>
                                <p class="nav-item text-white mt-2 ">금융위원회</p>
                                <p class="nav-item text-white " style="margin-top:-10px; ">2022.08.25</p>
                            </div>
                        </div>
                        <!-- 유튜브 3 -->
                        <div class="col-sm-6 col-lg-3 ">
                            <div class="card bg-transparent overflow-hidden ">
                                <div class="position-relative rounded-3 overflow-hidden ">
                                    <iframe src="https://www.youtube.com/embed/zR0lM7o3AhU " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3 ">
                                <h5 class="card-title "><a href="podcast-single.html " class="btn-link text-white fw-bold mice ">청년층에 유리한 조건으로 바뀐 "통합 채무조정 " [2022년 달라지는 금융제도]</a></h5>
                                <p class="nav-item text-white mt-2 ">금융위원회</p>
                                <p class="nav-item text-white " style="margin-top:-10px; ">2022.08.25</p>
                            </div>
                        </div>
                        <!-- 유튜브 4 -->
                        <div class="col-sm-6 col-lg-3 ">
                            <div class="card bg-transparent overflow-hidden ">
                                <div class="position-relative rounded-3 overflow-hidden ">
                                    <iframe src="https://www.youtube.com/embed/TfJuv2oYStE " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3 ">
                                <h5 class="card-title "><a href="podcast-single.html " class="btn-link text-white fw-bold ">DSR 계산 어떻게? 금융위가 알려드립니다.[2022년 달라지는 금융제도]</a></h5>
                                <p class="nav-item text-white mt-2 ">금융위원회</p>
                                <p class="nav-item text-white " style="margin-top:-10px; ">2022.08.25</p>
                            </div>
                        </div>
                        <!-- Card small START -->
                    </div>
                </div>
            </section>
            <!-- ======================= 한 눈에 보는 90초 금융 끝 -->

            <!-- ======================= 오피니언 시작 -->
            <section style="margin: top 200px; ">
                <div class="container " style="margin: top 200px; ">
                    <div class="row ">
                        <h2 class="mice "><i class="fa fa-solid fa-pen-nib " style="margin-right:10px; "></i>오피니언</h2>
                        <div class="col-12 ">
                            <div class="tiny-slider arrow-blur arrow-round rounded-3 overflow-hidden ">
                                <div class="tiny-slider-inner " data-autoplay="true " data-hoverpause="true " data-gutter="24 " data-arrow="true " data-dots="false " data-items-xl="4 " data-items-lg="3 " data-items-md="3 " data-items-sm="2
                                                " data-items-xs="1 ">
                                      <!-- 오피니언 4 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_04.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                               <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                   <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">7번 [시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item  mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 2 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_02.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice ">
                                                        <a href="post-single-2.html " class="btn-link text-reset stretched-link ">1번 &lt;시평&gt;‘당당한 군대’ 복원 절실하다</a>
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item mice ">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 3 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_03.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">2번 [기고]탄소장벽 세워지는데…기업들은 속이 탄다</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item ">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 4 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_04.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                               <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">3번 [시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item  mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                   <!-- 오피니언 1 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_01.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">5번 [시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 1 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_01.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">5번 [시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 2 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_02.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                               <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white ">
                                                        <a href="post-single-2.html " class="btn-link text-reset stretched-link mice">5번 &lt;시평&gt;‘당당한 군대’ 복원 절실하다</a>
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 3 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_03.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">6번 [기고]탄소장벽 세워지는데…기업들은 속이 탄다</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item  mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 4 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_04.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                               <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                   <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">7번 [시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item  mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                 <!-- 오피니언 1 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_01.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">5번 [시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                   <!-- 오피니언 1 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_01.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">5번 [시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                   <!-- 오피니언 1 -->
                                     <div style="margin-right: -50px;">
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 220px; height: 280px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="${path}/resources/resources1b/images/01_main/main_opi_01.jpg " alt=" " style="width: 220px; height: 280px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                                    <h5 class="text-white mice"><a href="post-single-2.html " class="btn-link text-reset stretched-link ">5번 [시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item mice">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- =======================오피니언 끝 =======================-->
    </main>
       </main>
	<%@ include file="/WEB-INF/views/common/footerDark.jsp" %>
  
</body>

</html>