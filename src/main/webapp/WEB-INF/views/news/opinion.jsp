<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | Opinion</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
    <%@include file="/WEB-INF/views/common/header.jsp" %>
    <br><br>
    <!-- **************** MAIN CONTENT START **************** -->
    <main>
        <!-- =======================
Main content START -->
        <section class="position-relative">
            <div class="container" data-sticky-container>
                <div class="row">
                    <!-- Main Post START -->
                    <div class="col-lg-9">
                        <!-- Card item START -->
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-3">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/news/opinion.jpg" style="width: 300px; height: 250px;" alt="">
                                </div>
                                <div class="col-md-8 mt-4 mt-md-0">
                                    <h3><a href="post-single-2.html" class="btn-link stretched-link text-reset">“외환 위기 경고” 나온 역환율 전쟁, 범정부 비상체제 가동을</a></h3><br>
                                    <p>달러 대비 원화 환율이 지난 주 달러당 1400원의 마지노선을 깬 데 이어 26일엔 22원 이상 오르며 1430원을 넘어섰다. 1400원대 환율은 2009년 글로벌 금융 위기 이후 13년여 만의 일이다. 세계 경제를 침체로 몰아간 서브프라임 모기지 사태 때만큼 상황이 심각하다는 의미다. 코스피는 3%, 코스닥은 5%씩 폭락하며 금융시장을 혼란으로 몰아넣었다. 국제 금융가에선 ‘아시아
                                        외환 위기’ 경고가 나오기 시작했다. 블룸버그 통신은 월가 전문가들을 인용해 “일본 엔과 중국 위안화 폭락으로 아시아에서 외국 자금이 대거 이탈하는 위기로 확대될 수 있다”며 1997년 사태의 재발 가능성을 지적했다.</p>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item">Jan 22, 2022</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                    </div>
                    <!-- Main Post END -->
                    <!-- Sidebar START -->
                    <div class="col-lg-3 mt-lg-0">
                        <div data-sticky data-margin-top="80" data-sticky-for="767">
                            <!-- Most read -->
                            <div>
                                <h5 class=" mb-3">제일 많이 본 칼럼</h5>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">01</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">尹, 비속어 논란에 “사실과 다른 보도로 동맹 훼손... 진상 밝혀져야”</a></h6>
                                </div>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">02</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">3500곳 줄폐업... 中 ‘반도체 대약진운동’의 참혹한 실패</a></h6>
                                </div>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">03</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">“한미 금리역전, 과거와 다른 충격” 5대 위험 한번에 덮쳤다</a></h6>
                                </div>
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">04</span>
                                    <h6><a href="#" class="stretched-link text-reset btn-link">반도체업계 쇼크 시작됐다…삼성도 마이크론도 3Q 실적 '잿빛'</a></h6>
                                </div>
                            </div>
                        </div>
                        <!-- Sidebar END -->
                    </div>
                    <!-- Row end -->
                </div>
        </section>
        <!-- ======================= Main content END -->

        <!-- ======================= Featured Guests START -->
        <section class="bg-light" style="margin-top: -50px;">
            <div class="container">
                <div class="row g-0">
                    <div class="col-12 ">
                        <!-- Title -->
                        <div class="mb-4">
                            <h2>논설 위원</h2>
                        </div>
                        <!-- Slider -->
                        <div class="tiny-slider arrow-hover arrow-dark arrow-blur arrow-round">
                            <div class="tiny-slider-inner" data-autoplay="false" data-hoverpause="true" data-gutter="24" data-arrow="true" data-dots="false" data-items-xl="6" data-items-lg="4" data-items-md="3" data-items-sm="2" data-items-xs="2">
                                <!-- Guest item -->
                                <div>
                                    <div class="card bg-transparent">
                                        <img class="card-img" src="${path}/resources/resources1b/images/news/opinion1.jpg" alt="card image">
                                        <div class="card-body ps-0">
                                            <h5 class="mb-0">김순덕</h5>
                                            <small>Office Assistant</small>
                                        </div>
                                    </div>
                                </div>
                                <!-- Guest item -->
                                <div>
                                    <div class="card bg-transparent">
                                        <img class="card-img" src="${path}/resources/resources1b/images/news/opinion2.jpg" alt="card image">
                                        <div class="card-body ps-0">
                                            <h5 class="mb-0">박제균</h5>
                                            <small>Sales Manager</small>
                                        </div>
                                    </div>
                                </div>
                                <!-- Guest item -->
                                <div>
                                    <div class="card bg-transparent">
                                        <img class="card-img" src="${path}/resources/resources1b/images/news/opinion3.jpg" alt="card image">
                                        <div class="card-body ps-0">
                                            <h5 class="mb-0">이기홍</h5>
                                            <small>Software Engineer</small>
                                        </div>
                                    </div>
                                </div>
                                <!-- Guest item -->
                                <div>
                                    <div class="card bg-transparent">
                                        <img class="card-img" src="${path}/resources/resources1b/images/news/opinion4.jpg" alt="card image">
                                        <div class="card-body ps-0">
                                            <h5 class="mb-0">천광암</h5>
                                            <small>Nurse Practitioner</small>
                                        </div>
                                    </div>
                                </div>
                                <!-- Guest item -->
                                <div>
                                    <div class="card bg-transparent">
                                        <img class="card-img" src="${path}/resources/resources1b/images/news/opinion5.jpg" alt="card image">
                                        <div class="card-body ps-0">
                                            <h5 class="mb-0">송평인</h5>
                                            <small>Marketing Manager</small>
                                        </div>
                                    </div>
                                </div>
                                <!-- Guest item -->
                                <div>
                                    <div class="card bg-transparent">
                                        <img class="card-img" src="${path}/resources/resources1b/images/news/opinion6.jpg" alt="card image">
                                        <div class="card-body ps-0">
                                            <h5 class="mb-0"> 이현두 </h5>
                                            <small>Executive Assistant</small>
                                        </div>
                                    </div>
                                </div>
                                <!-- Guest item -->
                                <div>
                                    <div class="card bg-transparent">
                                        <img class="card-img" src="${path}/resources/resources1b/images/news/opinion7.jpg" alt="card image">
                                        <div class="card-body ps-0">
                                            <h5 class="mb-0">김선미</h5>
                                            <small>Actor</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Slider END -->
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
Featured Guests END -->
        <br>
        <!-- =======================
Main content START -->
        <section class="position-relative pt-8">
            <div class="container">
                <div class="row">
                    <!-- Main Post START -->
                    <div class="col-12">
                        <!-- Card item START -->
                        <div class="card border rounded-3 up-hover p-4 mb-4">
                            <div class="row g-3">
                                <div class="col-lg-5">
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="post-single.html" class="btn-link text-reset stretched-link">‘청년주간’을 맞아 생각해 본 ‘청년정책’이 가야할 길</a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3">
                                        <div>
                                            <h5 class="mb-1"><a href="#" class="stretched-link text-reset btn-link">김희규 한국교원교육학회 회장</a></h5>
                                            <ul class="nav align-items-center small">
                                                <li class="nav-item me-3">Mar 07, 2022</li>
                                                <li class="nav-item"><i class="far fa-clock me-1"></i>5 min read</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4">
                                    <p>최근 대학 친구가 여자친구와 헤어졌다고 말했다. 이별한 이유는 ‘다름’으로 생긴 의사소통 문제였다. 그 과정에서 본인은 나름 간극을 좁히려고 노력했지만, 자신이 하는 노력만큼 상대가 맞추려하지 않는 것 같아 화가 났다고 한다. 그 화는 얼마 지나지 않아 터져버렸고, 둘은 냉전 상태로 있다가 이별했다고 말했다.</p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/news/opinion8.jpg" style="width: 170px; height:200px;" alt="Card image">
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card border rounded-3 up-hover p-4 mb-4">
                            <div class="row g-3">
                                <div class="col-lg-5">
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="post-single.html" class="btn-link text-reset stretched-link">음악당이 된 로마제국 초대황제의 영묘</a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3">
                                        <div>
                                            <h5 class="mb-1"><a href="#" class="stretched-link text-reset btn-link">김상균 바이올리니스트</a></h5>
                                            <ul class="nav align-items-center small">
                                                <li class="nav-item me-3">Jul 15, 2020</li>
                                                <li class="nav-item"><i class="far fa-clock me-1"></i>9 min read</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4">
                                    <p>‘로마’라는 지명이 들어간 관현악 작품을 꼽으라고 하면 단연 레스피기(O. Respighi 1879-1946)의
                                        <로마의 분수>,
                                            <로마의 소나무>,
                                                <로마의 축제>를 가장 먼저 머리에 떠올리게 된다. 이 ‘로마 3부작’ 중에서
                                                    <로마의 분수>와
                                                        <로마의 소나무>는 로마에서 초연되었다.

                                    </p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/news/opinion9.jpg" style="width: 170px; height:200px;" alt="Card image">
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card border rounded-3 up-hover p-4 mb-4">
                            <div class="row g-3">
                                <div class="col-lg-5">
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="post-single.html" class="btn-link text-reset stretched-link">감정이입을 통해 내면세계로 초대하는 예술가들</a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3">
                                        <div>
                                            <h5 class="mb-1"><a href="#" class="stretched-link text-reset btn-link">서은철 원광대학교 교수</a></h5>
                                            <ul class="nav align-items-center small">
                                                <li class="nav-item me-3">Dec 18, 2022</li>
                                                <li class="nav-item"><i class="far fa-clock me-1"></i>2 min read</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4">
                                    <p>감정의 이입은 우리가 상대를 이해하기 위한 중요한 수단 중 하나다. 우리는 상대방의 입장에서 공감하며 감정에 동화될 때 타인에 대한 진정한 이해와 설득의 폭을 넓힐 수 있다. 실제로 상대방의 감정에 자신을 투영하는 것은 직관을 요하는 문제인데, 상황극처럼 역할 바꾸기는 치료의 목적으로 정신과 등에서도 쓰이고 있다. 한편 철학자 앙리 베르그송(Henri Bergson)은...

                                    </p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/news/opinion10.jpg" style="width: 170px; height:200px;" alt="Card image">
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card border rounded-3 up-hover p-4 mb-4">
                            <div class="row g-3">
                                <div class="col-lg-5">
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="post-single.html" class="btn-link text-reset stretched-link">들리지 않는 대통령 말을 자막으로 보도한 MBC, 근거 밝혀야</a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3">
                                        <div>
                                            <h5 class="mb-1"><a href="#" class="stretched-link text-reset btn-link">김형우 한반도문화관광연구원장</a></h5>
                                            <ul class="nav align-items-center small">
                                                <li class="nav-item me-3">May 30, 2022</li>
                                                <li class="nav-item"><i class="far fa-clock me-1"></i>5 min read</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4">
                                    <p>윤석열 대통령이 미국에서 회의 후 수행원들에게 한 발언을 보도한 MBC가 경찰에 명예훼손 혐의로 고발됐다. 윤 대통령은 “사실과 다른 보도로 동맹을 훼손했다”고 했다. 윤 대통령의 해당 발언은 동영상을 아무리 반복해 들어도 무슨 말인지 알기 어렵다. 불명확한 잡음 끝에 ‘쪽팔린다’는 식의 말만 들린다. 그런데 MBC는 22일 오전 윤 대통령이 “국회에서 이 XX들이... </p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/news/opinion11.jpg" style="width: 170px; height:200px;" alt="Card image">
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card border rounded-3 up-hover p-4 mb-4">
                            <div class="row g-3">
                                <div class="col-lg-5">
                                    <!-- Title -->
                                    <h2 class="card-title">
                                        <a href="post-single.html" class="btn-link text-reset stretched-link">전기료 인상 미루면 부작용 커진다</a>
                                    </h2>
                                    <!-- Author info -->
                                    <div class="d-flex align-items-center position-relative mt-3">
                                        <div>
                                            <h5 class="mb-1"><a href="#" class="stretched-link text-reset btn-link">이상미 제주한라대학교 특임교수</a></h5>
                                            <ul class="nav align-items-center small">
                                                <li class="nav-item me-3">Aug 15, 2022</li>
                                                <li class="nav-item"><i class="far fa-clock me-1"></i>18 min read</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Detail -->
                                <div class="col-md-6 col-lg-4">
                                    <p>우리 경제는 고물가·고금리·고환율의 3고(高)와 함께 우크라이나 전쟁 등으로 인한 국제 에너지 가격 급등으로 에너지 수급 비상이 걸렸다. 이럴 때일수록 에너지 소비 절약과 수입 감축 외에 뚜렷한 방법이 없는데, 경직된 가격 규제로 시장이 왜곡되거나 수급 문제를 심화시키는 문제가 발생하고 있다. 에너지 위기 상황에서 정부는 유류세 인하 및 전기·가스요금 인상 억제 등 대증적 처방에...
                                    </p>
                                </div>
                                <!-- Image -->
                                <div class="col-md-6 col-lg-3">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/news/opinion12.jpg" style="width: 170px; height:200px;" alt="Card image">
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->

                        <!-- Pagination START -->
                        <nav class="mb-sm-0 d-flex justify-content-center mt-5" aria-label="navigation">
                            <ul class="pagination pagination-sm pagination-bordered mb-0">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Prev</a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">6</a></li>
                                <li class="page-item"><a class="page-link" href="#">7</a></li>
                                <li class="page-item"><a class="page-link" href="#">8</a></li>
                                <li class="page-item"><a class="page-link" href="#">9</a></li>
                                <li class="page-item"><a class="page-link" href="#">10</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                        <!-- Pagination END -->
                    </div>
                    <!-- Main Post END -->
                </div>
                <!-- Row end -->
            </div>
        </section>
        <!-- =======================
Main content END -->

    </main>
    <!-- **************** MAIN CONTENT END **************** -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>