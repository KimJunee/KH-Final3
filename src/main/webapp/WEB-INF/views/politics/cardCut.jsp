<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | Politics | CardCut</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
		<!-- **************** MAIN CONTENT START **************** -->
		<main>
		    <section class="bg-dark-overlay-4" style="background-image:url('${path}/resources/resources1b/images/04_politics/01_cardcut/bluehouse.png'); 
		        background-position: center left; background-size: cover;  ">
		          <div class="container ">
                <div class="row ">
                    <div class="col-lg-8 py-md-5 my-lg-0 ">
                        <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                        <h1 class="mice text-white fw-bold mb-2">카드/한컷</h1>
                        <p class="mice lead text-white fw-bold mb-0"> 정부에서 직접 제공하는 대한민국 정책뉴스를<br> 간단한 카드 형식을 통해 쉽게 접근하실 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </section>
		    <!-- =======================
		Main START -->
		    <section class="pt-5 pb-0 mb-0 mt-3">
		        <div class="container">
		            <div class="row">
		                <div class="col-sm-6 col-lg-4">
		                    <div class="card mb-4">
		                        <!-- Card img -->
		                        <div class="card-fold position-relative">
		                            <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card01.jpg" alt="Card image" style="height: 280px;">
		                        </div>
		                        <div class="card-body px-0 pt-3">
		                            <h4 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">안심전환대출 접수 시작... 대상.신청 방법은?</a></h4>
		                            <!-- Card info -->
		                            <ul class="nav nav-divider align-items-center text-uppercase small">
		                                <li class="nav-item">
		                                    <a href="#" class="nav-link text-reset btn-link">2022.09.16</a>
		                                </li>
		                                <li class="nav-item">문화체육관광부 국민소통실</li>
		                            </ul>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-sm-6 col-lg-4">
		                    <div class="card mb-4">
		                        <!-- Card img -->
		                        <div class="card-fold position-relative">
		                            <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card02.jpg" alt="Card image" style="height: 280px;">
		                        </div>
		                        <div class="card-body px-0 pt-3">
		                            <h4 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">청와대 '장애예술인 특별전' 보러가자!...19일까지</a></h4>
		                            <!-- Card info -->
		                            <ul class="nav nav-divider align-items-center text-uppercase small">
		                                <li class="nav-item">
		                                    <a href="#" class="nav-link text-reset btn-link">2022.09.16</a>
		                                </li>
		                                <li class="nav-item">정책브리핑 이정운</li>
		                            </ul>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-sm-6 col-lg-4">
		                    <div class="card mb-4">
		                        <!-- Card img -->
		                        <div class="card-fold position-relative">
		                            <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card03.jpg" alt="Card image" style="height: 280px;">
		                        </div>
		                        <div class="card-body px-0 pt-3">
		                            <h4 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">2023년도 교육부 예산안 핵심내용...반도체 등 첨단분야 인재 양성</a></h4>
		                            <!-- Card info -->
		                            <ul class="nav nav-divider align-items-center text-uppercase small">
		                                <li class="nav-item">
		                                    <a href="#" class="nav-link text-reset btn-link">2022.09.16</a>
		                                </li>
		                                <li class="nav-item">교육부</li>
		                            </ul>
		                        </div>
		                    </div>
		                </div>
		
		            </div>
		        </div>
		    </section>
		
		    <section class="position-relative pt-0 mb-5">
		        <div class="container">
		            <div class="row">
		                <div class="col-9">
		                    <div class="card-header bg-transparent border-bottom p-3">
		                        <div class="d-sm-flex justify-content-between align-items-center">
		                            <h4 class="mb-2 mb-sm-0 fw-bold">카드뉴스 검색 <span class="badge bg-primary bg-opacity-10 text-primary">105</span></h4>
		                        </div>
		                    </div>
		                    <!-- Card header END -->
		                    <!-- Card body START -->
		                    <div class="card-body mt-3 border-bottom mb-3 p-1">
		                        <!-- Search and select START -->
		                        <div class="row g-3 align-items-center justify-content-between mb-3">
		                            <!-- Search -->
		                            <div class="col-md-4">
		                                <form class="rounded position-relative">
		                                    <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
		                                    <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
		                                </form>
		                            </div>
		                            <!-- Select option -->
		                            <div class="col-md-4">
		                                <!-- Short by filter -->
		                                <form>
		                                    <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
		                                        <option value="">Sort by</option>
		                                        <option>최근 1년</option>
		                                        <option>최근 1달</option>
		                                        <option>최근 1주</option>
		                                    </select>
		                                </form>
		                            </div>
		                        </div>
		                    </div>
		
		                    <div class="row">
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card01.jpg" alt="Card image" style="height: 270px;">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">안심전환대출 접수 시작... 대상.신청 방법은?</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.16</a>
		                                        </li>
		                                        <li class="nav-item">문화체육관광부 국민소통실</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Card item END -->
		                        <!-- Card item START -->
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card02.jpg" alt="Card image">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">청와대 '장애예술인 특별전' 보러가자!... 19일까지</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.16</a>
		                                        </li>
		                                        <li class="nav-item">정책브리핑 이정운</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Card item END -->
		                        <!-- Card item START -->
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card03.jpg" alt="Card image">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title fs-6"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">2023년도 교육부 예산안 핵심내용...<br>반도체 등 첨단분야 인재 양성</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.16</a>
		                                        </li>
		                                        <li class="nav-item">교육부</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Card item END -->
		                        <!-- Card item START -->
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card04.jpg" alt="Card image">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">[딱풀이]'새출발기금'이란?</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.18</a>
		                                        </li>
		                                        <li class="nav-item">문화체육관광부 국민소통실</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Card item END -->
		                        <!-- Card item START -->
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card05.jpg" alt="Card image">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">슬기로운 여가생활, 공유누리와 함께해요!</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.20</a>
		                                        </li>
		                                        <li class="nav-item">행정안정부</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Card item END -->
		                        <!-- Card item START -->
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card06.jpg" alt="Card image">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">술도 칼로리 확인이 가능해진다!</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.20</a>
		                                        </li>
		                                        <li class="nav-item">식품의약품안전처</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Card item END -->
		                        <!-- Card item START -->
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card07.jpg" alt="Card image">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">[2023년 예산안]대상별 맞춤 지원 - 소상공인 등</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.22</a>
		                                        </li>
		                                        <li class="nav-item">문화체육관광부 국민소통실</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Card item END -->
		                        <!-- Card item START -->
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card08.jpg" alt="Card image">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">내게 맞는 복지서비스 알려준다... 복지멤버십 전 국민 확대</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.22</a>
		                                        </li>
		                                        <li class="nav-item">보건복지부</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
		                        <div class="col-sm-6 col-lg-4">
		                            <div class="card mb-4">
		                                <!-- Card img -->
		                                <div class="card-fold position-relative">
		                                    <img class="card-img" src="resources/resources1b/images/04_politics/01_cardcut/card09.jpg" alt="Card image">
		                                </div>
		                                <div class="card-body px-0 pt-3">
		                                    <h6 class="card-title"><a href="post-single-4.html" class="btn-link text-reset stretched-link fw-bold">'9월 독서의 달' 지역별 독서문화행사 한 눈에!</a></h6>
		                                    <!-- Card info -->
		                                    <ul class="nav nav-divider align-items-center text-uppercase small">
		                                        <li class="nav-item">
		                                            <a href="#" class="nav-link text-reset btn-link">2022.09.26</a>
		                                        </li>
		                                        <li class="nav-item">문화체육관광부</li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </div>
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
		                <div class="col-3">
		                    <div class="card border ">
		                        <div class="card-header border-bottom p-3 bg-white">
		                            <h4 class="card-header-title mb-0 text-black fw-bold">오피니언</h4>
		                        </div>
		                        <!-- Card body START -->
		                        <div class="card-body p-3">
		                            <div class="row">
		                                <!-- Blog item -->
		                                <div class="col-12">
		                                    <div class="d-flex align-items-center position-relative">
		                                        <img class="w-60 rounded" src="resources/resources1b/images/blog/1by1/01.jpg" alt="product">
		                                        <div class="ms-3">
		                                            <a href="#" class="h6 stretched-link">‘청년주간’을 맞아 생각해 본 ‘청년정책’이 가야할 길</a>
		                                            <p class="small mb-0">2022.09.22</p>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!-- Divider -->
		                                <hr class="my-3">
		                                <!-- Blog item -->
		                                <div class="col-12">
		                                    <div class="d-flex align-items-center position-relative">
		                                        <img class="w-60 rounded" src="resources/resources1b/images/blog/1by1/02.jpg" alt="product">
		                                        <div class="ms-3">
		                                            <a href="#" class="h6 stretched-link">감정이입을 통해 내면세계로 초대하는 예술가들</a>
		                                            <p class="small mb-0">2022.09.22</p>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		
		                    <div class="row g-2 mt-4">
		                        <h4 class="fw-bolder">인기검색어</h4>
		                        <div class="d-flex justify-content-between align-items-center bg-warning bg-opacity-15 rounded p-2 position-relative">
		                            <h6 class="m-0 text-warning">디지털 경쟁력</h6>
		                            <a href="#" class="badge bg-warning text-dark stretched-link">01</a>
		                        </div>
		                        <div class="d-flex justify-content-between align-items-center bg-info bg-opacity-10 rounded p-2 position-relative">
		                            <h6 class="m-0 text-info">소상공인 대출</h6>
		                            <a href="#" class="badge bg-info stretched-link">02</a>
		                        </div>
		                        <div class="d-flex justify-content-between align-items-center bg-danger bg-opacity-10 rounded p-2 position-relative">
		                            <h6 class="m-0 text-danger">전세피해지원센터</h6>
		                            <a href="#" class="badge bg-danger stretched-link">03</a>
		                        </div>
		                        <div class="d-flex justify-content-between align-items-center bg-primary bg-opacity-10 rounded p-2 position-relative">
		                            <h6 class="m-0 text-primary">세계 전기차 점유율</h6>
		                            <a href="#" class="badge bg-primary stretched-link">04</a>
		                        </div>
		                        <div class="d-flex justify-content-between align-items-center bg-success bg-opacity-10 rounded p-2 position-relative">
		                            <h6 class="m-0 text-success">복지멤버십</h6>
		                            <a href="#" class="badge bg-success stretched-link">05</a>
		                        </div>
		                    </div>
		                    <h4 class="mt-5 mb-3 fw-bolder">인기<a href="#!" class="text-primary">정치</a>게시글</h4>
		                    <div class="d-flex position-relative mb-3">
		                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">01</span>
		                        <h6><a href="#" class="stretched-link text-reset btn-link">매달 최대 20만원 월세 지원받는 법!</a></h6>
		                        <br>
		                    </div>
		                    <div class="d-flex position-relative mb-3">
		                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">02</span>
		                        <h6><a href="#" class="stretched-link text-reset btn-link">한덕수 "강제징용 해결 등 소통 공감"</a></h6>
		                    </div>
		                    <div class="d-flex position-relative mb-3">
		                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">03</span>
		                        <h6><a href="#" class="stretched-link text-reset btn-link">해군, 5년 만에 日해상자위대와 군사훈련 재개</a></h6>
		                    </div>
		                    <div class="d-flex position-relative mb-3">
		                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">04</span>
		                        <h6><a href="#" class="stretched-link text-reset btn-link">감귤 선글라스 쓴 이재명 대표</a></h6>
		                    </div>
		                    <div class="d-flex position-relative mb-3">
		                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">05</span>
		                        <h6><a href="#" class="stretched-link text-reset btn-link">북한, 동해상에 단거리 탄도미사일 2발 발사</a></h6>
		                    </div>
		                    <div class="d-flex position-relative mb-3">
		                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">06</span>
		                        <h6><a href="#" class="stretched-link text-reset btn-link">정부, 對美 외교에 80억 쏟아<br> 붓고도 IRA 몰랐다</a></h6>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </section>
		</main>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>