<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | News | Main</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>   
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
    <!-- 상단 빈티지 느낌 -->
    <div class="position-absolute start-50 translate-middle-x w-100 opacity-9 z-index-n1">
        <img src="${path}/resources/resources1b/images/vintage-pattern.png" alt="">
    </div>
    <!-- 상단 빈티지 느낌 -->
    <!-- 뉴스테마 상단 -->
    <div>
        <div class="container">
            <div class="d-sm-flex justify-content-sm-between align-items-sm-center" style="margin-top:48px;">
                <div class="text-center text-md-start">
                </div>
                <!-- Logo START -->
                <a class="navbar-brand d-block" href="index.html">
                    <img class="navbar-brand-item light-mode-item" src="${path}/resources/resources1b/images/logo-2.svg" alt="logo" style="height: 46px;">
                    <img class="navbar-brand-item dark-mode-item mx-auto" src="${path}/resources/resources1b/images/logo-2-light.svg" alt="logo" style="height: 46px;">
                </a>
                <!-- Logo END -->
                <!-- Adv -->
                <div class="d-flex justify-content-center justify-content-md-end">
                </div>
            </div>
        </div>
    </div>
    <!-- ======================= 뉴스 상단 끝 -->
    <!-- **************** MAIN CONTENT START **************** -->
    <main>
        <!-- ======================= Recent post START -->
        <section class="py-0 card-grid position-relative">
            <div class="container">
                <div class="row g-4">
                    <!-- 좌측 사이드바 -->
                    <div class="col-lg-3">
                        <div class="row g-4">
                            <div class="col-sm-6 col-lg-12">
                                <h3 class="mb-3 mice text-center">뉴스 검색</h3>
                                <!-- Search -->
                                <div class="col-md-12">
                                    <form class="rounded position-relative" action="${path}/news/search" method="get">
                                        <input name="searchKeyword" class="form-control pe-5 bg-transparent" type="search" placeholder="검색어를 입력해주세요." aria-label="Search" value="${param.searchKeyword}">
                                        <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="bi bi-search fs-5"></i></button>
                                    </form>
                                </div>
                                <br>
                                <h3 class="mb-3 mice">최근 기사</h3>
                                <c:forEach var="newNews" items="${newList}">
	                                <!-- Recent post item -->
	                                <div class="card mb-3">
	                                    <h6 class="mb-1"><a href="${path}/news/post?newsNo=${newNews.newsNo}" class="btn-link stretched-link text-reset fw-bold">
	                                 	   ${newNews.title}
	                                    </a></h6>
	                                </div>                          
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- 좌측 사이드바 끝 -->
                    <!-- 중앙바 -->
                    <c:forEach var="bigList" items="${bigList}" varStatus="status">
                    <div class="col-lg-6">
                        <!-- Card item START -->
                        <div class="card">
                            <!-- Card img -->
                            <div class="position-relative">
                                <img class="card-img rounded-0 grayscale" src="${bigList.image}" alt="Card image">
                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                    <!-- Card overlay bottom -->
                                    <div class="w-100 mt-auto">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3" style="overflow: hidden;height: 167px;text-overflow: ellipsis">
                                <h4 class="card-title mice"><a href="${path}/news/post?newsNo=${bigList.newsNo}" class="btn-link text-reset fw-bold">${bigList.title}</a></h4><br>
                                <p class="card-text">${bigList.description}</p>
                            </div>
                        </div>
                        <!-- Card item END -->
                    </div>
                    </c:forEach>
                    <!-- 중앙바 끝 -->
                    <!-- 우측 사이드바 -->
                    <div class="col-lg-3">
                        <h3 class="mb-3 mice">많이 본 기사</h3>
                        <!-- Post item -->
                        <c:if test="${!empty hotList}">
	                        <c:forEach var="opinion" items="${opinionList}" varStatus="status" step="1" begin="1" end="8">
		                        <div class="d-flex position-relative mb-3">
		                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">0${status.count}</span>
		                            <div>
		                                <h6><a href="${path}/news/post?newsNo=${opinion.newsNo}" class="stretched-link text-reset btn-link">${opinion.title}</a></h6>
		                            </div>
		                        </div>
	                        </c:forEach>
                        </c:if>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="border-bottom border-secondary opacity-2 mb-0 mt-4"></div>
        </div>
        <section class="py-4">
            <div class="container">
                <div class="row g-4 flex-fill">
                    <!-- Title -->
                    <div class="col-12">
                        <h3 class="mice"> 화제의 기사 </h3>
                    </div>  
                    <c:forEach var="hotNews" items="${hotList}">
	                    <!-- Card item START -->
	                    <div class="col-sm-6 col-lg-3">
	                        <div class="card bg-transparent">
	                            <!-- Card img -->
	                            <img class="card-img rounded-0 grayscale" src="${hotNews.image}" style="width:400px; height:200px;" alt="Card image">
	                            <div class="card-body px-0 pt-3">
	                                <h5 class="card-title"><a href="${path}/news/post?newsNo=${hotNews.newsNo}" class="btn-link text-reset fw-bold stretched-link">${hotNews.title}</a></h5>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- Card item END -->
                    </c:forEach>     
                </div>
            </div>
        </section>
        <!-- ======================= Featured stories END -->
        <!-- ======================= World politics and Business Sidebar START -->
        <section class="py-4">
            <div class="container">
                <div class="row g-4">
                    <!-- World politics START -->
                    <div class="col-lg-8">
                        <!-- ======================= 유튜브 시작 -->
                        <section class="bg-light rounded-3">
                            <div class="container">
                                <div class="row g-4">
                                    <div class="col-md-12">
                                        <!-- Title -->
                                        <div class="d-sm-flex justify-content-between align-items-center">
                                            <h2 class="m-sm-0 text-dark mice">영상 뉴스</h2>
                                            <a href="#" class="btn btn-sm bg-youtube"><i class="bi bi-youtube me-2 align-middle"></i>Subscribe us on YouTube</a>
                                        </div>
                                    </div>
                                    <!-- 유튜브 왼위 -->
                                    <div class="col-lg-6 col-lg-3 grayscale_youtube">
                                        <!-- Card item START -->
                                        <div class="card bg-transparent overflow-hidden">
                                            <!-- Card img -->
                                            <div class="position-relative rounded-3 overflow-hidden">
                                                <img class="card-img" class=".graysclae_img_2" src="${path}/resources/resources1b/images/news/mainvideo1.jpg" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://www.youtube.com/watch?v=MrLCV-bOnxg&ab_channel=MBCNEWS" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h5 class="card-title mice"><a href="https://www.youtube.com/watch?v=MrLCV-bOnxg&ab_channel=MBCNEWS" class="btn-link text-dark fw-bold">"엔화 추락은 국력저하 탓".. "일본은 중진국" 경고까지</a></h5>
                                        </div>
                                        <!-- Card item END -->
                                    </div>
                                    <!-- 유튜브 오위-->
                                    <div class="col-lg-6 col-lg-3 grayscale_youtube">
                                        <!-- Card item START -->
                                        <div class="card bg-transparent overflow-hidden">
                                            <!-- Card img -->
                                            <div class="position-relative rounded-3 overflow-hidden">
                                                <img class="card-img" src="${path}/resources/resources1b/images/news/mainvideo2.jpg" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://www.youtube.com/watch?v=FXl_1offYJU&ab_channel=KBSNews" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title mice"><a href="https://www.youtube.com/watch?v=FXl_1offYJU&ab_channel=KBSNews" class="btn-link text-dark fw-bold">한국 경제 ‘사면초가’</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Card item END -->
                                    <!-- 유튜브 왼아래-->
                                    <div class="col-lg-6 col-lg-3 grayscale_youtube">
                                        <!-- Card item START -->
                                        <div class="card bg-transparent overflow-hidden">
                                            <!-- Card img -->
                                            <div class="position-relative rounded-3 overflow-hidden">
                                                <img class="card-img" src="${path}/resources/resources1b/images/news/mainvideo3.jpg" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://www.youtube.com/watch?v=l8bDuSaMwQ0&ab_channel=YTN" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title mice"><a href="https://www.youtube.com/watch?v=l8bDuSaMwQ0&ab_channel=YTN" class="btn-link text-dark fw-bold">흔들리는 미국 경제...소비 위축에 집값은 '추락'</a></h5>
                                            </div>
                                        </div>
                                        <!-- Card item END -->
                                    </div>
                                    <!-- 유튜브 오른아래-->
                                    <div class="col-lg-6 col-lg-3 grayscale_youtube">
                                        <!-- Card item START -->
                                        <div class="card bg-transparent overflow-hidden">
                                            <!-- Card img -->
                                            <div class="position-relative rounded-3 overflow-hidden">
                                                <img class="card-img" src="${path}/resources/resources1b/images/news/mainvideo4.jpg" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://www.youtube.com/watch?v=0HyGDcESyMo&ab_channel=MBCNEWS" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title mice"><a href="https://www.youtube.com/watch?v=0HyGDcESyMo&ab_channel=MBCNEWS" class="btn-link text-dark fw-bold">"미국 주택 가격 이제 떨어지기 시작‥지나치게 과대평가"</a></h5>
                                            </div>
                                        </div>
                                        <!-- Card item END -->
                                    </div>
                                    <!-- Card small START -->
                                </div>
                            </div>
                        </section>
                        <!-- ======================= 유튜브 끝 -->
                    </div>
                    <!-- World politics END -->
                    <!-- Business Sidebar START -->
                    <div class="col-lg-4">
                        <h3 class="mb-3 mice">금융</h3>
                        <div class="bg-light rounded-3">
                        	<c:forEach var="categoryList" items="${categoryList}" varStatus="status">
                        		<c:if test="${categoryList.category eq 'economy'}">
		                            <div class="card bg-light mb-3">
		                                <div class="card-body">
		                                    <h4 class="card-title"><a href="${path}/news/post?newsNo=${categoryList.newsNo}" class="btn-link stretched-link text-reset">${categoryList.title}</a></h4>
		                                </div>
		                                <!-- Card image -->
		                                <img src="${categoryList.image}" class="grayscale rounded-0" alt="Card image">
		                            </div>
                               	</c:if>
                            </c:forEach>
                            <c:forEach var="economy" items="${economyList}" begin="1" end="5">
	                            <div class="card card-body bg-light">
	                                <h6 class="card-title"><a href="${path}/news/post?newsNo=${economy.newsNo}" class="btn-link text-reset stretched-link fw-bold">${economy.title}</a></h6>
	                                <div class="border-bottom border-secondary opacity-2 mb-0 mt-1"></div>
	                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- Business Sidebar END -->
                </div>
            </div>
        </section>
        <div class="container">
            <div class="border-bottom border-secondary opacity-2 mb-0 mt-2"></div>
        </div>
        <section class="pt-4 pt-sm-5 pb-3 pb-sm-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <!-- Title -->
                        <h4 class="mb-3 mice">경제</h4>
                        	<!-- Card Item START -->
	                        <c:forEach var="categoryList" items="${categoryList}" varStatus="status">
                       			<c:if test="${categoryList.category eq 'opinion'}">
			                        <div class="card mb-3">
			                            <div class="row g-3">
			                                <div class="col-4">
			                                    <!-- Card image -->
			                                    <img class="rounded-0 grayscale" src="${categoryList.image}" style="width:160px; height:80px;">
			                                </div>
			                                <div class="col-8">
			                                    <h5><a href="${path}/news/post?newsNo=${categoryList.newsNo}" class="btn-link stretched-link text-reset">${categoryList.title}</a></h5>
			                                    <!-- Card info -->
			                                    <ul class="nav nav-divider align-items-center mt-3 small"></ul>
			                                </div>
			                            </div>
			                        </div>
		                        </c:if>
                            </c:forEach>
                        <c:if test="${!empty economyList}">
	                        <!-- Card Item END -->
	                        <c:forEach var="economy" items="${economyList}" begin="1" end="4">
		                        <!-- Card Item START -->
		                        <div class="card mb-3">
		                            <h6><a href="${path}/news/post?newsNo=${economy.newsNo}" class="btn-link stretched-link text-reset">${economy.title}</a></h6>
		                            <!-- Card info -->
		                            <ul class="nav nav-divider align-items-center mt-1 small"></ul>
		                        </div>
		                        <!-- Card Item END -->
		                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>   
	                        </c:forEach>
                        </c:if>                   
                    </div>
                    <div class="col-md-4">
                        <!-- Title -->
                        <h4 class="mb-3 mice">정치</h4>
	                        <!-- Card Item START -->
	                        <c:forEach var="categoryList" items="${categoryList}" varStatus="status">
                       			<c:if test="${categoryList.category eq 'politics'}">
			                        <div class="card mb-3">
			                            <div class="row g-3">
			                                <div class="col-4">
			                                    <!-- Card image -->
			                                    <img style="height:80px;" class="rounded-0 grayscale" src="${categoryList.image}">
			                                </div>
			                                <div class="col-8">
			                                    <h5><a href="${path}/news/post?newsNo=${categoryList.newsNo}" class="btn-link stretched-link text-reset">${categoryList.title}</a></h5>
			                                    <!-- Card info -->
			                                    <ul class="nav nav-divider align-items-center mt-3 small"></ul>
			                                </div>
			                            </div>
			                        </div>
		                        </c:if>
                            </c:forEach>
                        	<!-- Card Item END -->
	                       	<c:if test="${!empty politicsList}">
	                       		<c:forEach var="politics" items="${politicsList}" begin="1" end="4">
			                        <!-- Card Item START -->
			                        <div class="card mb-3">
			                            <h6><a href="${path}/news/post?newsNo=${politics.newsNo}" class="btn-link stretched-link text-reset">${politics.title}</a></h6>
			                            <!-- Card info -->
			                            <ul class="nav nav-divider align-items-center mt-1 small"></ul>
			                        </div>
			                        <!-- Card Item END -->
			                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>
		                        </c:forEach>
	                        </c:if>
	                    </div>
                    <div class="col-md-4">
                        <!-- Title -->
                        <h4 class="mb-3 mice">사회</h4>
	                        <!-- Card Item START -->
	                        <c:forEach var="categoryList" items="${categoryList}" varStatus="status">
	                   			<c:if test="${categoryList.category eq 'national'}">
			                        <div class="card mb-3">
			                            <div class="row g-3">
			                                <div class="col-4">
			                                    <!-- Card image -->
			                                    <img class="rounded-0 grayscale" src="${categoryList.image}">
			                                </div>
			                                <div class="col-8">
			                                    <h5><a href="${path}/news/post?newsNo=${categoryList.newsNo}" class="btn-link stretched-link text-reset">${categoryList.title}</a></h5>
			                                    <!-- Card info -->
			                                    <ul class="nav nav-divider align-items-center mt-3 small"></ul>
			                                </div>
			                            </div>
			                        </div>
                       			</c:if>
                            </c:forEach>
                        <!-- Card Item END -->
                        <c:if test="${!empty nationalList}">
                        <!-- Card Item START -->
                        <c:forEach var="national" items="${nationalList}" begin="1" end="4">
                        <div class="card mb-3">
                            <h6><a href="${path}/news/post?newsNo=${national.newsNo}" class="btn-link stretched-link text-reset">${national.title}</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small"></ul>
                        </div>
                        <!-- Card Item END -->
                        <!-- Divider  -->
                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>
                        </c:forEach>
                        </c:if>
                    </div>
                </div>
            </div>
        </section>
        <!-- ======================= Sports, most read and Entertainment END -->
    </main>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>