<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | News | Main</title>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Bootstrap based News, Magazine and Blog Theme">

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- Google Font Noto Sans 노토산스-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="assets/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="assets/vendor/tiny-slider/tiny-slider.css">
    <link rel="stylesheet" type="text/css" href="assets/vendor/plyr/plyr.css">
    <link rel="stylesheet" type="text/css" href="assets/vendor/glightbox/css/glightbox.css">

    <!-- Theme CSS -->
    <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
    <!-- 상단 빈티지 느낌 -->
    <div class="position-absolute start-50 translate-middle-x w-100 opacity-9 z-index-n1">
        <img src="assets/images/vintage-pattern.png" alt="">
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
                    <img class="navbar-brand-item light-mode-item" src="assets/images/logo-2.svg" alt="logo" style="height: 46px;">
                    <img class="navbar-brand-item dark-mode-item mx-auto" src="assets/images/logo-2-light.svg" alt="logo" style="height: 46px;">
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
                                    <form class="rounded position-relative">
                                        <input class="form-control pe-5 bg-transparent" type="search" placeholder="검색어를 입력해주세요." aria-label="Search">
                                        <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="bi bi-search fs-5"> </i></button>
                                    </form>
                                </div>
                                <br>
                                <h3 class="mb-3 mice">최근 기사</h3>
                                <!-- Recent post item -->
                                <div class="card mb-3">
                                    <h6 class="mb-1"><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">'인류 대멸종' 피할수 있을까…'소행성 요격' 거대한 첫발 디뎠다</a></h6>

                                </div>
                                <!-- Recent post item -->
                                <div class="card mb-3">
                                    <h6 class="mb-1"><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">손흥민 원톱, 황의조·이강인 벤치…벤투호 카메룬전 라인업</a></h6>

                                </div>
                                <!-- Recent post item -->
                                <div class="card mb-3">
                                    <h6 class="mb-1"><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">"찹스테이크처럼 썰렸다" 우크라 韓의용군이 전한 참혹한 실상</a></h6>
                                </div>
                                <!-- Recent post item -->
                                <div class="card mb-3">
                                    <h6 class="mb-1"><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">푸틴, 민간인 향해 미사일 맹폭격…우크라 도시 12곳 잿더미</a></h6>
                                </div>
                                <!-- Recent post item -->
                                <div class="card mb-3">
                                    <h6 class="mb-1"><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">크림대교 폭발에...가디언 "러 키이우 공습, 전선엔 효과없다"</a></h6>
                                </div>
                                <!-- Recent post item -->
                                <div class="card mb-3">
                                    <h6 class="mb-1"><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">"北 전술핵 탄두용 플루토늄 필요…추가 핵실험 강행할 것"</a></h6>
                                </div>
                                <!-- Recent post item -->
                                <div class="card mb-3">
                                    <h6 class="mb-1"><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">"8시간동안 한달치 폭우"…베네수엘라 사망·실종자 90여명</a></h6>
                                </div>
                                <!-- Recent post item -->
                                <div class="card mb-3">
                                    <h6 class="mb-1"><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">제철소 부생가스의 변신…'썩는 플라스틱'으로 재탄생 시켰다</a></h6>
                                </div>
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
                                <img class="card-img rounded-0 grayscale" src="assets/images/news/newsmain-1.jpg" alt="Card image">
                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                    <!-- Card overlay bottom -->
                                    <div class="w-100 mt-auto">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3">
                                <h4 class="card-title mice"><a href="post-single.html" class="btn-link text-reset fw-bold">전세 사기로 ‘74억원’ 꿀꺽…범행 수법 보니</a></h4>
                                <p class="card-text">전입세대 열람내역서를 위조하고 허위 임대인·임차인을 내세워 청년 전세자금 대출금을 편취하는 등 총 74억여 원 규모의 전세 사기를 벌인 일당이 검거됐다. 울산경찰청은 전세 사기 1차 단속 기간(7월25일∼9월24일) 124명을 검거해 21명을 구속했다고 27일 밝혔다. 경찰은 확인된 피해 금액이 총 74억여 원이며, 전세사기범 수법은 크게 두 가지로 분석됐다고 설명했다. 하나는 속칭 ‘깡통
                                    전세’ 주택을 매입한 뒤 세입자가 없는 것처럼......</p>
                            </div>
                        </div>
                        <!-- Card item END -->
                    </div>
                    <!-- 중앙바 끝 -->

                    <!-- 우측 사이드바 -->
                    <div class="col-lg-3">
                        <h3 class="mb-3 mice">많이 본 기사</h3>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">01</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">"불황에도 기회는 있다" 실리콘밸리로 간 한국인들</a></h6>
                            </div>
                        </div>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">02</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">치열해진 OTT 시장…넷플릭스·디즈니+가 요금제 손 본 이유</a></h6>
                            </div>
                        </div>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">03</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">하버드생의 말하기 공식, 논리력 '이것' 기억하세요</a></h6>
                            </div>
                        </div>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">04</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">한화, 14조 비스마야 사업 철수..."이라크 정부 계약위 …</a></h6>
                            </div>
                        </div>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">05</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">"한번 타보면 또다시 사는 수입차"…계약 즉시 출고, '슈 …</a></h6>
                            </div>
                        </div>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">06</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">'삼성 입사선물' 판 신입사원 "묵혀두다 버릴 것 같아서"</a></h6>
                            </div>
                        </div>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">07</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">경기 광명 한 아파트 인근 도로서 추돌사고…5명 병원 이송</a></h6>
                            </div>
                        </div>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">08</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">"100년 만에 가장 맛있답니다"…쿠팡이 탐낸 사과의 정체 …</a></h6>
                            </div>
                        </div>
                        <!-- Post item -->
                        <div class="d-flex position-relative mb-3">
                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">09</span>
                            <div>
                                <h6><a href="#" class="stretched-link text-reset btn-link">[단독] 난공불락 ‘감사원’…법사위, 국감 자료요청에도 “양해바람” 미제출 30%</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Most read START -->
                </div>
                <!-- Row END -->
            </div>
        </section>
        <!-- ======================= Recent post END -->

        <!-- ======================= Divider START -->
        <div class="container">
            <div class="border-bottom border-secondary opacity-2 mb-0 mt-4"></div>
        </div>
        <!-- ======================= Divider END -->

        <!-- ======================= Featured stories START -->
        <section class="py-4">
            <div class="container">
                <div class="row g-4 flex-fill">
                    <!-- Title -->
                    <div class="col-12">
                        <h3 class="mice"> 화제의 기사 </h3>
                    </div>
                    <!-- Card item START -->
                    <div class="col-sm-6 col-lg-3">
                        <div class="card bg-transparent">
                            <!-- Card img -->
                            <img class="card-img rounded-0 grayscale" src="assets/images/news/newsmain-2.jpg" style="width:400px; height:200px;" alt="Card image">
                            <div class="card-body px-0 pt-3">

                                <h5 class="card-title"><a href="#" class="btn-link text-reset fw-bold stretched-link">경찰제도발전위원장 “스토킹 피해자 보호 강화를, 무기 규정도 고쳐야”</a></h5>

                            </div>
                        </div>
                    </div>
                    <!-- Card item END -->
                    <!-- Card item START -->
                    <div class="col-sm-6 col-lg-3">
                        <div class="card bg-transparent">
                            <!-- Card img -->
                            <img class="card-img rounded-0 grayscale" src="assets/images/news/newsmain-3.jpg" style="width:400px; height:200px;" alt="Card image">
                            <div class="card-body px-0 pt-3">

                                <h5 class="card-title"><a href="#" class="btn-link text-reset fw-bold stretched-link">미친 환율에 수입상가 죄다 울지만…남대문서 웃는 한 사람</a></h5>

                            </div>
                        </div>
                    </div>
                    <!-- Card item END -->
                    <!-- Card item START -->
                    <div class="col-sm-6 col-lg-3">
                        <div class="card bg-transparent">
                            <!-- Card img -->
                            <img class="card-img rounded-0 grayscale" src="assets/images/news/newsmain-4.jpg" style="width:400px; height:200px;" alt="Card image">
                            <div class="card-body px-0 pt-3">

                                <h5 class="card-title"><a href="#" class="btn-link text-reset fw-bold stretched-link">돈스파이크, 마약 투약 혐의 체포…필로폰 1천회분 갖고있었다</a></h5>

                            </div>
                        </div>
                    </div>
                    <!-- Card item END -->
                    <!-- Card item START -->
                    <div class="col-sm-6 col-lg-3">
                        <div class="card bg-transparent">
                            <!-- Card img -->
                            <img class="card-img rounded-0 grayscale" src="assets/images/news/newsmain-5.jpg" style="width:400px; height:200px;" alt="Card image">
                            <div class="card-body px-0 pt-3">

                                <h5 class="card-title"><a href="#" class="btn-link text-reset fw-bold stretched-link">모친 지인 살해 뒤 7만5000원 훔쳐 달아났다…50대 붙잡혀</a></h5>

                            </div>
                        </div>
                    </div>
                    <!-- Card item END -->
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
                                                <img class="card-img" class=".graysclae_img_2" src="assets/images/news/newsmain-6.jpg" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://youtu.be/n_Cn8eFo7u8" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h5 class="card-title"><a href="podcast-single.html" class="btn-link text-dark fw-bold">한동훈 "검수완박, 다수당 만능키"…국회 측 "청구자격 없다"</a></h5>

                                        </div>
                                        <!-- Card item END -->
                                    </div>
                                    <!-- 유튜브 오위-->
                                    <div class="col-lg-6 col-lg-3 grayscale_youtube">
                                        <!-- Card item START -->
                                        <div class="card bg-transparent overflow-hidden">
                                            <!-- Card img -->
                                            <div class="position-relative rounded-3 overflow-hidden">
                                                <img class="card-img" src="assets/images/news/newsmain-7.jpg" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://youtu.be/n_Cn8eFo7u8" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title"><a href="podcast-single.html" class="btn-link text-dark fw-bold">“청탁 명목 10억원 수수”…檢, 민주당 전 사무부총장 구속영장</a></h5>

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
                                                <img class="card-img" src="assets/images/news/newsmain-8.jpg" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://youtu.be/n_Cn8eFo7u8" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title"><a href="podcast-single.html" class="btn-link text-dark fw-bold">박유천, 방송활동 복귀 무산…활동금지 가처분 취소 신청 기각</a></h5>

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
                                                <img class="card-img" src="assets/images/news/newsmain-9.jpg" style="height:200px;" alt="Card image">
                                                <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                                    <!-- Card overlay -->
                                                    <div class="w-100 my-auto">
                                                        <!-- Popup video -->
                                                        <a href="https://youtu.be/n_Cn8eFo7u8" class="icon-md bg-primary d-block mx-auto text-white rounded-circle" data-glightbox data-gallery="y-video">
                                                            <i class="bi bi-play-btn"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 pt-3">
                                                <h5 class="card-title"><a href="podcast-single.html" class="btn-link text-dark fw-bold">우크라 전력시설 골라 때렸다
                                                    유럽의 '겨울 공황' 노린 푸틴</a></h5>

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
                        <h3 class="mb-3 mice">Business</h3>
                        <div class="bg-light">
                            <div class="card bg-light">
                                <div class="card-body">
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block small mb-2">
                                        <li class="nav-item"><i class="bi bi-clock-history"></i> 56:36</li>
                                        <li class="nav-item">With <a href="#">Larry Lawson</a> </li>
                                    </ul>
                                    <h4 class="card-title"><a href="post-single-6.html" class="btn-link stretched-link text-reset">'하루 37명꼴' 코로나로 줄었던 자살 다시 늘어...10대서 10% 급증</a></h4>
                                </div>
                                <!-- Card image -->
                                <img src="assets/images/news/newsmain-10.jpg" class="grayscale rounded-0" alt="Card image">
                            </div>
                            <div class="card card-body bg-light mt-3">
                                <h6 class="card-title"><a href="post-single-3.html" class="btn-link text-reset stretched-link fw-bold">檢 "이화영, 쌍방울 계열사 주식 차명보유...아들도 취업시켜"</a></h6>

                                <div class="border-bottom border-secondary opacity-2 mb-0 mt-2"></div>
                            </div>
                            <div class="card card-body bg-light">
                                <h6 class="card-title"><a href="post-single-3.html" class="btn-link text-reset stretched-link fw-bold">흡연 단속했다고 아버지뻘에 발길질…수유역 20대女 논란</a></h6>

                                <div class="border-bottom border-secondary opacity-2 mb-0 mt-2"></div>
                            </div>
                            <div class="card card-body bg-light">
                                <h6 class="card-title"><a href="post-single-3.html" class="btn-link text-reset stretched-link fw-bold">인천대공원서 치마 입고 여자 화장실에 들어간 60대 남성 입건</a></h6>

                                <div class="border-bottom border-secondary opacity-2 mb-0 mt-2"></div>
                            </div>
                            <div class="card card-body bg-light">
                                <h6 class="card-title"><a href="post-single-3.html" class="btn-link text-reset stretched-link fw-bold">"피곤하다" 근무 중 초소서 누워 잔 군인…전역 후 '징역형'</a></h6>

                            </div>
                        </div>
                    </div>
                    <!-- Business Sidebar END -->
                </div>
            </div>
        </section>
        <!-- =======================
World politics and Business Sidebar END -->

        <!-- =======================
Divider START -->
        <div class="container">
            <div class="border-bottom border-secondary opacity-2 mb-0 mt-2"></div>
        </div>
        <!-- =======================
Divider START -->

        <!-- =======================
Sports, most read and Entertainment START -->
        <section class="pt-4 pt-sm-5 pb-3 pb-sm-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <!-- Title -->
                        <h4 class="mb-3">금융</h4>
                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <div class="row g-3">
                                <div class="col-4">
                                    <!-- Card image -->
                                    <img class="rounded-0 grayscale" src="assets/images/news/newsmain-11.jpg" alt="">
                                </div>
                                <div class="col-8">
                                    <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">코스피, 2200선 재붕괴 마감…코스닥 4% 폭락</a></h6>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center mt-3 small">

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card Item END -->

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">파생결합증권 정보 다 모았다…한국거래소, 통합플랫폼 오픈</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>
                        </div>
                        <!-- Card Item END -->

                        <!-- Divider  -->
                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">신한카드, 21년 ‘최장수’ 문화행사…꼬마피카소 그림축제 성료</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>
                        </div>
                        <!-- Card Item END -->

                        <!-- Divider  -->
                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">맥 못추는 보험주…금리인상 후 반등하나</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>
                        </div>
                        <!-- Card Item END -->

                    </div>
                    <div class="col-md-4">

                        <!-- Title -->
                        <h4 class="mb-3">부동산</h4>

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <div class="row g-3">
                                <div class="col-4">
                                    <!-- Card image -->
                                    <img class="rounded-0 grayscale" src="assets/images/news/newsmain-12.jpg" style="width:160px; height:80px;" alt="">
                                </div>
                                <div class="col-8">
                                    <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">외국인, 7년간 아파트 매수 3만건…그 중 중국인 62% 사들여</a></h6>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center mt-3 small">

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card Item END -->

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">"'임대아파트는 싸구려' 인식 바꾸려면 건축비 상한 풀어야"</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>
                        </div>
                        <!-- Card Item END -->

                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">정부, 2024년 내 1기 신도시 재건축 선도지구 지정한다</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>
                        </div>
                        <!-- Card Item END -->

                        <!-- Divider  -->
                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">현대건설, 2조 규모 필리핀 남부도시철도 건설 본계약 체결</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>
                        </div>
                        <!-- Card Item END -->
                    </div>

                    <div class="col-md-4">
                        <!-- Title -->
                        <h4 class="mb-3">정치</h4>

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <div class="row g-3">
                                <div class="col-4">
                                    <!-- Card image -->
                                    <img class="rounded-0 grayscale" src="assets/images/news/newsmain-13.jpg" alt="">
                                </div>
                                <div class="col-8">
                                    <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">	
                                        尹대통령, 안보 위기 해법은…대북경고·한미일협력·담대한 구상</a></h6>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center mt-3 small">

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card Item END -->

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">한일 외교당국, 오늘 서울서 국장급 협의‥강제징용 해법 논의 주목</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>
                        </div>
                        <!-- Card Item END -->

                        <!-- Divider  -->
                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">	
                                유승민, '일본은 조선왕조와 전쟁한 적이 없다' 언급 정진석 겨냥 "이재명의 덫에 놀아나는 천박한 발언...사퇴해야"</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>

                        </div>
                        <!-- Card Item END -->

                        <!-- Divider  -->
                        <div class="border-bottom border-secondary opacity-2 mt-2 mb-2"></div>

                        <!-- Card Item START -->
                        <div class="card mb-3">
                            <h6><a href="post-single-5.html" class="btn-link stretched-link text-reset">	
                                통일부 "北, 도발로 얻을 것 없다…전술핵 훈련 심각하게 주시"</a></h6>
                            <!-- Card info -->
                            <ul class="nav nav-divider align-items-center mt-1 small">

                            </ul>
                        </div>
                        <!-- Card Item END -->

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