<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<!DOCTYPE html>
<html lang="en" data-theme="light" data-layout="topnav" data-topbar-color="dark" data-layout-mode="fluid" data-layout-position="fixed">
<!-- 금융메인 타이틀 글자 자간 조절 시작-->
<style>
    .card-sp {
        padding: 20px;
        /* font-size: 50px; */
        font-weight: bold;
        /* text-align: center; */
        background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.5);
    }
    
    .card-sp-sm {
        padding: 20px;
        /* font-size: 50px; */
        font-weight: bold;
        /* text-align: center; */
        background-color: #ffffff;
        /* background-color: #ffffff; */
        background-color: rgba( 255, 255, 255, 0.75);
    }
    
    .div-sp {
        width: 1170px;
        height: 530px;
        display: center;
        /* padding: 10px; */
        padding-inline: 1.5rem;
        background-color: #ffffff;
        background-color: rgba(194, 201, 191, 0.7);
    }
    
    .p01 {
        line-height: -10px;
        letter-spacing: -7px;
        word-spacing: 10px;
        /* font-weight: bolder; */
    }
    
    .p02 {
        line-height: 20px;
        letter-spacing: -10px;
        word-spacing: 10px;
        /* font-weight: bolder; */
    }
    
    .p03 {
        line-height: 10%;
        letter-spacing: -3px;
        word-spacing: 10px;
        /* font-weight: bolder; */
    }
    
    .p04 {
        letter-spacing: -3px;
        word-spacing: 5px;
        /* font-weight: bolder; */
    }
    
    .p05 {
        letter-spacing: -1px;
        word-spacing: 5px;
        /* font-weight: bolder; */
    }
    
    .p06 {
        line-height: 50%;
        letter-spacing: -1px;
        word-spacing: 3px;
        font-size: 15px;
    }
    
    .my_bg {
        background-image: url("${path}/resources/resources4h/assets2/images/02_fin/bg_top05.jpg");
        background-repeat: no-repeat;
        background-size: contain;
    }
    
    .my_bg_2 {
        background-image: url("${path}/resources/resources4h/assets2/images/02_fin/bg_btm01.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        /* height: 100vh; */
        /* width: 100px; */
    }
</style>
<!-- 금융메인 타이틀 글자 자간 조절 시작-->


<head>
    <meta charset="utf-8" />
    <title>FinTouch - 신속하고 정확한 금융지식전달을 위해 노력합니다. </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources4h/assets2/images/favicon.ico">

    <!-- Theme Config Js -->
    <script src="${path}/resources/resources4h/assets2/js/hyper-config.js"></script>

    <!-- Icons css -->
    <link href="${path}/resources/resources4h/assets2/css/icons.min.css" rel="stylesheet" type="text/css" />

    <!-- App css -->
    <link href="${path}/resources/resources4h/assets2/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />


    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources4h/assets1/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>

    <!-- 구글폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">


    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources4h/assets1/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources4h/assets1/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources4h/assets1/vendor/tiny-slider/tiny-slider.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/resources4h/assets1/vendor/plyr/plyr.css">

    <!-- 차트제이에스 chart.js css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">

    <!-- JS	 -->

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"> -->

    <!-- Theme CSS -->
    <link id="style-switch" rel="stylesheet" type="text/css" href="${path}/resources/resources4h/assets1/css/style.css">
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	 <!-- ****************메인 시작**************** -->

    <main class=" my_bg">
        <!-- <section class="position-relative overflow-hidden" style="padding-bottom: 0px; background-image:url(assets/images/02_fin/bg_top05.jpg); background-position: center; background-size: cover;"> -->
        <div class="bg-overlay bg-transparent opacity-5"></div>
        <!-- SVG decoration for curve -->
        <div class="container ">
            <div class="row py-0 align-items-center text-center ">
                <div class="col-sm-12  mt-md-0">
                    <div class="py-0 py-md-3 my-2 mt-5 mb-0">
                        <!-- Title -->
                        <h1 class="text-dark mice" style="font-size:50px;">세상을 바꾸는 금융</h1>
                        <p class="text-dark mice" style="font-size:22px;"> FinTouch와 함께 <a class="text-instagram"> 오늘의 주식시장</a>을 확인하고, 상품시장의 <a class="text-instagram">투자전략</a>을 세워보세요!</p>
                    </div>
                </div>
            </div>
        </div>
        <section style="padding-top:0px;">
            <section class="pt-3 pt-lg-5 ">
                <div class="container ">
                    <div class="row ">
                        <div class="col-xl-4" style="width:400px;">
                            <div class="card-sp">
                                <div class="card-body ">
                                    <div class="mice" style="font-weight: bold; font-size: 20px;color:black"><a href="02_fin_kospiDetail.html" style="color:black;">KOSPI</a>
                                    </div>
                                    <div style="font-weight: bold; font-size: 25px; color:blue">2,220.94 ▼69.06 -3.02%</div>
                                    <!--<h4 class="header-title mb-4">코스피 KOSPI</h4>-->
                                    <div dir="ltr">
                                        <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                        <!-- 상승장일때-->
                                        <div id="basic-area1" class="apex-charts" data-colors="#236AB9"></div>
                                        <!-- 하락장일때-->
                                    </div>
                                </div>
                                <!-- end card body-->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col-->
                        <div class="col-xl-4" style="width:400px;">
                            <div class="card-sp">
                                <div class="card-body">
                                    <div class="mice" style="font-weight: bold; font-size: 20px;color:black">
                                        <!-- <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bar-chart-line" viewBox="0 0 16 16"> -->
                                        <!-- <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z" /> -->
                                        <!-- </svg>&nbsp;&nbsp;<a href="02_fin_kosdaqDetail.html" style="color:black"> -->
                                        <a href="02_fin_kosdaqDetail.html" style="color:black;">KOSDAQ</a>
                                    </div>
                                    <div style="font-weight: bold; font-size: 25px; color:blue">692.37 ▼36.99 -5.07%</div>
                                    <!--<h4 class="header-title mb-4">코스닥 KOSDAQ </h4>-->
                                    <div dir="ltr">
                                        <div id="basic-area2" class="apex-charts" data-colors="#236AB9"></div>
                                    </div>
                                </div>
                                <!-- end card body-->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col-->
                        <div class="col-md-6 col-xl-4">
                            <div class="card-sp" style="height:355px;">
                                <div class="card-body">
                                    <br>
                                    <div class="row align-items-center">
                                        <div class="col-6">
                                            <h5 class="mt-0 mice" style="font-weight: bold; font-size: 18px; color:black"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-currency-dollar" viewBox="0 0 16 16">
                                                <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"/>
                                              </svg>&nbsp;USD/KRW</h5>
                                            <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px; color:red">1,433</h3>
                                            <p class="mb-0 text-muted">
                                                <span class="text-danger me-2"><i class="mdi mdi-arrow-up-bold" style="color:red"></i> 0.28%</span>
                                            </p>
                                        </div>
                                        <div class="col-6">
                                            <div class="text-end">
                                                <div id="new-leads-chart1" data-colors="#0acf97"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end row-->
                                    <div></div><br><br>
                                    <div class="row align-items-center">
                                        <div class="col-6">
                                            <h5 class=" mt-0 mice" style="font-weight: bold; font-size: 18px; color:black"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-currency-yen" viewBox="0 0 16 16">
                                                <path d="M8.75 14v-2.629h2.446v-.967H8.75v-1.31h2.445v-.967H9.128L12.5 2h-1.699L8.047 7.327h-.086L5.207 2H3.5l3.363 6.127H4.778v.968H7.25v1.31H4.78v.966h2.47V14h1.502z"/>
                                              </svg>&nbsp;CNY/KRW</h5>
                                            <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px; color:blue">199.60</h3>
                                            <p class="mb-0 text-muted">
                                                <span class="text-danger1 me-2"><i class="mdi mdi-arrow-down-bold"style="font-weight: bold; font-size: 20px; color:blue"></i> -0.38%</span>
                                            </p>
                                        </div>
                                        <div class="col-6">
                                            <div class="text-end">
                                                <div id="new-leads-chart2" data-colors="#0acf97"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card-body-->
                            </div>
                            <!-- end card-->
                        </div>
                        <!-- end col-->
                    </div>
                    <!-- 소피가 손댐 시작 -->
                    <div class="position-relative  align-content-center justify-content-center mt-5 div-sp ">
                        <div class=" position-relative  align-content-center justify-content-center center">
                            <div class="container pb-1 " style="margin-bottom: -1%; ">
                                <div class="row mb-0 ">
                                    <div class="col-md-10 mt-3">
                                        <p class="subtitle " style="font-size: 15px; margin-bottom: 1%; ">
                                            <h6 class="text-primary">R e c o m m e n d e d &nbsp; f i n a n c i a l&nbsp; i n s t r u m e n t s</h6>
                                        </p>
                                        <h3 class="mice" style="font-size: 30px;"><span class="mice">이달의<a class="text-instagram"> 추천금융상품</a></span><span class="text-secondary " style="font-size: 17px; ">&nbsp FinTouch에서 추천하는 금융상품을 확인하여 최고의 금리혜택을 얻으세요!</span></h3>
                                    </div>
                                    <div class="col-md-2 d-lg-flex align-items-center justify-content-end ">
                                        <a class="btn btn-link fw-normal p-0 " href="02_fin_Product.html" style="margin-left: -5%; ">View all</a></div>
                                </div>
                            </div>

                            <div class="position-relative  align-content-center justify-content-center ">
                                <div class=" position-relative  align-content-center justify-content-center center">
                                    <!-- Start Content-->
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-6 " style="text-align:left; font-weight: bold; font-size: 25px;color:black">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-piggy-bank" viewBox="0 0 16 16">
                          </svg>
                                            </div>
                                            <div class="col-6 " style="text-align:right; font-weight: bold; font-size: 20px;">
                                                <a href="" style="color:black;"> </a>
                                            </div>
                                        </div>
                                        <div class="row style=background-color: #464bc0;">
                                            <div class="col-4">
                                                <div class="card-sp-sm widget-flat">
                                                    <div class="card-body">
                                                        <div class="float-end">
                                                            <img src="${path}/resources/resources4h/assets2/images/05_financeProduct/shinhanBank.png" alt="Stockbanner" height="60" width="70">
                                                        </div>
                                                        <h5 class="mice" style="color:black;">신한은행</h5>
                                                        <h3 class="mt-3 mb-3 mice" style="color:black;">
                                                            <a href="02_fin_ProductDetail.html" style="color:black;">신한 알.쏠 적금</a></h3>
                                                        <p class="mb-0 text-muted">
                                                            <span class="text-danger me-2">4.15%</span>
                                                            <span class="text-nowrap" style="color:black">자유적립식</span>
                                                        </p>
                                                    </div>
                                                    <!-- end card-body-->
                                                </div>
                                                <!-- end card-->
                                            </div>
                                            <div class="col-4">
                                                <div class="card-sp-sm widget-flat">
                                                    <div class="card-body">
                                                        <div class="float-end">
                                                            <img src="${path}/resources/resources4h/assets2/images/05_financeProduct/deaguBank.png" alt="Stockbanner" height="60" width="70">
                                                        </div>
                                                        <h5 class="mice" style="color:black;">대구은행</h5>
                                                        <h3 class="mt-3 mb-3 mice" style="color:black;"><a href="02_fin_ProductDetail.html" style="color:black;">영플러스 적금</a></h3>
                                                        <p class="mb-0 text-muted">
                                                            <span class="text-danger me-2"></i>3.71%</span>
                                                            <span class="text-nowrap" style="color:black;">자유적립식</span>
                                                        </p>
                                                    </div>
                                                    <!-- end card-body-->
                                                </div>
                                                <!-- end card-->
                                            </div>
                                            <div class="col-4">
                                                <div class="card-sp-sm widget-flat">
                                                    <div class="card-body">
                                                        <div class="float-end">
                                                            <img src="${path}/resources/resources4h/assets2/images/05_financeProduct/ibkBank.png" alt="ibk은행" height="60" width="70">
                                                        </div>
                                                        <h5 class="mice" style="color:black;">중소기업은행</h5>
                                                        <h3 class="mt-3 mb-3 mice" style="color:black;"><a href="02_fin_ProductDetail.html" style="color:black;">W효도적금</a></h3>
                                                        <p class="mb-0 text-muted">
                                                            <span class="text-danger me-2">3.65%</span>
                                                            <span class="text-nowrap" style="color:black;">자유적립식</span>
                                                        </p>
                                                    </div>
                                                    <!-- end card-body-->
                                                </div>
                                                <!-- end card-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class=" position-relative  align-content-center justify-content-center" style=" padding-top:0em; padding-bottom:2em;">
                                <!-- Start Content-->
                                <div class="container">
                                    <div class="row">
                                        <div class="col-6 " style="text-align:left; font-weight: bold; font-size: 25px;color:black">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-piggy-bank" viewBox="0 0 16 16"></svg>
                                        </div>
                                        <div class="col-6 " style="text-align:right; font-weight: bold; font-size: 20px;">
                                            <a href="" style="color:black;"> </a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="card-sp-sm widget-flat">
                                                <div class="card-body">
                                                    <!-- <div class="float-end">
                                        <img src="${path}/resources/resources4h/assets2/images/05_financeProduct/wooriBank.jpg" alt="우리은행" height="60" width="70">
                                    </div> -->
                                                    <h5 class="mice" style="color:black;">우리은행</h5>
                                                    <h3 class="mt-3 mb-3 mice" style="color:black;"><a href="02_fin_ProductDetail.html" style="color:black;">첫급여 우리적금</a></h3>
                                                    <p class="mb-0 text-muted">
                                                        <span class="text-danger me-2">3.3%</span>
                                                        <span class="text-nowrap" style="color:black;">자유적립식</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="card-sp-sm widget-flat">
                                                <div class="card-body">
                                                    <!-- <div class="float-end">
                                        <img src="${path}/resources/resources4h/assets2/images/05_financeProduct/kbBank.jpg" alt="국민은행" height="60" width="70">
                                    </div> -->
                                                    <h5 class="mice" style="color:black;">국민은행</h5>
                                                    <h3 class="mt-3 mb-3 mice" style="color:black;"><a href="02_fin_ProductDetail.html" style="color:black;">KB내맘대로적금</a></h3>
                                                    <p class="mb-0 text-muted">
                                                        <span class="text-danger me-2"><i class="mdi mdi-arrow-down-bold"></i>3.25%</span>
                                                        <span class="text-nowrap" style="color:black;">정액적립식</span>
                                                    </p>
                                                </div>
                                                <!-- end card-body-->
                                            </div>
                                            <!-- end card-->
                                        </div>

                                        <div class="col-3">
                                            <div class="card-sp-sm widget-flat">
                                                <div class="card-body">
                                                    <!-- <div class="float-end">
                                        <img src="${path}/resources/resources4h/assets2/images/05_financeProduct/nhBank.jpg" alt="농협은행" height="60" width="70">
                                    </div> -->
                                                    <h5 class="mice" style="color:black;">농협은행</h5>
                                                    <h3 class="mt-3 mb-3 mice" style="color:black;"><a href="02_fin_ProductDetail.html" style="color:black;">올원 5늘도 적금</a></h3>
                                                    <p class="mb-0 text-muted">
                                                        <span class="text-danger me-2">3.5%</span>
                                                        <span class="text-nowrap" style="color:black;">자유적립식</span>
                                                    </p>
                                                </div>
                                                <!-- end card-body-->
                                            </div>
                                            <!-- end card-->
                                        </div>
                                        <div class="col-3">
                                            <div class="card-sp-sm widget-flat">
                                                <div class="card-body">
                                                    <!-- <div class="float-end">
                                        <img src="${path}/resources/resources4h/assets2/images/05_financeProduct/nhBank.jpg" alt="농협은행" height="60" width="70">
                                    </div> -->
                                                    <h5 class="mice" style="color:black;">농협은행</h5>
                                                    <h3 class="mt-3 mb-3 mice" style="color:black;"><a href="02_fin_ProductDetail.html" style="color:black;">늘 든든한 행복적금</a></h3>
                                                    <p class="mb-0 text-muted">
                                                        <span class="text-danger me-2">10.5%</span>
                                                        <span class="text-nowrap" style="color:black;">자유적립식</span>
                                                    </p>
                                                </div>
                                                <!-- end card-body-->
                                            </div>
                                            <!-- end card-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="container pb-1 " style="margin-bottom: -1%; ">
                <div class="row mb-0 ">
                    <div class="col-md-10 ">
                        <h6 class="text-primary">R e c o m m e n d e d &nbsp; V i d e o </h6>
                        <h3 style="font-size: 30px;"><span class="mice"><i class="bi bi-camera-video-fill"></i>&nbsp;금융위원회 90초금융</span><span class="text-secondary mice" style="font-size: 17px; ">&nbsp 단 90초면 쉽게 이해되는 금융지식! </span></h3>
                    </div>
                    <div class="col-md-2 d-lg-flex align-items-center justify-content-end "><a class="btn btn-link fw-normal p-0 " href="https://www.youtube.com/watch?v=-B8F1x9o1VM&list=PL-xjmiIBCfhyVoE-dmIYrSD3NLxMt3xHh" style="margin-left: -5%; ">
                View all<i class="fi-arrow-long-right ms-2 "></i></a></div>
                </div>
            </div>
            <div class="pt-lg-0 selection position-relative mb-1 align-content-center justify-content-center center "></div>
            <div class=" position-relative mb-1 align-content-center justify-content-center">
                <div class=" position-relative mb-1 align-content-center justify-content-center">
                    <!-- Start Content-->
                    <div class="container">
                        <div class="row">
                            <div class="col-6 " style="text-align:left; font-weight: bold; font-size: 25px;color:black">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-piggy-bank" viewBox="0 0 16 16">
                      </svg>
                            </div>
                            <div class="col-6 " style="text-align:right; font-weight: bold; font-size: 20px;">
                                <a href="" style="color:black;"> </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-3">
                                <iframe width="280 " height="180 " src="https://www.youtube.com/embed/-B8F1x9o1VM " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope;
                                            picture-in-picture " allowfullscreen></iframe></div>
                            <div class="col-3">
                                <iframe width="280 " height="180 " src="https://www.youtube.com/embed/CUSqakVeEB0 " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope;
                                            picture-in-picture " allowfullscreen></iframe></div>
                            <div class="col-3">
                                <iframe width="280 " height="180 " src="https://www.youtube.com/embed/TPEFszY7j90 " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope;
                                            picture-in-picture " allowfullscreen></iframe></div>
                            <div class="col-3">
                                <iframe width="280 " height="180 " src="https://www.youtube.com/embed/uoLnRv04bPU " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope;
                                            picture-in-picture " allowfullscreen></iframe></div>
                            <!-- <div class="col-2">
                            <iframe width="200 " height="180 " src="https://www.youtube.com/embed/Hnysm55cWeg " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope;
                                            picture-in-picture " allowfullscreen></iframe></div>
                        <div class="col-2">
                            <iframe width="180" height="180" src="https://www.youtube.com/embed/Hx3GlCyfVS4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class=" my_bg_2">
            <div class="container pb-lg-4 " style="margin-bottom: 0%;">
                <div class="row mb-0">
                    <div class="col-9">
                        <div class="row">
                            <div class="col-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div>
                                            <table class="table table-sm table-centered mb-0 " style="width: 400px; margin-left:-10px;">
                                                <thead>
                                                    <span class="mice" style="text-align:right; font-weight: bold; font-size: 20px; color: black; ">
                                                       KOSPI <a class="text-danger">TOP6</a></span>
                                                    <span style="padding-left:13.5em; font-weight: bold; font-size: 15px; color: black;"><a href="02_fin_kospiDetail.html" style="color:black;">View all</a></span>
                                                    <tr>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:if test="${empty list1}">
			                                      	<tr>
			                                      		<td colspan="6">조회된 주식이 없습니다.</td>
			                                      	</tr>
			                                    </c:if>
			                                    
			                                    <c:if test="${!empty list1}">
			                                    	<c:forEach var="stockprice" items="${list1}"  begin="0" end="5" step="1" varStatus="status">
                                                    <tr>
                                                        <td width="50px; " style="color:black ">${status.count}</td>
                                                        <td style="color:black "><c:out value="${stockprice.itmsNm}" /></td>
                                                        <td style="color:black "><fmt:formatNumber value="${stockprice.clpr}"/></td>
                                                        <c:if test="${stockprice.fltRt < 0}">                                                       
                                                        	<td style="color:blue ">▼</td>
                                                        	<td style="color:blue "><c:out value="${stockprice.fltRt}"/>%</td>
                                                        </c:if>
                                                        <c:if test="${stockprice.fltRt > 0}">                                                       
                                                        	 <td style="color:red ">▲</td>
                                                        	 <td style="color:red ">+<c:out value="${stockprice.fltRt}" />%</td>
                                                        </c:if>
                                                    </tr> 
                                                    </c:forEach>
			                                    </c:if>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="card ">
                                    <div class="card-body ">
                                        <div>
                                            <table class="table table-sm table-centered mb-0 " style="width: 400px; margin-left:-10px;">
                                                <thead>
                                                    <span class="mice" style="font-weight: bold; font-size: 20px; color: black; "> 인기검색종목</span>
                                                    <tr>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td width="50px; " style="color:black ">1</td>
                                                        <td style="color:black ">신한 인버스2X</td>
                                                        <td style="color:black ">3,655</td>
                                                        <td style="color:red ">▲</td>
                                                        <td style="color:red ">+4.29%</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="50px; " style="color:black ">2</td>
                                                        <td style="color:black ">대우조선해양</td>
                                                        <td style="color:black ">24,550</td>
                                                        <td style="color:red ">▲</td>
                                                        <td style="color:red ">+11.36%</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="50px; " style="color:black ">3</td>
                                                        <td style="color:black ">두산에너빌리티</td>
                                                        <td style="color:black ">15,700</td>
                                                        <td style="color:blue ">▼</td>
                                                        <td style="color:blue ">-7.14%</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="50px; " style="color:black ">4</td>
                                                        <td style="color:black ">한일사료</td>
                                                        <td style="color:black ">7,250</td>
                                                        <td style="color:red ">▲</td>
                                                        <td style="color:red ">+0.84%</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="50px; " style="color:black ">5</td>
                                                        <td style="color:black ">카카오뱅크</td>
                                                        <td style="color:black ">22,200</td>
                                                        <td style="color:blue ">▼</td>
                                                        <td style="color:blue ">-5.54%</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="50px; " style="color:black ">6</td>
                                                        <td style="color:black ">현대차</td>
                                                        <td style="color:black ">182,000</td>
                                                        <td style="color:blue ">▼</td>
                                                        <td style="color:blue ">-4.54%</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 ">
                                <div class="card ">
                                    <div class="card-body">
                                        <table class="table table-sm table-centered mb-0 " style="width: 400px; margin-left:-10px;">
                                            <thead>
                                                <span class="mice" style="text-align:right; font-weight: bold; font-size: 20px; color: black; ">
                                                    KOSDAQ <a class="text-danger">TOP6</a></span>
                                                <span style="padding-left:12em; font-weight: bold; font-size: 15px; color: black;"><a href="02_fin_kosdaqDetail.html" style="color:black;">View all</a></span>
                                                <tr>
                                                    <tr>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                    </tr>
                                            </thead>
                                            <tbody>
                                            <c:if test="${empty list2}">
			                                     <tr>
			                                      	<td colspan="6">조회된 주식이 없습니다.</td>
			                                     </tr>
			                                 </c:if>
                                                 <c:if test="${!empty list2}">
			                                    	<c:forEach var="stockprice" items="${list2}"  begin="0" end="5" step="1" varStatus="status">
                                                    <tr>
                                                        <td width="50px; " style="color:black "><c:out value="${status.count}"/></td>
                                                        <td style="color:black "><c:out value="${stockprice.itmsNm}" /></td>
                                                        <td style="color:black "><fmt:formatNumber value="${stockprice.clpr}"/></td>
                                                        <c:if test="${stockprice.fltRt < 0}">                                                       
                                                        	<td style="color:blue ">▼</td>
                                                        	<td style="color:blue "><c:out value="${stockprice.fltRt}"/>%</td>
                                                        </c:if>
                                                        <c:if test="${stockprice.fltRt > 0}">                                                       
                                                        	 <td style="color:red ">▲</td>
                                                        	 <td style="color:red ">+<c:out value="${stockprice.fltRt}" />%</td>
                                                        </c:if>
                                                    </tr> 
                                                    </c:forEach>
			                                    </c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6  border-secondary mt-2 " style="height: 330px; width: 440px; ">
                                <div class="bd-example">
                                    <div class="card ">
                                        <div class="card-body">
                                            <svg class="bd-placeholder-img bd-placeholder-img-lg card-img" width="530" height="220" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Card image" preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title><rect width="500px" height="280px"></rect><text x="50%" y="50%"  dy=".3em"></text></svg>
                                            <div class="card-img-overlay" style="background-color: #7a95c3;">
                                                <span class="mice" style="font-weight: bold; font-size: 25px; color:white;">
                                            <img src="${path}/resources/resources4h/assets1/images/dailyfinance.png" width="80" height="50">데일리금융용어</span><span style="padding-left:70px;"><a href="https://20191118.tistory.com/category/%EA%B8%88%EC%9C%B5%EA%B2%BD%EC%A0%9C/%EB%8D%B0%EC%9D%BC%EB%A6%AC%20%EA%B8%88%EC%9C%B5%EA%B2%BD%EC%A0%9C%EC%8B%9C%EC%82%AC%EC%9A%A9%EC%96%B4" style="color:white">View all</a></span>
                                                <div class="mt-2">
                                                    <h3 class="mice" style="font-size: 20px; color:#ffec44;">시가총액(時價總額)</h3>
                                                    <p class="card-text" style="color:white;">주가와 발행 주식수를 곱한 것으로 상장회사 혹은 기업 가치를 평가하는 지표이다. 시가총액이 크다는 것은 실적뿐 아니라 미래의 성장에 대한 기대도 크다는 것을 의미한다.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <img src="${path}/resources/resources4h/assets2/images/Stockconsultationbanner.png" alt="">
                    </div>
                </div>
            </div>
        </section>
        <!-- 소피가 손댐 끝-->
    </main>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>