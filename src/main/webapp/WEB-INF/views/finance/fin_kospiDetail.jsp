<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<!DOCTYPE html>
<html lang="en" data-theme="light" data-layout="topnav" data-topbar-color="dark" data-layout-mode="fluid" data-layout-position="fixed">
<style>
    td {
        text-align: right;
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
	    <div class="mt-100"></div>
    <section class="bg-dark-overlay-3 position-relative overflow-hidden" style="padding-bottom: 0px; background-image:url(${path}/resources/resources4h/assets2/images/01_main/finance.jpeg); background-position: center; background-size: cover;">
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
                        <!-- <div class="d-inline-block bg-white bg-opacity-75 px-3 py-2 rounded-pill mb-3">
                            <p class="mb-0 text-dark"><span class="badge text-bg-success rounded-pill me-1">New</span> Start with the best Real Estate</p>
                        </div> -->
                        <a href="#" class="badge text-bg-danger mb-2"><i
                            class="fas fa-circle me-2 small fw-bold"></i>Finance</a>

                        <!-- Title -->
                        <h1 class="text-white mice">국내증시동향</h1>
                        <p class="text-white mice" style="font-size:20px;"> 나만의 기준으로, 세상에 없는 나만의 투자원칙을 세워보세요!</p>

                        <div class="d-sm-flex align-items-center mt-4">
                            <!-- Button -->
                            <!-- <a href="#" class="btn btn-primary me-2 mb-4 mb-sm-0">Get Started</a> -->
                            <br><br><br>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <body>
        <!-- Begin page -->
        <div class="wrapper">







            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container">

                        <div class="row">
                            <div class="col-xxl-9">

                                <div class="row">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h2> <a class="text-danger">KOSPI</a> 종합지수</h2><br>
                                                <c:if test="${empty list2}">
					                  				 <h4 class="header-title mb-0" style="font-size:30px; color:blue;">값을 조회할 수 없습니다.</h4>					            			    						                  	
					             			    </c:if>
					            			    <c:if test="${!empty list2}">
					            			    	<c:forEach var="indexPrice" items="${list2}"  begin="0" end="0" step="1" varStatus="status">
					            			    	<c:if test="${indexPrice.fltRt < 0}">
                                             		   <h4 class="header-title mb-0" style="font-size:30px; color:blue;"><c:out value="${indexPrice.clpr}" /> ▼<c:out value="${fn:substring(indexPrice.vs,1,5)}" /> <c:out value="${indexPrice.fltRt}"/>%</h4>					            			    		
					            			    	</c:if>
													<c:if test="${indexPrice.fltRt > 0}">
                                             		   <h4 class="header-title mb-0" style="font-size:30px; color:red;"><c:out value="${indexPrice.clpr}" /> ▲ <c:out value="${fn:substring(indexPrice.vs,0,5)}" /> <c:out value="${indexPrice.fltRt}"/>%</h4>					            			    		
					            			    	</c:if>
                                                <!--  <ul class="nav nav-pills bg-nav-pills p-1 rounded" id="pills-tab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <a href="#day-status" data-bs-toggle="tab" aria-expanded="false" class="nav-link py-1 active">
                                                        <span class="">Day</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <a href="#week-status" data-bs-toggle="tab" aria-expanded="false" class="nav-link py-1">
                                                        <span class="">Week</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <a href="#month-status" data-bs-toggle="tab" aria-expanded="false" class="nav-link py-1">
                                                        <span class="">Month</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <a href="#year-status" data-bs-toggle="tab" aria-expanded="false" class="nav-link py-1">
                                                        <span class="">Year</span>
                                                    </a>
                                                </li>
                                            </ul> -->
                                            </c:forEach>
					                        </c:if>
                                            </div>
                                            <div class="card-body pt-0">
                                                <div class="tab-content" id="pills-tabContent">
                                                    <div class="tab-pane fade show active" id="day-status" role="tabpanel" aria-labelledby="day-status-tab">
                                                        <div dir="ltr">
                                                            <div id="day-balance-chart" class="apex-charts" data-colors="#0acf97"></div>
                                                        </div>
                                                    </div>
                                                    <!-- <div class="tab-pane fade" id="week-status" role="tabpanel" aria-labelledby="week-status-tab">
                                                        <div dir="ltr">
                                                            <div id="week-balance-chart" class="apex-charts" data-colors="#0acf97"></div>
                                                        </div>
                                                    </div> -->
                                                    <!-- <div class="tab-pane fade" id="month-status" role="tabpanel" aria-labelledby="month-status-tab">
                                                        <div dir="ltr">
                                                            <div id="month-balance-chart" class="apex-charts" data-colors="#0acf97"></div>
                                                        </div>
                                                    </div> -->
                                                    <!-- <div class="tab-pane fade" id="year-status" role="tabpanel" aria-labelledby="year-status-tab">
                                                        <div dir="ltr">
                                                            <div id="year-balance-chart" class="apex-charts" data-colors="#0acf97"></div>
                                                        </div>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->

                            <div class="col-xxl-3">
                                <div class="row">
                                    <div class="col-md-6 col-xxl-12">
                                        <div class="card" style="height:540px">
                                            <div class="card-header d-flex justify-content-between align-items-center">
                                                <h4 class="mice"> 인기 <a class="text-danger">KOSPI</a> 종목</h4>
                                            </div>

                                            <br>
                                            <div class="card-body pt-0 mb-2" data-simplebar style="max-height: 450px;">
                                            	<c:if test="${empty list1}">
                                            		<div class="d-flex align-items-center">
                                                    	<div class="flex-grow-1 ms-2">
                                                     	   <h4 class="mt-0 mb-1 font-16 fw-semibold">조회된 주식이 없습니다</h4>
                                                    	</div>
                                                	</div>
                                            	</c:if>
                                            	<c:if test="${!empty list1}">
			                                    	<c:forEach var="stockprice" items="${list1}"  begin="0" end="10" step="1" varStatus="status">
                                                <div class="d-flex align-items-center">

                                                    <div class="flex-grow-1 ms-2">
                                                        <h4 class="mt-0 mb-1 font-16 fw-semibold"><c:out value="${stockprice.itmsNm}"/></h4>
                                                        <p class="mb-0" style="color:black;"><fmt:formatNumber value="${stockprice.clpr}"/></p>
                                                    </div>
                                                    <c:if test="${stockprice.fltRt < 0}">
                                                   		 <p class="text-primary my-0"><i class="mdi mdi-trending-down me-1"></i><c:out value="${stockprice.fltRt}"/>%</p>
                                                    </c:if>
                                                    <c:if test="${stockprice.fltRt > 0}">
                                                   		 <p class="mb-0 text-danger"><i class="mdi mdi-trending-up me-1"></i>+<c:out value="${stockprice.fltRt}"/>%</p>
                                                    </c:if>
                                                </div>
                                                <hr>
                                                </c:forEach>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-md-6 col-xxl-3">
                                <div class="card" style="height:410px">
                                    <div class="card-header d-flex justify-content-between align-items-center">
                                        <h4 class="mice"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
                                        <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
                                        <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
                                      </svg>&nbsp;&nbsp;TODAY History</h4>
                                    </div>
									
									<c:if test="${empty list2}">
					                  		<p class="font-18 mb-1">조회된 코스피지수가 없습니다.</p>				                  	
					                </c:if>
					                <c:if test="${!empty list2}">
					                	<c:forEach var="indexPrice" items="${list2}"  begin="0" end="0" step="1" varStatus="status">
                                    <div class="card-body pt-0">
                                        <div class="border border-light p-3 rounded mb-3">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <p class="font-18 mb-1">오늘 지수의 고가</p>
                                                    <h3 class="text-danger my-0"><fmt:formatNumber value="${indexPrice.hipr}" pattern="#.##"/></h3>
                                                </div>
                                                <div class="avatar-sm">
                                                    <span class="avatar-title bg-danger rounded-circle h3 my-0" style="color:white">
                                                        <i class="mdi mdi-arrow-up-bold-outline"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="border border-light p-3 rounded mb-3">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <p class="font-18 mb-1">오늘 지수의 저가</p>
                                                    <h3 class="text-primary my-0"><fmt:formatNumber value="${indexPrice.lopr}" pattern="#.##"/></h3>
                                                </div>
                                                <div class="avatar-sm">
                                                    <span class="avatar-title bg-primary rounded-circle h3 my-0" style="color:white">
                                                        <i class="mdi mdi-arrow-down-bold-outline"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="border border-light p-3 rounded">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <p class="font-17 mb-1">오늘 지수 총거래량</p>
                                                    <h3 class="text-success my-0"><fmt:formatNumber value="${indexPrice.trqu}" groupingUsed="true" /></h3>
                                                </div>
                                                <div class="avatar-sm">
                                                    <span class="avatar-title bg-success rounded-circle h3 my-0" style="color:white">
                                                        <i class="mdi mdi-swap-horizontal"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                     </c:forEach>
					                 </c:if>
                                </div>
                            </div>


                            <div class="col-xxl-7">
                                <div class="card" style="height: 410px;">
                                    <div class="card-body">
                                        <span class="mice text-dark" style="font-size: 25px;"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
                                            <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                          </svg>&nbsp;&nbsp;일자별</span>
                                        <span style="padding-left:16em; padding-top:0px;">거래량 단위(백) / 거래대금 단위(백만원)</span>



                                        <div class="tab-content">
                                            <div class="tab-pane show active" id="small-table-preview">
                                                <div class="table-responsive-sm">
                                                    <table class="table table-sm table-centered mb-0">
                                                        <thead>
                                                            <tr>
                                                                <th style="text-align:center;">일자</th>
                                                                <th style="text-align:right;">시가</th>
                                                                <th style="text-align:right;">고가</th>
                                                                <th style="text-align:right;">저가</th>
                                                                <th style="text-align:right;">종가</th>
                                                                <th style="text-align:right;">전일비</th>
                                                                <th style="text-align:right;">등략률</th>
                                                                <th style="text-align:right;">거래량</th>
                                                                <th style="text-align:right;">거래대금</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:if test="${empty list2}">
					                                      	<tr>
					                                      		<td colspan="6">조회된 코스피지수가 없습니다.</td>
					                                      	</tr>
					                                    </c:if>
					                                    <c:if test="${!empty list2}">
					                                    <c:forEach var="indexPrice" items="${list2}"  begin="0" end="8" step="1" varStatus="status">
					                                    <tr>
					                                    	<td><c:out value="${fn:substring(indexPrice.basDt,4,6)}.${fn:substring(indexPrice.basDt,6,8)}"/></td>
					                                    	<td><fmt:formatNumber value="${indexPrice.mkp}" pattern="#.##"/></td>
					                                    	<td><fmt:formatNumber value="${indexPrice.hipr}" pattern="#.##"/></td>
					                                    	<td><fmt:formatNumber value="${indexPrice.lopr}" pattern="#.##"/></td>
					                                    	<td><fmt:formatNumber value="${indexPrice.clpr}" pattern="#.##"/></td>
					                                    	
					                                    	<c:if test="${indexPrice.fltRt < 0}">
					                                    		<td style="color:blue">▼<c:out value="${fn:substring(indexPrice.vs,1,5)}" /></td>
                                                                <td style="color:blue"><c:out value="${indexPrice.fltRt}"/>%</td>
					                                    	</c:if>
					                                    	<c:if test="${indexPrice.fltRt > 0}">
					                                    		<td style="color:red">▲<c:out value="${fn:substring(indexPrice.vs,0,4)}" /></td>
                                                                <td style="color:red">+<c:out value="${indexPrice.fltRt}"/>%</td>
					                                    	</c:if>
					                                    	<td><fmt:formatNumber value="${indexPrice.trqu/1000}" pattern="#,#00" /></td>
					                                    	<td><fmt:formatNumber value="${indexPrice.trPrc/1000000}" pattern="#,#00" /></td>
					                                    </tr>
					                                    </c:forEach>
					                                    </c:if>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <!-- end table-responsive-->
                                            </div>
                                            <!-- end preview-->


                                            <!-- end preview code-->
                                        </div>
                                        <!-- end tab-content-->

                                    </div>
                                    <!-- end card body-->
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-md-6 col-xxl-2">
                                <div class="card" style="height:413px; width:170px">
                                    <div class="card-body" style="width:190px;">
                                        <img src="${path}/resources/resources4h/assets2/images/financeDetail.png" alt="financeDetailbanner" style="height:400px; width:220px">
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                        <div class="row">
                            <div class="col-12">
                                <div class="card" style="height:990px;">
                                    <div class="card-body">
                                        <h3 class="mice"> <a class="text-danger">KOSPI</a> 상위(시가총액기준)</h3>

                                        <div class="tab-content">
                                            <div class="tab-pane show active" id="basic-datatable-preview" role="tabpanel">
                                                <div id="basic-datatable_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">

                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <table id="basic-datatable" class="table table-striped dt-responsive nowrap w-100 dataTable no-footer dtr-inline" aria-describedby="basic-datatable_info" style="position: relative; width: 1245px;">
                                                                <thead>
                                                                    <tr>
                                                                        <th style="text-align:center">순위</th>
                                                                        <th>종목명</th>
                                                                        <th style="text-align:right;">현재가</th>
                                                                        <th style="text-align:right;">전일비</th>
                                                                        <th style="text-align:right;">등락률</th>
                                                                        <th style="text-align:center">상장주식수</th>
                                                                        <th style="text-align:center">시가총액</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:if test="${empty list}">
							                                      	<tr>
							                                      		<td colspan="6">조회된 주식이 없습니다.</td>
							                                      	</tr>
							                                    </c:if>
							                                    <c:if test="${!empty list}">
							                                    
							                                    <c:forEach var= "stockprice" items="${list}" varStatus="status">
							                                    	<tr class="odd">
							                                    		<td style="text-align:center">${status.count + (pageInfo.currentPage - 1) * 20}</td>
							                                    		<td style="text-align:left"><c:out value="${stockprice.itmsNm}" /></td>
							                                    		<td style="text-align:right;"><fmt:formatNumber value="${stockprice.clpr}"/></td>
							                                    		<c:if test="${stockprice.fltRt == 0}">
							                                    			<td>0</td>
                                                        					<td>0</td>
							                                    		</c:if>
							                                    		<c:if test="${stockprice.fltRt < 0}">                                                       
                                                                   	   		<td style="color:blue">▼<fmt:formatNumber value="${stockprice.vs*-1}" pattern="#,#00"/></td>
                                                        					<td style="color:blue"><c:out value="${stockprice.fltRt}"/>%</td>
                                                       					 </c:if>
				                                                        <c:if test="${stockprice.fltRt > 0}">                                                       
				                                                        	 <td style="color:red ">▲<fmt:formatNumber value="${stockprice.vs}" pattern="#,#00"/></td>
				                                                        	 <td style="color:red ">+<c:out value="${stockprice.fltRt}" />%</td>
				                                                        </c:if>
                                                                        <td style="text-align:center"><fmt:formatNumber value="${stockprice.lstgStCnt}" pattern="#,#00"/></td>
                                                                        <td style="text-align:center"><fmt:formatNumber value="${stockprice.mrktTotAmt}" pattern="#,#00"/></td>
							                                    	</tr>
							                                    </c:forEach>
							                                    </c:if>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <div class="row ">
                                                        <div class="col-sm-12 col-md-3 ">

                                                        </div>
                                                        <div class="col-sm-12 col-md-9 ">
                                                            <div class="dataTables_paginate paging_simple_numbers " id="basic-datatable_paginate ">
                                                                <ul class="pagination pagination-rounded ">
                                                                    <li class="paginate_button page-item previous"><a class="page-link" onclick="movePage('${path}/stockprice/fin_kospiDetail.do?page=${pageInfo.prevPage}');"><i class="mdi mdi-chevron-left "></i></a></li>
                                                                     <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                                                     <c:if test="${pageInfo.currentPage == status.current}">
                                                                    	<li class="paginate_button page-item active disabled "><a class="page-link " ><c:out value="${status.current}"/></a></li> 
                                                                     </c:if>
                                                                     <c:if test="${pageInfo.currentPage != status.current}">
                                                                    	<li class="paginate_button page-item "><a  class="page-link" onclick="movePage('${path}/stockprice/fin_kospiDetail.do?page=${status.current}');"><c:out value="${status.current}"/></a></li>
                                                                     </c:if>
                                                                     </c:forEach>                       
                                                                    <li class="paginate_button page-item next " ><a class="page-link" onclick="movePage('${path}/stockprice/fin_kospiDetail.do?page=${pageInfo.nextPage}');"><i class="mdi mdi-chevron-right "></i></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                             <script type="text/javascript">
										    	function movePage(pageUrl) {
										            location.href = encodeURI(pageUrl);
										    	}
										    </script>
                                            <!-- end preview-->

                                            <div class="tab-pane " id="basic-datatable-code " role="tabpanel ">
                                                <p>Please include following css file at <code>head</code> element</p>

                                                <pre>                                                    <span class="html escape hljs xml "><span class="hljs-comment ">&lt;!-- Datatables css --&gt;</span><br><span class="hljs-tag ">&lt;<span class="hljs-name
                                                                        ">link</span> <span class="hljs-attr ">href</span>=<span class="hljs-string ">"${path}/resources/resources4h/assets2/vendor/datatables.net-bs5/css/dataTables.bootstrap5.min.css "</span> <span class="hljs-attr ">rel</span>=<span class="hljs-string
                                                                        ">"stylesheet "</span> <span class="hljs-attr ">type</span>=<span class="hljs-string ">"text/css "</span> /&gt;</span><br><span class="hljs-tag ">&lt;<span class="hljs-name
                                                                        ">link</span> <span class="hljs-attr ">href</span>=<span class="hljs-string ">"${path}/resources/resources4h/assets2/vendor/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css "</span> <span class="hljs-attr
                                                                        ">rel</span>=<span class="hljs-string ">"stylesheet "</span> <span class="hljs-attr ">type</span>=<span class="hljs-string ">"text/css "</span> /&gt;</span></span>
                                                </pre>
                                                <!-- end highlight-->

                                                <p>Make sure to include following js files at end of <code>body</code> element</p>

                                                <pre class="mb-0 ">                                                    <span class="html escape hljs xml "><span class="hljs-comment ">&lt;!-- Datatables js --&gt;</span><br><span class="hljs-tag
                                                                        ">&lt;<span class="hljs-name ">script</span> <span class="hljs-attr ">src</span>=<span class="hljs-string ">"${path}/resources/resources4h/assets2/vendor/datatables.net/js/jquery.dataTables.min.js "</span>&gt;</span><span class="hljs-tag
                                                                        ">&lt;/<span class="hljs-name ">script</span>&gt;</span><br><span class="hljs-tag ">&lt;<span class="hljs-name ">script</span> <span class="hljs-attr ">src</span>=<span class="hljs-string ">"${path}/resources/resources4h/assets2/vendor/datatables.net-bs5/js/dataTables.bootstrap5.min.js
                                                                        "</span>&gt;</span><span class="hljs-tag ">&lt;/<span class="hljs-name ">script</span>&gt;</span><br><span class="hljs-tag ">&lt;<span class="hljs-name ">script</span> <span class="hljs-attr
                                                                        ">src</span>=<span class="hljs-string ">"${path}/resources/resources4h/assets2/vendor/datatables.net-responsive/js/dataTables.responsive.min.js "</span>&gt;</span><span class="hljs-tag ">&lt;/<span class="hljs-name
                                                                        ">script</span>&gt;</span><br><span class="hljs-tag ">&lt;<span class="hljs-name ">script</span> <span class="hljs-attr ">src</span>=<span class="hljs-string ">"${path}/resources/resources4h/assets2/vendor/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js
                                                                        "</span>&gt;</span><span class="hljs-tag ">&lt;/<span class="hljs-name ">script</span>&gt;</span><br><br><span class="hljs-comment ">&lt;!-- Datatable Init js --&gt;</span><br><span class="hljs-tag
                                                                        ">&lt;<span class="hljs-name ">script</span> <span class="hljs-attr ">src</span>=<span class="hljs-string ">"${path}/resources/resources4h/assets2/js/pages/demo.datatable-init.js "</span>&gt;</span><span class="hljs-tag
                                                                        ">&lt;/<span class="hljs-name ">script</span>&gt;</span></span>
                                                </pre>
                                                <!-- end highlight-->

                                                <pre class="mb-0 ">                                                    <span class="html escape hljs xml "><span class="hljs-tag ">&lt;<span class="hljs-name ">table</span> <span class="hljs-attr
                                                                        ">id</span>=<span class="hljs-string ">"basic-datatable "</span> <span class="hljs-attr ">class</span>=<span class="hljs-string ">"table dt-responsive nowrap w-100 "</span>&gt;</span><br>    <span class="hljs-tag
                                                                        ">&lt;<span class="hljs-name ">thead</span>&gt;</span><br>        <span class="hljs-tag ">&lt;<span class="hljs-name ">tr</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name
                                                                        ">th</span>&gt;</span>Name<span class="hljs-tag ">&lt;/<span class="hljs-name ">th</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">th</span>&gt;</span>Position<span class="hljs-tag
                                                                        ">&lt;/<span class="hljs-name ">th</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">th</span>&gt;</span>Office<span class="hljs-tag ">&lt;/<span class="hljs-name
                                                                        ">th</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">th</span>&gt;</span>Age<span class="hljs-tag ">&lt;/<span class="hljs-name ">th</span>&gt;</span><br>            <span class="hljs-tag
                                                                        ">&lt;<span class="hljs-name ">th</span>&gt;</span>Start date<span class="hljs-tag ">&lt;/<span class="hljs-name ">th</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name
                                                                        ">th</span>&gt;</span>Salary<span class="hljs-tag ">&lt;/<span class="hljs-name ">th</span>&gt;</span><br>        <span class="hljs-tag ">&lt;/<span class="hljs-name ">tr</span>&gt;</span><br>    <span class="hljs-tag
                                                                        ">&lt;/<span class="hljs-name ">thead</span>&gt;</span><br><br><br>    <span class="hljs-tag ">&lt;<span class="hljs-name ">tbody</span>&gt;</span><br>        <span class="hljs-tag ">&lt;<span class="hljs-name
                                                                        ">tr</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">td</span>&gt;</span>Tiger Nixon<span class="hljs-tag ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>            <span class="hljs-tag
                                                                        ">&lt;<span class="hljs-name ">td</span>&gt;</span>System Architect<span class="hljs-tag ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name
                                                                        ">td</span>&gt;</span>Edinburgh<span class="hljs-tag ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">td</span>&gt;</span>61<span class="hljs-tag
                                                                        ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">td</span>&gt;</span>2011/04/25<span class="hljs-tag ">&lt;/<span class="hljs-name
                                                                        ">td</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">td</span>&gt;</span>$320,800<span class="hljs-tag ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>        <span class="hljs-tag
                                                                        ">&lt;/<span class="hljs-name ">tr</span>&gt;</span><br>        <span class="hljs-tag ">&lt;<span class="hljs-name ">tr</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name
                                                                        ">td</span>&gt;</span>Garrett Winters<span class="hljs-tag ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">td</span>&gt;</span>Accountant<span class="hljs-tag
                                                                        ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">td</span>&gt;</span>Tokyo<span class="hljs-tag ">&lt;/<span class="hljs-name
                                                                        ">td</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name ">td</span>&gt;</span>63<span class="hljs-tag ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>            <span class="hljs-tag
                                                                        ">&lt;<span class="hljs-name ">td</span>&gt;</span>2011/07/25<span class="hljs-tag ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>            <span class="hljs-tag ">&lt;<span class="hljs-name
                                                                        ">td</span>&gt;</span>$170,750<span class="hljs-tag ">&lt;/<span class="hljs-name ">td</span>&gt;</span><br>        <span class="hljs-tag ">&lt;/<span class="hljs-name ">tr</span>&gt;</span><br>    <span class="hljs-tag
                                                                        ">&lt;/<span class="hljs-name ">tbody</span>&gt;</span><br><span class="hljs-tag ">&lt;/<span class="hljs-name ">table</span>&gt;</span></span>
                                                </pre>
                                                <!-- end highlight-->
                                            </div>
                                            <!-- end preview code-->
                                        </div>
                                        <!-- end tab-content-->

                                    </div>
                                    <!-- end card body-->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col-->
                        </div>
                        <!-- end row-->
                    </div>
                    <!-- container -->

                </div>
                <!-- content -->



            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	<script src="${path}/resources/resources4h/assets2/js/pages/demo.dashboard-wallet.js "></script>
	  
</body>
</html>