<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
    
<!DOCTYPE html>
<html lang="ko">


<head>
    <title>FinTouch | My Page | Personal Info</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- 마이페이지 CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/mypage.css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main>
        <!-- ======================= 뉴스 스크랩 시작 -->
        <section class="py-4">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 d-sm-flex justify-content-between align-items-center" style="margin-bottom:10px;">
                        <div class="col-4"></div>
                        <div class="col-8 mb-1" style="margin-left:20px;">
                            <h3 class="mb-2 mb-sm-0"><i class="fa fa-solid fa-bookmark"></i>&nbsp;News Scraping</h3>
                        </div>
                    </div>
                    <div class="col-4 mb-0">
                        <aside class="pe-xl-4 mb-5">
                            <!-- 왼쪽 사이드바 -->
                            <div class="card border card-body shadow-sm pb-1 me-lg-1">
                                <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-2"><img class="" src="${path}/resources/resources1b/images/avatar_w2.png" width="48" alt="Annette Black">
                                    <div class="pt-md-2 pt-lg-0 ps-3 ps-md-0 ps-lg-3">
                                        <h2 class="fs-lg mb-0" style="margin-left: 10px;">${loginMember.user_nickname}</h2>
                                        <ul class="list-unstyled fs-sm mt-1 mb-0">
                                            <li>
                                                <i class="fi-mail opacity-60 me-2"></i>${loginMember.user_email}
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <a class="btn btn-outline-primary btn-lg w-100 mb-2 fw-bold" style="border-radius: 10px;" href="${path}/board/writePost">+ 게시글 작성하기</a>
                                <div class="collapse d-md-block mt-0 fw-bold" id="account-nav">
                                    <div class="card-nav">
                                        <a class="card-nav-link" href="${path}/member/view"><i class="fa fa-solid fa-user" style="margin-right:10px; margin-left: 10px;"></i>회원정보</a>
                                        <a class="card-nav-link" href="${path}/mypage/finPro"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link" href="1myPageSubscription.html"><i class="fa fa-solid fa-building" style="margin-right:10px; margin-left: 10px;"></i>부동산청약</a>
                                        <a class="card-nav-link active" href="1mypage-newsscrap1003.html"><i class="fa fa-solid fa-bookmark" style="margin-right:10px; margin-left: 10px;"></i>뉴스스크랩</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/mylist"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/myReply"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 스크랩 목록 시작 -->
                    <div class="col-md-8 col-xxl-8">
                        <!-- Blog list table START -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- Card body START -->
                            <div class="card-body">
                                <!-- Blog list table START -->
                                <div class="row g-3 align-items-center justify-content-between mb-3">
                                    <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                        <!-- 테이블 상단 -->
                                        <thead class="table-dark">
                                            <tr>
                                                <th scope="col" class="border-0 rounded-start"> 기사 제목 </th>
                                                <th scope="col" class="border-0 text-center"> 기자 </th>
                                                <th scope="col" class="border-0 text-center"> 작성일 </th>
                                                <th scope="col" class="border-0 text-center rounded-end"> 지우기 </th>
                                            </tr>
                                        </thead>
                                        <!-- 스크랩 목록 -->
                                        <tbody class="border-top-0">
                                            <!-- 스크랩 1 -->
                                            <tr>
                                                <!-- 기자 제목 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">"단번에 환차익, 2억 질렀다" 토스앱 발칵…1달러=1298원 버그</a></h6>
                                                </td>
                                                <!-- 기자 -->
                                                <td class="text-center">
                                                    <h6 class="mb-0"><a href="#">이보람</a></h6>
                                                </td>
                                                <!-- 작성일 -->
                                                <td class="text-center">2022-09-28</td>
                                                <!-- 지우기 -->
                                                <td style="padding-left: 20px;">
                                                    <div class="d-flex gap-2 text-center">
                                                        <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- 스크랩 2 -->
                                            <tr>
                                                <!-- 기자 제목 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">'필로폰 투약' 돈스파이크 구속…"심려 끼쳐 죄송"</a></h6>
                                                </td>
                                                <!-- 기자 -->
                                                <td class="text-center">
                                                    <h6 class="mb-0"><a href="#">윤솔</a></h6>
                                                </td>
                                                <!-- 작성일 -->
                                                <td class="text-center">2022-09-27</td>
                                                <!-- 지우기 -->
                                                <td style="padding-left: 20px;">
                                                    <div class="d-flex gap-2 text-center">
                                                        <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- 스크랩 3 -->
                                            <tr>
                                                <!-- 기자 제목 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">2400만원 보조금 받고 바로 되팔면 1000만원 차익…대체 뭐길래</a></h6>
                                                </td>
                                                <!-- 기자 -->
                                                <td class="text-center">
                                                    <h6 class="mb-0"><a href="#">이윤재</a></h6>
                                                </td>
                                                <!-- 작성일 -->
                                                <td class="text-center">2022-09-25</td>
                                                <!-- 지우기 -->
                                                <td style="padding-left: 20px;">
                                                    <div class="d-flex gap-2 text-center">
                                                        <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- 스크랩 4 -->
                                            <tr>
                                                <!-- 기자 제목 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">"푸틴이 터뜨렸다" 서방 국가들 발칵…발뺌한 러시아</a></h6>
                                                </td>
                                                <!-- 기자 -->
                                                <td class="text-center">
                                                    <h6 class="mb-0"><a href="#">노유정</a></h6>
                                                </td>
                                                <!-- 작성일 -->
                                                <td class="text-center">2022-09-24</td>
                                                <!-- 지우기 -->
                                                <td style="padding-left: 20px;">
                                                    <div class="d-flex gap-2 text-center">
                                                        <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- 스크랩 5 -->
                                            <tr>
                                                <!-- 기자 제목 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">세계 최대 자산운용사의 조언..."6~12개월 간 주식 멀리 하라"</a></h6>
                                                </td>
                                                <!-- 기자 -->
                                                <td class="text-center">
                                                    <h6 class="mb-0"><a href="#">홍성진</a></h6>
                                                </td>
                                                <!-- 작성일 -->
                                                <td class="text-center">2022-09-23</td>
                                                <!-- 지우기 -->
                                                <td style="padding-left: 20px;">
                                                    <div class="d-flex gap-2 text-center">
                                                        <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- 스크랩 6 -->
                                            <tr>
                                                <!-- 기자 제목 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">한미연합훈련 중 북한 도발‥훈련하는 동해로 탄도미사일 발사</a></h6>
                                                </td>
                                                <!-- 기자 -->
                                                <td class="text-center">
                                                    <h6 class="mb-0"><a href="#">김준석</a></h6>
                                                </td>
                                                <!-- 작성일 -->
                                                <td class="text-center">2022-09-21</td>
                                                <!-- 지우기 -->
                                                <td style="padding-left: 20px;">
                                                    <div class="d-flex gap-2 text-center">
                                                        <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <!-- Table body END -->
                                    </table>
                                </div>
                                <!-- 스크랩 목록 끝 -->
                            </div>
                        </div>
                        <!-- 페이지넘버 시작 -->
                        <div class="mt-4" style="margin-bottom:80px;">
                            <nav class="mb-sm-0 d-flex justify-content-center mt-0 " aria-label="navigation ">
                                <ul class="pagination pagination-sm pagination-bordered mb-3 ">
                                    <li class="page-item disabled ">
                                        <a class="page-link " href="# " tabindex="-1 " aria-disabled="true ">Prev</a>
                                    </li>
                                    <li class="page-item active "><a class="page-link " href="# ">1</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">2</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">3</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">4</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">5</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">6</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">7</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">8</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">9</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">10</a></li>
                                    <li class="page-item ">
                                        <a class="page-link " href="# ">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <!-- 페이지넘버 끝 -->
                    </div>
                </div>
        </section>
    </main>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>