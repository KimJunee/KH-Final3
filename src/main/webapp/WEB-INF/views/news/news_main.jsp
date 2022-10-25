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
                    <div class="col-lg-6">
                        <!-- Card item START -->
                        <div class="card">
                            <!-- Card img -->
                            <div class="position-relative">
                                <img class="card-img rounded-0 grayscale" src="${path}/resources/resources1b/images/news/headnews.jpg" alt="Card image">
                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                    <!-- Card overlay bottom -->
                                    <div class="w-100 mt-auto">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3">
                                <h4 class="card-title mice"><a href="${path}/news/post" class="btn-link text-reset fw-bold">SPC 16개사 산재사고 5년간 759건… “2인1조 엄격하게 안지켜”</a></h4><br>
                                <p class="card-text">SPC그룹 계열사인 SPL 경기 평택시 제빵공장에서 근로자 A 씨(23)가 사망한 지 8일 만에 SPC 계열사인 경기 성남시 샤니 제빵공장에서 40대 근로자의 손가락이 절단되는 사고가 발생하며 SPC그룹의 안전관리 체계에 대한 논란이 커지고 있다. 24일 국회에서 열린 환경노동위원회의 고용노동부 국정감사에서는 여야를 막론하고 SPC그룹에 대한 질타가 이어졌다.</p>
                            </div>
                        </div>
                        <!-- Card item END -->
                    </div>
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
                        <section class="bg-light">
                            <div class="container">
                                <div class="row g-4">
                                    <div class="col-md-12">
                                        <!-- Title -->
                                        <div class="d-sm-flex justify-content-between align-items-center">
                                            <h2 class="m-sm-0 text-dark">영상 뉴스</h2>
                                            <a href="#" class="btn btn-sm bg-youtube"><i class="bi bi-youtube me-2 align-middle"></i>Subscribe us on YouTube</a>
                                        </div>
                                    </div>
                                    <!-- 유튜브 왼위 -->
                                    <div class="col-lg-6 col-lg-3 grayscale_youtube">
                                        <!-- Card item START -->
                                        <div class="card bg-transparent overflow-hidden">
                                            <!-- Card img -->
                                            <div class="position-relative rounded-3 overflow-hidden">
                                                <img class="card-img" class=".graysclae_img_2" src="https://i.ytimg.com/an_webp/VjCL9IL2reE/mqdefault_6s.webp?du=3000&sqp=COGu3JoG&rs=AOn4CLD99ZvaSuK0qXNLWDSTxoYlnoifcw" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://www.youtube.com/watch?v=VjCL9IL2reE&ab_channel=KBSNews" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h5 class="card-title"><a href="podcast-single.html" class="btn-link text-dark fw-bold">불매운동 확산에 SPC “반품 받겠다”</a></h5>

                                        </div>
                                        <!-- Card item END -->
                                    </div>
                                    <!-- 유튜브 오위-->
                                    <div class="col-lg-6 col-lg-3 grayscale_youtube">
                                        <!-- Card item START -->
                                        <div class="card bg-transparent overflow-hidden">
                                            <!-- Card img -->
                                            <div class="position-relative rounded-3 overflow-hidden">
                                                <img class="card-img" src="https://i.ytimg.com/an_webp/Max4Nby9mJE/mqdefault_6s.webp?du=3000&sqp=CKvB3JoG&rs=AOn4CLBtwwgLHFqdx41NGESbUeLxTe-Y-A" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://www.youtube.com/watch?v=Max4Nby9mJE&ab_channel=YTN" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title"><a href="podcast-single.html" class="btn-link text-dark fw-bold">러시아 '안간힘' 써보지만...우크라 대공세 예고됐다</a></h5>

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
                                                <img class="card-img" src="https://i.ytimg.com/an_webp/Lx7g7npI6po/mqdefault_6s.webp?du=3000&sqp=CJr825oG&rs=AOn4CLAWIR59LNkmYxoCkoZHbKCSck_vzQ" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://www.youtube.com/watch?v=Lx7g7npI6po&ab_channel=MBCNEWS" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title"><a href="podcast-single.html" class="btn-link text-dark fw-bold">장소 불문 수억씩 '싹둑'..서울 집값 전방위 하락</a></h5>

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
                                                <img class="card-img" src="https://i.ytimg.com/an_webp/U7_xs0dvYJs/mqdefault_6s.webp?du=3000&sqp=CMuW3JoG&rs=AOn4CLDj4yKzyEDFBWbkVIP-P1zeHgE6ww" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://www.youtube.com/watch?v=U7_xs0dvYJs&ab_channel=MBCNEWS" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title"><a href="podcast-single.html" class="btn-link text-dark fw-bold">채권은 왜 세계경제의 공포가 됐나?</a></h5>
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
                        <div class="bg-light">
                            <div class="card bg-light mb-3">
                                <div class="card-body">
                                    <h4 class="card-title"><a href="post-single-6.html" class="btn-link stretched-link text-reset">금감원장 “은행권 이자산정 문제제기 공감…하반기 검사서 조치”</a></h4>
                                </div>
                                <!-- Card image -->
                                <img src="https://dimg.donga.com/i/150/150/90/wps/NEWS/IMAGE/2022/10/24/116126225.2.jpg" class="grayscale rounded-0" alt="Card image">
                            </div>
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
                        <c:if test="${!empty economyList}">
                        <div class="card mb-3">
                            <div class="row g-3">
                                <div class="col-4">
                                    <!-- Card image -->
                                    <img class="rounded-0 grayscale" src="https://dimg.donga.com/i/150/150/90/wps/NEWS/IMAGE/2022/10/24/116117045.2.jpg" style="width:160px; height:80px;" alt="">
                                </div>
                                <div class="col-8">
                                    <h5><a href="post-single-5.html" class="btn-link stretched-link text-reset">수도권 아파트 7.8만가구, 2년전 전셋값보다 하락…역전세 우려 ↑</a></h5>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center mt-3 small"></ul>
                                </div>
                            </div>
                        </div>
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
                       	<c:if test="${!empty politicsList}">
                        <div class="card mb-3">
                            <div class="row g-3">
                                <div class="col-4">
                                    <!-- Card image -->
                                    <img style="height:80px;" class="rounded-0 grayscale" src="https://dimg.donga.com/i/150/150/90/wps/NEWS/IMAGE/2022/10/24/116126125.2.jpg" alt="">
                                </div>
                                <div class="col-8">
                                    <h5><a href="post-single-5.html" class="btn-link stretched-link text-reset">한동훈 “로스쿨, 이미 공고한 성…문제 의식 갖고 여러 방면 연구”</a></h5>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center mt-3 small">

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card Item END -->
                       	<c:forEach var="politics" items="${politicsList}" begin="1" end="4">
                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="${path}/news/post?newsNo=${politics.newsNo}" class="btn-link stretched-link text-reset">${politics.title}</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small"></ul>
                        </div>
                        <!-- Card Item END -->
                        <!-- Divider  -->
                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>
                        </c:forEach>
                        </c:if>
                    </div>
                    <div class="col-md-4">
                        <!-- Title -->
                        <h4 class="mb-3 mice">사회</h4>
                        <!-- Card Item START -->
                        <c:if test="${!empty nationalList}">
                        <div class="card mb-3">
                            <div class="row g-3">
                                <div class="col-4">
                                    <!-- Card image -->
                                    <img class="rounded-0 grayscale" src="https://dimg.donga.com/i/150/150/90/wps/NEWS/IMAGE/2022/10/24/116125933.2.jpg" alt="">
                                </div>
                                <div class="col-8">
                                    <h5><a href="post-single-5.html" class="btn-link stretched-link text-reset">	
                                        엔데믹으로 출근 재개? 재택근무 정착한 패션업계</a></h5>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center mt-3 small">

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card Item END -->
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
        <!-- =======================
Sports, most read and Entertainment END -->


    </main>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>