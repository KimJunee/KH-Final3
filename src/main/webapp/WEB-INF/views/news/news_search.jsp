<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | News | Search</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
    <%@include file="/WEB-INF/views/common/header.jsp" %>
    <!-- **************** MAIN CONTENT START **************** -->
    <main>

        <!-- =======================
    Inner intro START -->
        <section class="py-4 pb-3">
            <div class="container">
                <!-- Search -->
                <div class="row">
                    <div class="col-9 mt-3">
                        <h3 class="mice"><i class="bi bi-search " style="font-size: 80%;"></i>&nbsp;총 <a href="#!" class="text-primary">6</a>건이 검색되었습니다.</h3>
                    </div>
                    <div class="col-3 mt-3">
                        <form class="rounded position-relative">
                            <input class="form-control bg-transparent" type="search" placeholder="검색어를 입력하세요." aria-label="Search">
                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
Inner intro END -->

        <!-- =======================
Main content START -->
        <section class="position-relative pt-0">
            <div class="container" data-sticky-container>
                <div class="row">
                    <!-- Main Post START -->
                    <div class="col-lg-9">
                        <!-- Card item START -->
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-5">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/05_news/news05.jpeg" style="height: 234px;" alt="">
                                </div>
                                <div class="col-md-7 mt-3 mt-md-0">
                                    <a href="#" class="badge bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i> Finance</a>
                                    <h3><a href="post-single-2.html" class="btn-link stretched-link text-reset">美 실업률 3.5%로 하락…나스닥 -2.7% 출발 [데일리 국제금융시장]</a></h3>
                                    <p>미국의 9월 실업률이 전달 대비 되레 하락한 것으로 나오면서 뉴욕증시의 주요 지수가 하락 출발했다. 7일(현지 시간) 미 경제 방송 CNBC에 따르면 이날 오전10시14분 현재 뉴욕증권거래소(NYSE)의 다우존스산업평균지수가 전날보다 477.50포인트(-1.60%) 내린 2만9449.44를 기록 중이다.</p>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item">
                                            <div class="nav-link">
                                                <div class="d-flex align-items-center position-relative">
                                                    <span class="ms-3">김영필 기자</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="nav-item">2022.10.08</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-5">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/05_news/news06.jpg" style="height: 234px;" alt="">
                                </div>
                                <div class="col-md-7 mt-3 mt-md-0">
                                    <a href="#" class="badge bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i> Finance</a>
                                    <h3><a href="post-single-2.html" class="btn-link stretched-link text-reset">코스피, 기관 ‘순매도’...2230선 약보합 마감</a></h3>
                                    <p>7일 코스피지수는 기관 투자자가 순매도하며 2230선에서 하락 마감했다. 개장 전 발표된 삼성전자 3분기 실적이 시장기대치를 밑돌았고, 간밤 뉴욕증시 약세 영향까지 겹치며 투자심리를 위축시킨 것으로 보인다. 이날 코스피지수는 전일 대비 5.02포인트(0.22%) 떨어진 2232.84로 장을 마쳤다.
                                    </p>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item">
                                            <div class="nav-link">
                                                <div class="d-flex align-items-center position-relative">
                                                    <span class="ms-3">이인아 기자</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="nav-item">2022.10.07</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-5">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/05_news/news01.jpg" style="height: 234px;" alt="">
                                </div>
                                <div class="col-md-7 mt-3 mt-md-0">
                                    <a href="#" class="badge bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>

                                    <h3><a href="post-single-2.html" class="btn-link stretched-link text-reset">25일까지 예정부가세 납부…코로나·태풍피해 사업자는 직권제외</a></h3>
                                    <p>개인사업자와 소규모 법인사업자는 오는 25일까지 올해 하반기(2기) 예정 부가가치세를 납부해야 한다. 국세청은 개인 일반과세자 186만명과 소규모 법인사업자 15만명에 대해 올해 1∼6월 납부세액의 절반에 해당하는 부가세를 예정고지에 따라 납부해야 한다고 7일 안내했다.</p>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item">
                                            <div class="d-flex align-items-center position-relative">
                                                <span class="ms-3">이지선 기자</span>
                                            </div>
                                        </li>
                                        <li class="nav-item">2022.10.07</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-5">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/05_news/news02.jpg" style="height: 234px;" alt="">
                                </div>
                                <div class="col-md-7 mt-3 mt-md-0">
                                    <a href="#" class="badge bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                    <h3><a href="post-single-2.html" class="btn-link stretched-link text-reset">경상수지 체질 개선에 총력…내년 초까지 18개 신규대책 마련</a></h3>
                                    <p>정부가 경상수지의 체질 개선을 위해 범부처 역량을 결집해 18건의 신규 대책을 마련하는 등 총력 대응하기로 했다. 조선과 디스플레이 등 주력 산업 대책 뿐 아니라 관광산업 진흥책도 함께 내놓기로 했다.</p>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item">
                                            <div class="d-flex align-items-center position-relative">
                                                <span class="ms-3">김지영 기자</span>
                                            </div>
                                        </li>
                                        <li class="nav-item">2022.10.07</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-5">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/05_news/news03.jpg" style="height: 234px;" alt="">
                                </div>
                                <div class="col-md-7 mt-3 mt-md-0">
                                    <a href="#" class="badge bg-warning text-dark mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                    <h3><a href="post-single-2.html" class="btn-link stretched-link text-reset">“우선분양 받으려면 3억원 내세요”… 장기민간임대 ‘매매예약금’ 논란</a></h3>
                                    <p>금리인상 등의 영향으로 장기간 안정적으로 거주할 수 있는 민간임대 아파트에 대한 관심이 커지고 있는 가운데, 한 민간임대 아파트에서 계약자들에게 우선분양을 받으려면 임대보증금 외에 ‘매매예약금’도 내라고 요구해 논란이 되고 있다. </p>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item">
                                            <div class="d-flex align-items-center position-relative">
                                                <span class="ms-3">김송이 기자</span>
                                            </div>
                                        </li>
                                        <li class="nav-item">2022.10.07</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                        <!-- Card item START -->
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-5">
                                    <img class="rounded-3" src="${path}/resources/resources1b/images/05_news/news04.jpg" style="height: 234px;" alt="">
                                </div>
                                <div class="col-md-7 mt-3 mt-md-0">
                                    <a href="#" class="badge bg-warning text-dark mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                    <h3><a href="post-single-2.html" class="btn-link stretched-link text-reset">“매매계약 기억 가물”…'5억이 3억대' 노도강 아파트 '거래' 단절</a></h3>
                                    <p>영끌(영혼까지 끌어 대출) 매수가 활발했던 ‘노도강(서울 노원구·도봉구·강북구)’ 부동산 시장이 차갑게 식었다. 매수세가 급격히 꺾이면서 매매가 하락 현상이 뚜렷해져서다. 실제 일부는 고점 대비 30~40%까지 가격이 하락하면서 2년간 올랐던 상승분을 반납하는 모양새다.</p>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item">
                                            <div class="d-flex align-items-center position-relative">
                                                <span class="ms-3">김재혁 기자</span>
                                            </div>
                                        </li>
                                        <li class="nav-item">2022.10.07</li>
                                    </ul>
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

                    <!-- Sidebar START -->
                    <div class="col-lg-3 mt-5 mt-lg-0">
                        <div data-sticky data-margin-top="80" data-sticky-for="767">
                            <h4>Share this article</h4>
                            <ul class="nav text-white-force">
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-facebook" href="#">
                                        <i class="fab fa-facebook-square align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-twitter" href="#">
                                        <i class="fab fa-twitter-square align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-linkedin" href="#">
                                        <i class="fab fa-linkedin align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-pinterest" href="#">
                                        <i class="fab fa-pinterest align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-primary" href="#">
                                        <i class="far fa-envelope align-middle"></i>
                                    </a>
                                </li>
                            </ul>


                            <div class="row">
                                <!-- Recent post widget START -->
                                <div class="col-12 col-sm-6 col-lg-12">
                                    <h4 class="mt-4 mb-3">Recent post</h4>
                                    <!-- Recent post item -->
                                    <div class="card mb-3">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img class="rounded" src="${path}/resources/resources1b/images/05_news/news01.jpg" style="height: 65px;" alt="">
                                            </div>
                                            <div class="col-8">
                                                <h6><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">25일까지 예정부가세 납부…코로나·태풍피해 사업자는 직권제외</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Recent post item -->
                                    <div class="card mb-3">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img class="rounded" src="${path}/resources/resources1b/images/05_news/news02.jpg" style="height: 65px;" alt="">
                                            </div>
                                            <div class="col-8">
                                                <h6><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">경상수지 체질 개선에 총력…내년 초까지 18개 신규대책 마련</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Recent post item -->
                                    <div class="card mb-3">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img class="rounded" src="${path}/resources/resources1b/images/05_news/news03.jpg" style="height: 65px;" alt="">
                                            </div>
                                            <div class="col-8">
                                                <h6><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">“우선분양 받으려면 3억원 내세요”… 장기민간임대 ‘매매예약금’ 논란</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Recent post item -->
                                    <div class="card mb-3">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img class="rounded" src="${path}/resources/resources1b/images/05_news/news04.jpg" style="height: 65px;" alt="">
                                            </div>
                                            <div class="col-8">
                                                <h6><a href="post-single-2.html" class="btn-link stretched-link text-reset fw-bold">“매매계약 기억 가물”…'5억이 3억대' 노도강 아파트 '거래' 단절</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Recent post widget END -->
                                <h4 class="mt-5 mb-3 mice">인기<a href="#!" class="text-primary">오피니언</a></h4>
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
                    <!-- Sidebar END -->
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