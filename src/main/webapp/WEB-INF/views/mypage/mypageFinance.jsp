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
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- 마이페이지 CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/mypage.css">
</head>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main>
        <!-- ======================= 내 금융상품 시작 -->
        <section class="py-4">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 d-sm-flex justify-content-between align-items-center" style="margin-bottom:10px;">
                        <div class="col-4"></div>
                        <div class="col-8 mb-1" style="margin-left:20px;">
                            <h3 class="mb-2 mb-sm-0"><i class="bi bi-piggy-bank"></i>&nbsp;My Financial Instruments</h3>
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
                                        <a class="card-nav-link" href="${path}/member/view"><i class="fa fa-solid fa-user" style="margin-right:10px; margin-left: 10px;"></i>회원정보</a>
                                        <a class="card-nav-link active" href="${path}/mypage/finPro"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link" href="1myPageSubscription.html"><i class="fa fa-solid fa-building" style="margin-right:10px; margin-left: 10px;"></i>부동산청약</a>
                                        <a class="card-nav-link" href="${path}/myNews"><i class="fa fa-solid fa-bookmark" style="margin-right:10px; margin-left: 10px;"></i>뉴스스크랩</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/mylist"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/myReply"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 내 금융상품 시작 -->
                    <div class="col-8 col-xxl-8">
                        <!-- Blog list table START -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- Card body START -->
                            <div class="card-body">
                                <!-- Search and select START -->
                                <div class="row g-3 align-items-center justify-content-between mb-3">
                                    <!-- Search -->
									<form action="${path}/mypage/finPro" method="get" class="rounded position-relative">
										<div class="row">
											<div class="col-3">
											 <!-- Short by filter -->		
										       <select id="sort" name="sort" class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
										           <option value="likeBy" <c:if test="${param.sort == 'likeBy'}">selected</c:if>>최근 찜 순</option>
										           <option value="maxRate" <c:if test="${param.sort == 'maxRate'}">selected</c:if>>최고금리 순</option>
										       </select>
											</div>
											<div class="col-4"></div>
											<div class="col-5">
										       <input name="searchValue" id="searchValue" value="${param.searchValue}" class="form-control pe-5 bg-transparent" type="search" placeholder="Product Search" aria-label="Search">
										       <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>		
											</div>
										<!-- Select option -->
										</div>  
									</form>
                                </div>
                                <!-- 찜한 금융상품 시작 -->
                                <div class="table-responsive border-0">
                                    <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                        <!-- Table head -->
                                    <c:if test="${empty list}">                                   
										<h5 style="text-align:center;">찜한 상품이 없습니다!</h5>                                  	
                                    </c:if>                                                                                       
                                   	<c:if test="${!empty list}">
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
                                            <c:forEach var="finLikeList" items="${list}">
                                            <tr>
                                                <!-- 금융샹품명 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0">
                                                    	<c:if test="${finLikeList.finType == 1}">
	                                                    	<a href="${path}/finance/productDetail?id=${finLikeList.prtId}"> ${finLikeList.finPrdtNm}</a>
	                                                    </c:if>
	                                                    <c:if test="${finLikeList.finType == 2}">
	                                                    	<a href="${path}/finance/depositDetail?id=${finLikeList.prtId}"> ${finLikeList.finPrdtNm}</a>
	                                                    </c:if>
	                                                    <c:if test="${finLikeList.finType == 3}">
	                                                    	<a href="${path}/finance/mortgageDetail?id=${finLikeList.prtId}"> ${finLikeList.finPrdtNm}</a>
	                                                    </c:if>
	                                                    <c:if test="${finLikeList.finType == 4}">
	                                                    	<a href="${path}/finance/leaseLoanDetail?id=${finLikeList.prtId}"> ${finLikeList.finPrdtNm}</a>
	                                                    </c:if>                                                   
                                                    </h6>
                                                </td>
                                                <!-- 금융사명 -->
                                                <td>
                                                    <h6 class="mb-0">${finLikeList.korCoNm}</h6>
                                                </td>
                                                <!-- 최저금리 -->
                                                <td class="text-center">${finLikeList.minRate}%</td>
                                                <!-- 최고금리 -->
                                                <td class="text-center">${finLikeList.maxRate}%</td>
                                                <!-- delete -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="${path}/mypage/deleteFinPro?id=${finLikeList.prtId}" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                   	</c:if>
                                        <!-- Table body END -->
                                    </table>
                                </div>
                                <!-- 내 금융상품 끝 -->
                            </div>
                        </div>
                        <!-- 페이지넘버 시작 -->
                        <div class="mt-4" style="margin-bottom:80px;">
                            <nav class="mb-sm-0 d-flex justify-content-center mt-0 " aria-label="navigation ">
	                            <ul class="pagination pagination-sm pagination-bordered mb-0">
	                                <li class="page-item">
	                                    <a onclick="movePage('${path}/mypage/finPro?page=${pageInfo.prevPage}');" class="page-link">Prev</a>
	                                </li>
	                                <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                                	<c:if test="${pageInfo.currentPage == status.current}">
	                                  <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
	                                	</c:if>
	                                	<c:if test="${pageInfo.currentPage != status.current}">
	                                  <li class="page-item"><a onclick="movePage('${path}/mypage/finPro?page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
	                                	</c:if>                                         
	                                </c:forEach>
	                                <li class="page-item">
	                                    <a onclick="movePage('${path}/mypage/finPro?page=${pageInfo.nextPage}');" class="page-link">Next</a>
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
        <script type="text/javascript">
			function movePage(pageUrl){
				var searchValue = document.getElementById("searchValue");
				var sort = document.getElementById("sort");
				var sortValue = sort.options[sort.selectedIndex].value;
					pageUrl = pageUrl + '&searchValue=' + searchValue.value + '&sort=' + sortValue; 
				location.href = encodeURI(pageUrl);	
			}			
		</script>
    </main>
   <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>