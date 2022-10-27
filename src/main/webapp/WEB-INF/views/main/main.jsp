<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<style>
.target {
    /* 한 줄 자르기 */
    display: inline-block;
    width: 420px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;

    /* 여러 줄 자르기 추가 스타일 */
    white-space: normal;
    line-height: 1.2;
    height: 3.6em;
    text-align: left;
    word-wrap: break-word;
    display: -webkit-box;
    -webkit-line-clamp: 4;
    -webkit-box-orient: vertical;
}
</style>

<head>
    <title>FinTouch - 신속하고 정확한 금융지식전달을 위해 노력합니다. </title>
        <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
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
                                            <a type="button " class="btn btn-outline-white" href="${path}/stockprice/fin_main.do">S T A R T &nbsp;&nbsp; E X P L O R I N G&nbsp;&nbsp;  F I N A N C E &nbsp;&nbsp; > </a>
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
                                                    <a href="${path}/stockprice/fin_main.do" class="badge text-bg-danger mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Finance</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white ">
                                                        <a href="${path}/stockprice/fin_main.do" class="btn-link text-reset fw-bold">오늘의 주식시장을 확인해보세요!</a></h4>
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
                                                    <a href="${path}/RealEstate/main" class="badge text-bg-warning mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Real Estate</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white "><a href="${path}/RealEstate/main" class="btn-link text-reset fw-bold ">주거고민이 있으신가요?</a></h4>
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
                                                    <a href="${path}/opinion" class="badge text-bg-success mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Opinion</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white "><a href="${path}/opinion" class="btn-link text-reset fw-bold ">각 분야 전문가들의 기고/칼럼</a></h4>
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
                <!-- =======================  그래프 시작 -->
                <section style="margin-top: -10px; margin-bottom: -20px;">
                    <div class="container" style="margin: top 50px;">
                        <div class="row">
                            <div class="col-1">
                                <h5 class="mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">KOSPI</h5>
                                <c:if test="${empty list1}">
                                	<h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">조회불가</h3>                                
                                </c:if>
                                <c:if test="${!empty list1}">
                                <c:forEach var="indexPrice" items="${list1}"  begin="0" end="0" step="1" varStatus="status">									
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;"><c:out value="${fn:substring(indexPrice.clpr,0,1)}" />,<c:out value="${fn:substring(indexPrice.clpr,1,7)}" /></h3>
                                <p class="mb-0 text-muted">
                                	<c:if  test="${indexPrice.fltRt < 0}">
	                                    <span class="text-danger me-2"><i class="mdi mdi-arrow-up-bold" style="color:red"></i><c:out value="${indexPrice.vs}" />(<c:out value="${indexPrice.fltRt}"/>%)</span>                                	
                                	</c:if>
                                	<c:if  test="${indexPrice.fltRt > 0}">
	                                    <span style="color:rgb(2, 162, 16)"><i class="mdi mdi-arrow-up-bold" style="color:red"></i>+<c:out value="${indexPrice.vs}" />(+<c:out value="${indexPrice.fltRt}"/>%)</span>                                	
                                	</c:if>
                                </p>                             
                                </c:forEach>
                                </c:if>
                            </div>
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 30px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <c:forEach var="indexPrice" items="${list1}"  begin="0" end="0" step="1" varStatus="status">
                                    <c:if  test="${indexPrice.fltRt < 0}">
	                                    <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div>                                    
                                    </c:if>
                                    <c:if  test="${indexPrice.fltRt > 0}">
	                                    <div id="basic-area1" class="apex-charts" data-colors="#008000"></div>                                    
                                    </c:if>
                                    </c:forEach>
                                    <!-- 하락장일때-->
                                </div>
                            </div>
                            <div class="col-1">
                                <h5 class="mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">KOSDAQ</h5>
                                <c:if test="${empty list2}">
                                	<h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">조회불가</h3>                                
                                </c:if>
                                <c:if test="${!empty list2}">
                                <c:forEach var="indexPrice" items="${list2}"  begin="0" end="0" step="1" varStatus="status">									
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;"><c:out value="${indexPrice.clpr}" /></h3>
                                <p class="mb-0 text-muted">
                                	<c:if  test="${indexPrice.fltRt < 0}">
	                                    <span class="text-danger me-2"><i class="mdi mdi-arrow-up-bold" style="color:red"></i><c:out value="${indexPrice.vs}" />(<c:out value="${indexPrice.fltRt}"/>%)</span>                                	
                                	</c:if>
                                	<c:if  test="${indexPrice.fltRt > 0}">
	                                    <span style="color:rgb(2, 162, 16)"><i class="mdi mdi-arrow-up-bold" style="color:red"></i>+<c:out value="${indexPrice.vs}" />(+<c:out value="${indexPrice.fltRt}"/>%)</span>                                	
                                	</c:if>
                                </p>                             
                                </c:forEach>
                                </c:if>
                            </div>
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 30px;">
                                    <c:forEach var="indexPrice" items="${list1}"  begin="0" end="0" step="1" varStatus="status">
                                    <c:if  test="${indexPrice.fltRt < 0}">
	                                    <div id="basic-area2" class="apex-charts" data-colors="#fa6767"></div>                                    
                                    </c:if>
                                    <c:if  test="${indexPrice.fltRt > 0}">
	                                    <div id="basic-area2" class="apex-charts" data-colors="#008000"></div>                                    
                                    </c:if>
                                    </c:forEach>
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
            <!-- ======================= 그래프 끝 -->
            <!-- ======================= 뉴스 시작 -->
            <section class="py-0 card-grid mb-4">
                <div class="container">
                    <div class="row">
                        <!-- Slider START -->
                        <div class="col-lg-7">
                        	<c:forEach var="newsBig" items="${newsBig}"  begin="0" end="0" step="5" varStatus="status">
	                            <div class="tiny-slider arrow-hover arrow-blur arrow-round rounded-3">
	                                <div class="tiny-slider-inner" data-autoplay="false" data-hoverpause="true" data-gutter="0" data-arrow="true" data-dots="false" data-items="1">
	                                    <div class="card card-overlay-bottom card-bg-scale h-400 h-lg-560 rounded-0" style="background-image:url(${newsBig.image}); background-position: center left; background-size: cover;">
	                                        <!-- 왼쪽 위 큰 기사 -->
	                                        <div class="card-img-overlay d-flex flex-column p-3 p-sm-5">
	                                            <div class="w-100 mt-auto">
	                                                <div class="col">
	                                                    <!-- 카테고리 -->
	                                                    <c:choose>
	                                               			<c:when test="${newsBig.category eq 'politics'}">                                                    	
	                                                       		<a class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
	                                                    	</c:when>
	                                                    	<c:when test="${newsBig.category eq 'national'}">                                                    	
	                                                        	<a class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
	                                                    	</c:when>
	                                                    	<c:when test="${newsBig.category eq 'economy'}">                                                    	
	                                                        	<a class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
	                                                    	</c:when>
	                                                    	<c:when test="${newsBig.category eq 'opinion'}">                                                    	
	                                                        	<a class="badge text-bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Opinion</a>
	                                                    	</c:when>
	                                                   	</c:choose>
	                                                    <!-- 기사제목 / 내용일부 -->
	                                                    <h3 class="text-white display-6 mice"><a href="${path}/news/post?newsNo=${newsBig.newsNo}" class="btn-link text-reset stretched-link fw-normal">${newsBig.title}</a></h3>
	                                                    <div style="oveerflow:hidden; white-space:nowrap; text-overflow:ellipsis;" class="text-white">${newsBig.description}</div>
	                                                    <!-- 작성일자 -->
	                                                    <ul class="nav nav-divider text-white-force align-items-center d-none d-sm-inline-block">
	                                                        <p class="nav-item"><fmt:formatDate pattern="yyyy. MM. dd. HH:mm" value="${newsBig.pubDate}"/></p>
	                                                    </ul>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                            </c:forEach>
                        </div>
                        <!-- 오른쪽 기사 -->
                        <div class="col-lg-5 mt-5 mt-lg-0">
	                        <c:forEach var="newscategory" items="${newscategory}" varStatus="status">
	                            <!-- 오른쪽 기사 1 -->
	                            <div class="card mb-3">
	                                <div class="row g-3">
	                                    <div class="col-4">
	                                        <img class="rounded-3" src="${newscategory.image}" style="width: 150px; height: 125px;">
	                                    </div>
	                                    <div class="col-8">
	                                    	<!-- 카테고리 -->
                                            <c:choose>
                                       			<c:when test="${newscategory.category eq 'politics'}">                                                    	
                                               		<a class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                            	</c:when>
                                            	<c:when test="${newscategory.category eq 'national'}">                                                    	
                                                	<a class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                            	</c:when>
                                            	<c:when test="${newscategory.category eq 'economy'}">                                                    	
                                                	<a class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                            	</c:when>
                                            	<c:when test="${newscategory.category eq 'opinion'}">                                                    	
                                                	<a class="badge text-bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Opinion</a>
                                            	</c:when>
                                           	</c:choose>
	                                        <h5><a href="${path}/news/post?newsNo=${newscategory.newsNo}" class="btn-link text-reset stretched-link fw-bold mice">${newscategory.title}</a></h5>
	                                        <p class="nav-item"><fmt:formatDate pattern="yyyy. MM. dd. HH:mm" value="${newscategory.pubDate}"/></p>
	                                    </div>
	                                </div>
	                            </div>
                            <!-- Card item END -->
                            </c:forEach>
                        </div>
                    </div>
                    <!-- Row END -->
                </div>
            </section>
            <!-- ======================= Main hero END -->

            <!-- ======================= 카드로 보는 뉴스 시작 -->
            <section class="position-relative" style="margin-top: -60px;">
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
                                    <!-- 카드뉴스 시작 -->
                                    <c:if test="${empty listMain}">
											<div class="d-flex position-relative mb-3">
												<h6>조회된 카드뉴스가 없습니다.</h6>
											</div>
									</c:if>
									<c:if test="${!empty listMain}">
									<c:forEach var="cardcutTop" items="${listMain}" begin="0" end="4" step="1" varStatus="status">
                                    <div class="card">
                                        <div class="position-relative">
                                            <img class="card-img" src="${cardcutTop.images[0]}" alt="Card image" style="width:400px; height:400px;">
                                            <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-2">
                                            <h4 class="card-title mice"><a href="${path}/politics/cardCutDetail?cardCutNo=${cardcutTop.cardCutNo}" class="btn-link text-reset fw-bold">${cardcutTop.title}</a></h4>
                                        </div>
                                        <div class = "target" style="margin-top: -20px;">
                                            <p class="card-text "> ${cardcutTop.content}</p>
                                        </div>
                                        <div class="mt-2">
                                            <fmt:formatDate pattern="yyyy. MM. dd. HH:mm" value="${cardcutTop.pubDate}"/> 
                                        </div>
                                    </div>
                                    </c:forEach>
									</c:if>
                                    <!-- 카드뉴스 끝 -->
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
                                            <h3 class="m-0 mice "><i class="bi bi-bell-fill m-2"></i><a class="text-dark">&nbsp;오늘<a class="text-danger">모집시작</a>청약</a>
                                            </h3>
                                            <div class="card card-body bg-warning bg-opacity-15 p-4 h-75 text-center">
                                                <h3 id="current_date"></h3>
                                                <h1 class="fs-1 text-danger">${mainCount}개</h1>
                                                <div class="mt-auto"><a href="${path}/RealEstate/list" class="btn btn-link text-reset p-0 mb-0">일정 확인하러 가기!</a></div>
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
                                    <a class="d-flex justify-content-between align-items-center bg-facebook text-white-force rounded p-2 position-relative ">
                                        <i class="fab fa-facebook-square fs-3 "></i>
                                        <div class="d-flex ">
                                            <h6 class="me-1 mb-0 ">1.5K</h6>
                                            <small class="small ">Fans</small>
                                        </div>
                                    </a>
                                    <a class="d-flex justify-content-between align-items-center bg-instagram-gradient text-white-force rounded p-2 position-relative ">
                                        <i class="fab fa-instagram fs-3 "></i>
                                        <div class="d-flex ">
                                            <h6 class="me-1 mb-0 ">1.8M</h6>
                                            <small class="small ">Followers</small>
                                        </div>
                                    </a>
                                    <a class="d-flex justify-content-between align-items-center bg-youtube text-white-force rounded p-2 position-relative ">
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
                                        <a class="badge bg-warning text-dark stretched-link ">09</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-info bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-info ">소상공인 대출</h6>
                                        <a class="badge bg-info stretched-link ">25</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-danger bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-danger ">전세피해지원센터</h6>
                                        <a class="badge bg-danger stretched-link ">75</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-primary bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-primary ">세계 전기차 점유율</h6>
                                        <a class="badge bg-primary stretched-link ">19</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-success bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-success ">복지멤버십</h6>
                                        <a class="badge bg-success stretched-link ">35</a>
                                    </div>
                                </div>
                                <!-- 커뮤니티 실시간 -->
                                <div>
	                            <c:if test="${empty sideList}">
									<div class="d-flex position-relative mb-3">
										<h6>조회된 글이 없습니다.</h6>
									</div>
								</c:if>
								<c:if test="${not empty sideList}">
	                                <h5 class="mt-5 mb-3">실시간<span style="color:#2163E8">커뮤니티</span>인기글</h5>
										<c:forEach var="board" items="${sideList}" varStatus="status">
		                                <div class="d-flex position-relative mb-3">
		                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">
		                                    <fmt:formatNumber type="number" pattern="##" minIntegerDigits="2" value="${board.rownum}"/></span>
		                                    <h6><a href="${path}/board/BoardDetail?board_no=${board.board_no}" class="stretched-link text-reset btn-link"><c:out value="${board.board_title}"/></a></h6>
		                                </div>
	                                	</c:forEach>
	                               </c:if>
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
            <section class="bg-dark "  style="margin-top: -20px;">
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
                        <h2 class="mice "><i class="fa fa-solid fa-pen-nib" style="margin-right:10px;"></i>오피니언</h2>
                        <div class="col-12 ">
                            <div class="tiny-slider arrow-blur arrow-round rounded-3 overflow-hidden">
                                <div class="tiny-slider-inner " data-autoplay="true " data-hoverpause="true " data-gutter="24 " data-arrow="true " data-dots="false " data-items-xl="4 " data-items-lg="3 " data-items-md="3 " data-items-sm="2" data-items-xs="1 ">
	                               <!-- 오피니언 4 -->
                               	<c:forEach var="opinion" items="${opinion}" varStatus="status">
			  						<div style="margin-right: -50px;">
                                    	<div class="card card-overlay-bottom card-img-scale" style="width: 220px; height: 280px;">
	                                        <!-- Card Image -->
	                                        <img class="card-img " src="${opinion.imageUrl}" style="width: 220px; height: 280px;">
	                                        <!-- Card Image overlay -->
                                        	<div class="card-img-overlay d-flex flex-column p-3 p-sm-4">
	                                            <div class="w-100 mt-auto" style="margin-bottom:-20px;">
                                               		<h5 class="text-white mice"><a href="${path}/opinion/opinionDetail?opinionNo=${opinion.opinionNo}" class="btn-link text-reset stretched-link">${opinion.title}</a></h5>
                                            	</div>
                                        	</div>
	                                    </div>
	                                    <div style="margin-top:30px;" class="card-body ps-0">
                                        	<h5 class="nav-item mb-0 mice text-center" style="width: 220px;"><a href="${path}/opinion/opinionDetail?opinionNo=${opinion.opinionNo}">${opinion.columnist}</a></h5>
                                        	<p class="nav-item text-center" style="width: 220px;"><fmt:formatDate pattern="yyyy. MM. dd. HH:mm" value="${opinion.pubDate}"/></p>
                                  		</div>
                                	</div>
                            	</c:forEach>
                        	</div>
                    	</div>
                	</div>
            	</div>
        	</div>
    	</section>


<!-- ======================= script 시작 =======================-->

<!-- 모집시작 청약 현재 날짜 -->
   <script>
	date = new Date();
	year = date.getFullYear();
	month = date.getMonth() + 1;
	day = date.getDate();
	document.getElementById("current_date").innerHTML = year + "-" + month
			+ "-" + day;
</script>
    <!-- =======================오피니언 끝 =======================-->
	</main>
	<%@ include file="/WEB-INF/views/common/footerDark.jsp" %>
  
</body>

</html>