<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

  
<%@include file="/WEB-INF/views/common/header.jsp" %>


<head>
    <title>FinTouch | FinanceProduct | Detail</title>
</head>

<c:set var="searchType" value="${param.searchType}" />
<c:if test="${empty searchType}">
	<c:set var="searchType" value="${'title'}"/>
</c:if>

<style>
	.etc {
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		/* width:100%; */
		max-width: 600px;
	}
</style>

<body>
	<!-- **************** MAIN CONTENT START **************** -->
    <section class="position-relative overflow-hidden" style="background-image:url(${path}/resources/resources1b/images/02_realEstate/03_reales_notice.jpeg); background-position: center; background-size: cover;">
        <!-- <section class="position-relative overflow-hidden" style="background-image:url(assets/images/03_reales_/03_reales_house.jpg); background-position: center; background-size: cover;"> -->
        <!-- <section class="position-relative overflow-hidden" style="background-image:url(assets/images/03_reales_/03_reales_etc.jpg); background-position: center; background-size: cover;"> -->
        <div class="bg-overlay bg-transparent opacity-5"></div>
        <!-- SVG decoration for curve -->
        <figure class="position-absolute bottom-0 left-0 w-100 d-md-block mb-n3 z-index-9">
            <svg class="fill-white" width="100%" height="150" viewBox="0 0 500 150" preserveAspectRatio="none">
                <path d="M0,150 L0,40 Q250,150 500,40 L580,150 Z"></path>
            </svg>
        </figure>

        <div class="container z-index-9 position-relative">

            <div class="row py-0 align-items-center text-center text-sm-start">
                <div class="col-sm-12 all-text-white mt-md-0">
                    <div class="py-0 py-md-5 my-2">

                        <!-- Badge with content -->
                        <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>

                        <!-- Title -->
                        <h1 class="display-5 mice" style="color:black;">청약공지사항</h1>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- =======================Main START -->
    
    <section class="pt-3 pt-lg-5">
            <div class="container" style="margin-top: 10px; margin-bottom: 40px;">

                <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

                <!-- Post list table START -->
                <h2 class="mice">청약공지사항</h2>
                <!-- 유형 카테고리 시작 -->
                <!-- Tab START -->
                <ul class="nav nav-tabs nav-tabs-line" style="margin-top: 20px;">
                    <li class="nav-item"> <a class="nav-link active" data-bs-toggle="tab" href="#tab-1">전체보기</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-2">토지</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-3">분양주택</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-4">신혼희망타운</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-5">임대주택</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-6">매입임대/전세임대</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-7">상가</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-8">기타</a> </li>
                </ul>
                <div class="tab-content bg-light p-4">
                    <div class="tab-pane show active" id="tab-1">
                    </div>
                    <div class="tab-pane" id="tab-2">
                        <a href="#"><i class="bi bi-dot"></i>주택용지</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>상가용지</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>산업시설용지</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>기타용지</a>
                    </div>
                    <div class="tab-pane" id="tab-3">
                    </div>
                    <div class="tab-pane" id="tab-4">
                    </div>
                    <div class="tab-pane" id="tab-5">
                        <a href="#"><i class="bi bi-dot"></i>통합공공임대</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>국민임대</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>공공임대</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>영구임대</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>행복주택</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>장기전세</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>신축다세대</a>
                    </div>
                    <div class="tab-pane" id="tab-6">
                        <a href="#"><i class="bi bi-dot"></i>매입임대</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>전세임대</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>집주인임대</a>
                    </div>
                    <div class="tab-pane" id="tab-7">
                        <a href="#"><i class="bi bi-dot"></i>분양·(구)임대상가(입찰)</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>임대상가(입찰)</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>임대상가(공모·심사)</a>&nbsp;&nbsp;
                        <a href="#"><i class="bi bi-dot"></i>임대상가(추첨)</a>
                    </div>
                    <div class="tab-pane" id="tab-8">
                    </div>
                </div>
                <!-- Tab END -->
                <!-- 유형 카테고리 끝 -->
                <div class="card border bg-transparent rounded-3" style="margin-bottom: 50px;">
                    <!-- Card body START -->
                    <div class="card-body p-3" style="margin-top: 20px; margin-bottom: 20px;">
                        <!-- Search and select START -->
                        <div class="row g-3 align-items-center justify-content-between mb-3" style="padding-bottom: 20px;">
                            <!-- Select option -->
                            <div class="col-md-3">
                                <!-- Short by filter -->
                                <form>
                                    <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
                                        <option value="">검색옵션</option>
                                        <option>유형</option>
                                        <option>제목</option>
                                        <option>담당부서</option>
                                    </select>
                                </form>
                            </div>
                            <!-- Search -->
                            <div class="col-md-9">
                                <form class="rounded position-relative">
                                    <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                    <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Search and select END -->
                        <!-- Post list table START -->
                        <div class="table-responsive border-0">
                            <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                <!-- Table head -->
                                <thead class="table-dark">
                                    <tr>
                                        <th scope="col" style="width: 5%; text-align: center;" class="border-0 rounded-start">번호</th>
                                        <th scope="col" style="width: 15%; text-align: center;">유형</th>
                                        <th scope="col" style="width: 50%; text-align: center; class="border-0">제목</th>
                                        <th scope="col" style="width: 15%; text-align: center;" class="border-0">담당부서</th>
                                        <th scope="col" style="width: 15%; text-align: center;" class="border-0 rounded-end">공지일</th>
                                    </tr>
                                </thead>
                                <!-- Table body START -->
                                <tbody class="border-top-0">
                                    <!-- Table item -->
                                    
                                    <c:if test="${!empty list}">
                                    	<c:forEach var="notice" items="${list}">
                                    		<tr>
		                                        <!-- 번호 -->
		                                        <td style="text-align: center;">
		                                            <c:out value="${pageInfo.listCount - notice.rnum +1}"/>
		                                        </td>
		                                        <!-- 유형 -->
		                                        <td style="text-align: center;">
		                                            <c:out value="${notice.ais_tp_cd_nm}"/>
		                                        </td>
		                                        <!-- 제목 -->
		                                        <td>
		                                        	<div class="etc">
			                                            <h6 class="mb-0">
				                                            <a href="${path}/realEstate/notice/view?no=${notice.rnum}">
				                                            	<c:out value="${notice.bbs_tl}"/>
				                                            </a>
			                                            </h6>
		                                        	</div>
		                                        </td>
		                                        <!-- 담당부서 -->
		                                        <td style="text-align: center;">
		                                            <c:out value="${notice.dep_nm}"/>
		                                        </td>
		                                        <!-- 공지일 -->
		                                        <td style="text-align: center;">
		                                            <c:out value="${notice.bbs_wou_dttm}"/>
		                                        </td>
		                                    </tr>
                                    	
                                    	</c:forEach>
                                    	
                                    </c:if>
                                    
                                </tbody>
                                <!-- Table body END -->
                            </table>
                        </div>
                        <!-- Post list table END -->
                    </div>
                </div>
                <!-- 페이지넘버 시작 -->
                <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
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
                <!-- 페이지넘버 끝 -->
                <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
            </div>
        </section>


	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>