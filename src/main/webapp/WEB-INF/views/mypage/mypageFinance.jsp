<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>   

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | My Page | FinancialProduct</title>
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
		<!-- ============ 메뉴소개 끝 ============ -->
        <!-- ======================= 내 금융상품 시작 -->
        <section class="py-4">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 d-sm-flex justify-content-between align-items-center">
                        <div class="col-4"></div>
                        <div class="col-8 mb-1" style="margin-left:20px;">
                            <h3 class="mb-2 mb-sm-0"><i class="bi bi-piggy-bank"></i>&nbsp;My Financial Instruments</h3>
                        </div>
                    </div>

                    <div class="col-4 mb-0">
                        <aside class="pe-xl-4 mb-5">
                            <!-- Account nav-->
                            <div class="card border card-body shadow-sm pb-1 me-lg-1">
                                <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-2"><img class="" src="resources/resources1b/images/favicon.ico" width="48" alt="Annette Black">
                                    <div class="pt-md-2 pt-lg-0 ps-3 ps-md-0 ps-lg-3">
                                        <h2 class="fs-lg mb-0" style="margin-left: 10px;">탬버리이인</h2>
                                        <ul class="list-unstyled fs-sm mt-1 mb-0">
                                            <li>
                                            	<a class="nav-link fw-normal p-0" href="mailto:annette_black@email.com"><i class="fi-mail opacity-60 me-2"></i>rlaxodla91@email.com</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div><a class="btn btn-primary btn-lg w-100 mb-2 fw-bold" href="real-estate-add-property.html"><i class="fi-plus me-2"></i>+ 게시글 작성하기</a>
                                <a class="btn btn-outline-secondary d-block d-md-none w-100 mb-3" href="#account-nav" data-bs-toggle="collapse"><i class="fi-align-justify me-2"></i>Menu</a>
                                <div class="collapse d-md-block mt-0 fw-bold" id="account-nav">
                                    <div class="card-nav">
                                    	<a class="card-nav-link" href="real-estate-account-info.html"><i class="fa fa-solid fa-user" style="margin-right:10px; margin-left: 10px;"></i>회원정보</a>
                                    	<a class="card-nav-link active" href="real-estate-account-security.html"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link" href="real-estate-account-properties.html"><i class="fa fa-solid fa-building" style="margin-right:10px; margin-left: 10px;"></i>청약부동산</a>
                                        <a class="card-nav-link" href="real-estate-account-wishlist.html"><i class="fa fa-solid fa-bookmark" style="margin-right:10px; margin-left: 10px;"></i>뉴스 스크랩</a>
                                        <a class="card-nav-link" href="real-estate-account-reviews.html"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link" href="real-estate-account-notifications.html"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <div class="col-8 mb-0">
                        <!-- Blog list table START -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- Card body START -->
                            <div class="card-body">
                                <!-- Search and select START -->
                                <div class="row g-3 align-items-center justify-content-between mb-3">
                                    <!-- Search -->
                                    <div class="col-md-8">
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
                                                <option value="">최근 찜 순</option>
                                                <option>금융사명 순</option>
                                                <option>최고금리 순</option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                                <!-- 찜한 금융상품 시작 -->
                                <div class="table-responsive border-0">
                                    <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                        <!-- Table head -->
                                        <thead class="table-dark">
                                            <tr>
                                                <th scope="col" class="border-0 rounded-start">금융상품</th>
                                                <th scope="col" class="border-0">금융사</th>
                                                <th scope="col" class="border-0 text-center">최저금리</th>
                                                <th scope="col" class="border-0 text-center">최고금리</th>
                                                <th scope="col" class="border-0 rounded-end">delete</th>
                                            </tr>
                                        </thead>
                                        <!-- Table body START -->
                                        <tbody class="border-top-0">
                                            <!-- Table item -->
                                            <tr>
                                                <!-- 금융샹품명 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">우리SUPER주거래적금</a></h6>
                                                </td>
                                                <!-- 금융사명 -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">우리은행</a></h6>
                                                </td>
                                                <!-- 최저금리 -->
                                                <td class="text-center">1.5%</td>
                                                <!-- 최고금리 -->
                                                <td class="text-center">3.0%</td>
                                                <!-- delete -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- Table item -->
                                            <tr>
                                                <!-- 금융상풍명 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">퍼스트가계적금</a></h6>
                                                </td>
                                                <!-- 금융사명 -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">신한은행</a></h6>
                                                </td>
                                                <!-- 최저금리 -->
                                                <td class="text-center">1.8%</td>
                                                <!-- 최고금리 -->
                                                <td class="text-center">4.0%</td>
                                                <!-- delete -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- Table item -->
                                            <tr>
                                                <!-- 금융상품명 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">자유적금 (내가 만든 보너스적금)</a></h6>
                                                </td>
                                                <!-- 금융사명 -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">국민은행</a></h6>
                                                </td>
                                                <!-- 최저금리 -->
                                                <td class="text-center">1.8%</td>
                                                <!-- 최고금리 -->
                                                <td class="text-center">4.0%</td>
                                                <!-- delete -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- Table item -->
                                            <tr>
                                                <!-- 금융상품명 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">마이(my)적금</a></h6>
                                                </td>
                                                <!-- 금융사명 -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">우리은행</a></h6>
                                                </td>
                                                <!-- 최저금리 -->
                                                <td class="text-center">1.8%</td>
                                                <!-- 최고금리 -->
                                                <td class="text-center">4.0%</td>
                                                <!-- delete -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- Table item -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영플러스적금</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">신한은행</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td class="text-center">1.8%</td>
                                                <!-- Table data -->
                                                <td class="text-center">4.0%</td>
                                                <!-- Table data -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- Table item -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">내가만든 보너스적금</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">우리은행</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td class="text-center">1.8%</td>
                                                <!-- Table data -->
                                                <td class="text-center">4.0%</td>
                                                <!-- Table data -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <!-- Table body END -->
                                    </table>
                                </div>
                                <!-- Pagination START -->
                                <div class="d-sm-flex justify-content-center align-items-sm-center mt-4 mt-sm-3">
                                    <p class="mb-sm-0 text-center text-sm-start"></p>
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
                                <!-- Pagination END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
   <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>