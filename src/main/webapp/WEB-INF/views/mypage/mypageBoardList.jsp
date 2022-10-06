<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>   

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | My Page | Board List</title>
	<!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- 마이페이지 CSS -->
    <link rel="stylesheet" type="text/css" href="resources/css/mypage.css">
</head>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main>
	<!-- ============ 메뉴소개 시작 ============ -->
        <section class="bg-dark-overlay-1" style="background-image:url(resources/resources1b/images/finance01.jpg); background-position: center left; background-size: cover; height: 300px;">
            <div class="container">
                <div class="row mt-0">
                    <div class="col-lg-8 py-md-5 my-lg-0">
                        <a href="#" class="badge text-bg-mypage mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>MyPage</a>
                        <h1 class="text-black">마이페이지</h1>
                    </div>
                </div>
            </div>
        </section>
        <!-- ======================= Main contain START -->
        <section class="py-4">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 d-sm-flex justify-content-between align-items-center" style="margin-bottom:10px;">
                        <div class="col-4"></div>
                        <div class="col-8 mb-1" style="margin-left:20px;">
                            <h3 class="mb-2 mb-sm-0"><i class="fa fa-solid fa-quote-left"></i></i>&nbsp;Board list</h3>
                        </div>
                    </div>
                    <div class="col-4 mb-0">
                        <aside class="pe-xl-4 mb-5">
                            <!-- 왼쪽 사이드바 -->
                            <div class="card border card-body shadow-sm pb-1 me-lg-1">
                                <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-2"><img class="" src="resources/resources1b/images/favicon.ico" width="48" alt="Annette Black">
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
                                <a class="btn btn-primary btn-lg w-100 mb-2 fw-bold" href="real-estate-add-property.html">+ 게시글 작성하기</a>
                                <div class="collapse d-md-block mt-0 fw-bold" id="account-nav">
                                    <div class="card-nav">
                                        <a class="card-nav-link" href="real-estate-account-info.html"><i class="fa fa-solid fa-user" style="margin-right:10px; margin-left: 10px;"></i>회원정보</a>
                                        <a class="card-nav-link" href="real-estate-account-security.html"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link" href="real-estate-account-properties.html"><i class="fa fa-solid fa-building" style="margin-right:10px; margin-left: 10px;"></i>청약부동산</a>
                                        <a class="card-nav-link" href="real-estate-account-wishlist.html"><i class="fa fa-solid fa-bookmark" style="margin-right:10px; margin-left: 10px;"></i>뉴스 스크랩</a>
                                        <a class="card-nav-link active" href="real-estate-account-reviews.html"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link" href="real-estate-account-notifications.html"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 내 글 보기 시작 -->
                    <div class="col-md-8 col-xxl-8">
                        <div class="card border">
                            <!-- Card header -->
                            <div class="card border bg-transparent rounded-3">
                                <!-- Board list -->
                                <div class="card-header bg-transparent border-bottom p-3">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <h5 class="mb-2 mb-sm-0">Board list <span class="badge bg-primary bg-opacity-10 text-primary">105</span></h5>
                                    </div>
                                </div>
                                <!-- Board list -->

                                <!-- Card body START -->
                                <div class="card-body">
                                    <!-- Search and select START -->
                                    <div class="row g-3 align-items-center justify-content-between mb-3">
                                        <!-- 상단 검색 -->
                                        <div class="col-md-7">
                                            <form class="rounded position-relative">
                                                <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                                <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                            </form>
                                        </div>

                                        <!-- Select option -->
                                        <div class="col-md-3">
                                            <!-- Short by filter -->
                                            <form>
                                                <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
													<option value="">최근 작성 순</option>
													<option>오래된 작성 순</option>
													<option>정치</option>
													<option>뉴스</option>
													<option>금융</option>
													<option>부동산청약</option>
												</select>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- Search and select END -->

                                    <!-- Blog list table START -->
                                    <div class="table-responsive border-0">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                            <!-- Table head -->
                                            <thead class="table-dark">
                                                <tr>
                                                    <th scope="col" class="border-0 text-center rounded-start ">Categories</th>
                                                    <th scope="col " class="border-0">Title</th>
                                                    <th scope="col " class="border-0 text-center">Date Created</th>
                                                    <th scope=" col " class="border-0 text-center rounded-end" tyle="padding-left:10em;">Action</th>
                                                </tr>
                                            </thead>

                                            <!-- 목록 시작 -->
                                            <tbody class="border-top-0">
                                                <!-- 글 1 -->
                                                <tr>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="# " class="badge text-bg-warning "><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                                    </td>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">강남 역세권 청약 일정 어디서 찾아보죠?</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td class="text-center ">2022-11-02</td>
                                                    <!-- Action -->
                                                    <td style="padding-left: 20px;">
                                                        <div class=" d-flex gap-2 text-center">
                                                            <a href="# " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Delete "><i class="bi bi-trash "></i></a>
                                                            <a href="dashboard-post-edit.html " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Edit "><i class="bi bi-pencil-square "></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- 글 2 -->
                                                <tr>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="# " class="badge text-bg-primary "><i class="fas fa-circle me-2 small fw-bold "></i>Politics</a>
                                                    </td>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">이번에 새로 개정된 노동법</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td class="text-center ">2022-10-29</td>
                                                    <!-- Action -->
                                                    <td style="padding-left: 20px;">
                                                        <div class="d-flex gap-2 text-center ">
                                                            <a href="# " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Delete "><i class="bi bi-trash "></i></a>
                                                            <a href="dashboard-post-edit.html " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Edit "><i class="bi bi-pencil-square "></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- 글 3 -->
                                                <tr>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="# " class="badge text-bg-danger "><i class="fas fa-circle me-2 small fw-bold "></i>Finance</a>
                                                    </td>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">삼전아 나를 살려줘</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td class="text-center ">2022-10-22</td>
                                                    <!-- Action -->
                                                    <td style="padding-left: 20px;">
                                                        <div class="d-flex gap-2 ">
                                                            <a href="# " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Delete "><i class="bi bi-trash "></i></a>
                                                            <a href="dashboard-post-edit.html " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Edit "><i class="bi bi-pencil-square "></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- 글 4 -->
                                                <tr>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="# " class="badge text-bg-warning "><i class="fas fa-circle me-2 small fw-bold "></i>Real Estate</a>
                                                    </td>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">하남쪽 청약 노리는거 메리트가 있을까</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td class="text-center ">2022-10-14</td>
                                                    <!-- Action -->
                                                    <td style="padding-left: 20px;">
                                                        <div class="d-flex gap-2 text-center ">
                                                            <a href="# " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Delete "><i class="bi bi-trash "></i></a>
                                                            <a href="dashboard-post-edit.html " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Edit "><i class="bi bi-pencil-square "></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- 글 5 -->
                                                <tr>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="# " class="badge text-bg-success "><i class="fas fa-circle me-2 small fw-bold "></i>Free</a>
                                                    </td>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">우리 회사 구내식당 라인업</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td class="text-center ">2022-09-30</td>
                                                    <!-- Action -->
                                                    <td style="padding-left: 20px;">
                                                        <div class="d-flex gap-2 text-center ">
                                                            <a href="# " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Delete "><i class="bi bi-trash "></i></a>
                                                            <a href="dashboard-post-edit.html " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Edit "><i class="bi bi-pencil-square "></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- 글 6 -->
                                                <tr>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="# " class="badge text-bg-primary "><i class="fas fa-circle me-2 small fw-bold "></i>Politics</a>
                                                    </td>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">개발자보호법 좀 만들어주지</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td class="text-center ">2022-09-23</td>
                                                    <!-- Action -->
                                                    <td style="padding-left: 20px;">
                                                        <div class="d-flex gap-2 text-center ">
                                                            <a href="# " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Delete "><i class="bi bi-trash "></i></a>
                                                            <a href="dashboard-post-edit.html " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Edit "><i class="bi bi-pencil-square "></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- 글 7 -->
                                                <tr>
                                                    <!-- Categories -->
                                                    <td>
                                                        <a href="# " class="badge text-bg-success "><i class="fas fa-circle me-2 small fw-bold "></i>Free</a>
                                                    </td>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">고양이 키우고 싶당</a></h6>
                                                    </td>
                                                    <!-- Date Created -->
                                                    <td class="text-center ">2022-09-19</td>
                                                    <!-- Action -->
                                                    <td style="padding-left: 20px;">
                                                        <div class="d-flex gap-2 text-center ">
                                                            <a href="# " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Delete "><i class="bi bi-trash "></i></a>
                                                            <a href="dashboard-post-edit.html " class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Edit "><i class="bi bi-pencil-square "></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <!-- Table body END -->
                                        </table>
                                    </div>
                                    <!-- 내 글 보기 끝 -->
                                </div>
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
            </div>
            <!-- Blog list table END -->
        </section>
    </main>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>