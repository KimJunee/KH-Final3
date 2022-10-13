<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>   

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | My Page | Reply</title>
	<!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- 마이페이지 CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/mypage.css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main>
        <!-- ======================= Main contain START -->
        <section class="py-4">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 d-sm-flex justify-content-between align-items-center" style="margin-bottom:10px;">
                        <div class="col-4"></div>
                        <div class="col-8 mb-1" style="margin-left:20px;">
                            <h3 class="mb-2 mb-sm-0"><i class="fa fa-solid fa-comment-dots"></i>&nbsp;Reply</h3>
                        </div>
                    </div>
                    <div class="col-4 mb-0">
                        <aside class="pe-xl-4 mb-5">
                            <!-- 왼쪽 사이드바 -->
                            <div class="card border card-body shadow-sm pb-1 me-lg-1">
                                <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-2"><img class="" src="${path}/resources/resources1b/images/avatar_w2.png" width="48" alt="Annette Black">
                                    <div class="pt-md-2 pt-lg-0 ps-3 ps-md-0 ps-lg-3">
                                        <h2 class="fs-lg mb-0" style="margin-left: 10px;">탬버리이인</h2>
                                        <ul class="list-unstyled fs-sm mt-1 mb-0">
                                            <li>
                                                <a class="nav-link fw-normal p-0" href="mailto:annette_black@email.com">
                                                    <i class="fi-mail opacity-60 me-2"></i>rlaxodla91@email.com</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <a class="btn btn-outline-primary btn-lg w-100 mb-2 fw-bold" style="border-radius: 10px;" href="1community-board-post-lightfooter.html">+ 게시글 작성하기</a>
                                <div class="collapse d-md-block mt-0 fw-bold" id="account-nav">
                                    <div class="card-nav">
                                        <a class="card-nav-link" href="1myPageInfo.html"><i class="fa fa-solid fa-user" style="margin-right:10px; margin-left: 10px;"></i>회원정보</a>
                                        <a class="card-nav-link" href="1myPageFinance.html"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link" href="1myPageSubscription.html"><i class="fa fa-solid fa-building" style="margin-right:10px; margin-left: 10px;"></i>부동산청약</a>
                                        <a class="card-nav-link" href="1mypage-newsscrap1003.html"><i class="fa fa-solid fa-bookmark" style="margin-right:10px; margin-left: 10px;"></i>뉴스스크랩</a>
                                        <a class="card-nav-link" href="1myPage-board.html"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link active" href="1myPage-reply.html"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 댓글 시작 -->
                    <div class="table-responsive border-0 col-8 mb-0">
                        <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                            <!-- 댓글 1 -->
                            <div class="mb-0 pb-1 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                    <div class="d-flex align-items-center pe-2">
                                        <div class="ps-2">
                                            <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                        </div>
                                        <div style="margin-left: 10px; margin-top: 10px;">
                                            <p><b>강남 역세권 청약 일정 어디서 찾아보죠?</b></p>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <span class="text-muted fs-sm">2022-10-05</span>
                                        </div>
                                        <!-- Action -->
                                        <div class="d-flex gap-2 justify-content-between mt-1" style="float: right;">
                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 9px;">
                                    <p>아하 핀터치에 부동산청약이 엄청 잘되어 있네요!! 좋은 정보 감사합니다!</p>
                                </div>
                            </div>
                            <!-- 댓글 2 -->
                            <div class="mt-3 pb-1 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                    <div class="d-flex align-items-center pe-2">
                                        <div class="ps-2">
                                            <a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                        </div>
                                        <div style="margin-left: 10px; margin-top: 10px;">
                                            <p><b>삼전만 믿고 있다</b></p>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <span class="text-muted fs-sm">2022-09-29</span>
                                        </div>
                                        <!-- Action -->
                                        <div class="d-flex gap-2 justify-content-between mt-1" style="float: right;">
                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 9px;">
                                    <p>저 이 글 보고 7층에 물려있음.. 속지마십시오</p>
                                </div>
                            </div>
                            <!-- 댓글 3 -->
                            <div class="mt-3 pb-1 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                    <div class="d-flex align-items-center pe-2">
                                        <div class="ps-2">
                                            <a href="#" class="badge text-bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                                        </div>
                                        <div style="margin-left: 10px; margin-top: 10px;">
                                            <p><b>고양이 키우고 싶당</b></p>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <span class="text-muted fs-sm">2022-09-25</span>
                                        </div>
                                        <!-- Action -->
                                        <div class="d-flex gap-2 justify-content-between mt-1" style="float: right;">
                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 9px;">
                                    <p>나만 없어 고양이..나도 고양이 키우고 시퍼..나도 쓰담쓰담하고 시퍼..냥냥펀치 맞고 기절하고 시펑..나도 츄르 까주고 시펑..캔 따는 소리에 쪼르르 쫒아오는거 농락하고 시펑..낚싯대 힘차게 휘두르며 농락하고 시펑..</p>
                                </div>
                            </div>
                            <!-- 댓글 4 -->
                            <div class="mt-3 pb-1 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                    <div class="d-flex align-items-center pe-2">
                                        <div class="ps-2">
                                            <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                        </div>
                                        <div style="margin-left: 10px; margin-top: 10px;">
                                            <p><b>정치정치조정치</b></p>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <span class="text-muted fs-sm">2022-09-20</span>
                                        </div>
                                        <!-- Action -->
                                        <div class="d-flex gap-2 justify-content-between mt-1" style="float: right;">
                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 9px;">
                                    <p>님 진짜 이러시면 곤란해요</p>
                                </div>
                            </div>
                            <!-- 댓글 5 -->
                            <div class="mt-3 pb-1 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                    <div class="d-flex align-items-center pe-2">
                                        <div class="ps-2">
                                            <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                        </div>
                                        <div style="margin-left: 10px; margin-top: 10px;">
                                            <p><b>개발자노동보호법 입법하라</b></p>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <span class="text-muted fs-sm">2022-09-19</span>
                                        </div>
                                        <!-- Action -->
                                        <div class="d-flex gap-2 justify-content-between mt-1" style="float: right;">
                                            <a href="#" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                            <a href="dashboard-post-edit.html" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 9px;">
                                    <p>그래 개발자도 사람이다!!</p>
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
                            <!-- Table body END -->
                        </table>
                    </div>
                    <!-- Blog list table END -->
                    <!-- 내 댓글 보기 끝 -->
                </div>
            </div>
        </section>
    </main>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>