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
                                        <a class="card-nav-link" href="1myPageFinance.html"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link" href="1myPageSubscription.html"><i class="fa fa-solid fa-building" style="margin-right:10px; margin-left: 10px;"></i>부동산청약</a>
                                        <a class="card-nav-link" href="1mypage-newsscrap1003.html"><i class="fa fa-solid fa-bookmark" style="margin-right:10px; margin-left: 10px;"></i>뉴스스크랩</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/mylist"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link active" href="${path}/MypageBoard/myReply"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 댓글 시작 -->
                    <div class="table-responsive border-0 col-8 mb-0">
                 		<table class="table align-middle p-4 mb-0 table-hover table-shrink">
                        	<!-- 댓글 목록 -->
                        	<c:forEach var="reply" items="${list}">
                        	<div class="mb-0 pb-1 border-bottom">
                           		<div class="d-flex justify-content-between mb-2">
                               		<div class="d-flex align-items-center pe-2">
                                   		<!-- 게시판 구분 -->
                                    	<c:if test="${reply.board_list_no == 1}">
                                        	<div class="ps-2">
                                            	<a href="${path}/board/list?type=1" class="badge text-bg-primary"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
	                                        </div>
                                       	</c:if>
                                       	<c:if test="${reply.board_list_no == 2}">
	                                        <div class="ps-2">
	                                            <a href="${path}/board/list?type=2" class="badge text-bg-warning"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
	                                        </div>
                                       	</c:if>
                                       	<c:if test="${reply.board_list_no == 3}">
	                                        <div class="ps-2">
	                                            <a href="${path}/board/list?type=3" class="badge text-bg-danger"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
	                                        </div>
                                       	</c:if>
                                       	<c:if test="${reply.board_list_no == 4}">
	                                        <div class="ps-2">
	                                            <a href="${path}/board/list?type=4" class="badge text-bg-success"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
	                                        </div>
                                    	</c:if>
	                                    <!-- 게시글 제목 -->
	                                    <div style="margin-left: 10px; margin-top: 16px;">
	                                    	<a href="${path}/board/BoardDetail?board_no=${reply.board_no}" style="text-decoration-line: none; color: #595D69;">
	                                    		<p><b>${reply.board_title}</b></p>
                                    		</a>
	                                    </div>
									</div>
                                   	<!-- 댓글 등록 날짜 -->
                                    <div>
                                        <div>
                                            <span class="text-muted fs-sm"><fmt:formatDate type="date" value="${reply.reply_register}"/></span>
                                        </div>
                                        <!-- Action -->
                                        <div class="d-flex gap-2 justify-content-between mt-1" style="float: right;">
                                            <a href="${path}/board/BoardDetail?board_no=${reply.board_no}" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                            <a href="${path}/board/BoardDetail?board_no=${reply.board_no}" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class="bi bi-pencil-square"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 9px;">
                                    <p>${reply.reply_content}</p>
                                </div>
                            </div>
                            </c:forEach>
                            <!-- 페이지넘버 시작 -->
	                        <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
	                            <ul class="pagination pagination-sm pagination-bordered mb-0">
	                                <li class="page-item">
	                                    <a onclick="movePage('${path}/MypageBoard/myReply?page=${pageInfo.prevPage}');" class="page-link">Prev</a>
	                                </li>
	                                <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                                	<c:if test="${pageInfo.currentPage == status.current}">
	                                  <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
	                                	</c:if>
	                                	<c:if test="${pageInfo.currentPage != status.current}">
	                                  <li class="page-item"><a onclick="movePage('${path}/MypageBoard/myReply?page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
	                                	</c:if>                                         
	                                </c:forEach>
	                                <li class="page-item">
	                                    <a onclick="movePage('${path}/MypageBoard/myReply?page=${pageInfo.nextPage}');" class="page-link">Next</a>
	                                </li>
	                            </ul>
	                        </nav>
	                        <!-- 페이지넘버 끝 -->
                            <!-- Table body END -->
                        </table>
                    </div>
                    <!-- Blog list table END -->
                    <!-- 내 댓글 보기 끝 -->
                </div>
            </div>
        </section>
        <script type="text/javascript">
            function movePage(pageUrl){
            	pageUrl = pageUrl;
                location.href = encodeURI(pageUrl);
            }
        </script>
    </main>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>