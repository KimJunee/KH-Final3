<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | Community</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/common/headerWhite.jsp" %>
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section style="background-image:url('${path}/resources/resources1b/images/avatar/fintouch/community04.png'); background-position: center; height:570px; width:99%;">
            <div style="margin-left: 385px; margin-top: 430px;">
                <h5 class="mice"><span style="color:#2163E8;">C&nbsp;O&nbsp;M&nbsp;M&nbsp;U&nbsp;N&nbsp;I&nbsp;T&nbsp;Y</span></h5>
                <h1 class="mice">실시간<span class="mice" style="color:#2163E8;">커뮤니티</span>인기글</h1>
            </div>
        </section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- ======================= 커뮤니티 메인 시작 -->
        <section class="py-4 mb-5" style="margin-top: -50px;">
            <div class="container">
                <div class="row g-4">
                    <div class="col-12">
                        <!-- Counter START -->
                        <div class="row g-4">
                            <div class="col-12">
                                <!-- 인기글 목록 시작 -->
                                <div class="card border-0 bg-transparent">
                                    <!-- Card body START -->
                                    <div class="card-body">
                                        <!-- 검색 시작 -->
                                        <div class="row g-3 align-items-center justify-content-between mb-3">
                                            <!-- 검색 -->
                                            <div class="col-md-12">
                                            <c:forEach var="board" items="${list}" begin="0" end="0" step="1" varStatus="status">
                                                <form class="rounded position-relative" action="${path}/board/list">
                                                	<input type="hidden" id="type" name="type" value="${board.board_list_no}" />
                                                    <input id="searchValue" name="searchValue" class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search" value="${param.searchValue}">
                                                    <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit" >
                                                   		<i class="fas fa-search fs-6"></i>
                                                    </button>
                                                </form>
                                            </c:forEach>
                                            </div>
                                        </div>
                                        <!-- 검색 끝 -->
                                        <!-- 인기글 시작 -->
                                        <div class="table-responsive border-0">
                                            <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                                <!-- Table head -->
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th scope="col" style="width: 10%;" class="border-0 text-center rounded-start">Categories</th>
                                                        <th scope="col" style="width: 55%;"class="border-0">&nbsp;&nbsp;Title</th>
                                                        <th scope="col" style="width: 15%;"class="border-0 text-center">Writer</th>
                                                        <th scope="col" style="width: 10%;"class="border-0 text-center">Date</th>
                                                        <th scope="col" style="width: 5%;" class="border-0 text-center">Hits</th>
                                                        <th scope="col" style="width: 5%;" class="border-0 text-center rounded-end">Comments</th>
                                                    </tr>
                                                </thead>
                                                <!-- 인기글 10개 -->
                                                <tbody class="border-top-0">
                                                <c:if test="${empty list}">
                                                	<tr>
														<td colspan="6">조회된 글이 없습니다.</td>
													</tr>
                                                </c:if>
                                                <c:if test="${!empty list}">
													<c:forEach var="board" items="${list}" begin="0" end="9" step="1" varStatus="status">
														<tr>
                                                        <!-- Categories -->
                                                        <td>
                                                        	<c:if test="${board.board_list_no == 1}">                                                    	
	                                                            <a href="${path}/board/list?type=1" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                                        	</c:if>
                                                        	<c:if test="${board.board_list_no == 2}">                                                    	
	                                                            <a href="${path}/board/list?type=2" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                                        	</c:if>
                                                        	<c:if test="${board.board_list_no == 3}">                                                    	
	                                                            <a href="${path}/board/list?type=3" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                                        	</c:if>
                                                        	<c:if test="${board.board_list_no == 4}">                                                    	
	                                                            <a href="${path}/board/list?type=4" class="badge text-bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                                                        	</c:if>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0">
                                                            <a href="${path}/board/BoardDetail?board_no=${board.board_no}">
                                                            <c:out value="${board.board_title}" /></a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><c:out value="${board.user_nickName}"/></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center"><fmt:formatDate value="${board.board_register}"/></td>
                                                        <!-- Hits -->
                                                        <td class="text-center"><c:out value="${board.board_hit}" /></td>
                                                        <!-- Comments -->
                                                        <td class="text-center"><c:out value="${board.reply_cnt}" /></td>
                                                    </tr>
													</c:forEach>
												</c:if>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- 인기글 끝 -->
                                    </div>
                                </div>
                                <!-- 인기글 테이블 끝 -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row g-4 mt-3">
                    <!-- 정치 첫번째줄 왼쪽 -->
                    <div class="col-6">
                        <!-- 정치글 목록 시작 -->
                        <div class="card border-0 bg-transparent rounded-3">
                            <!-- 테두리 시작 -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <div style="float:left;">
                                                <a href="${path}/board/list?type=1" class="badge text-bg-primary mt-2" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                            </div>
                                            <div style="float:left;">
                                                <h1 class="mice">&nbsp;&nbsp;정치</h1>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="${path}/board/list?type=1" class="text-body ">
                                                <p><b>정치글 더보기&nbsp;&nbsp;</b><i class="bi bi-arrow-right "></i></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="table-responsive border-0 ">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                            <!-- Table head -->
                                            <thead class="table-dark ">
                                                <tr>
                                                    <th style="width: 60%;" class="border-0 rounded-start ">&nbsp;&nbsp;Title</th>
                                                    <th style="width: 30%;" class="border-0 text-center ">Writer</th>
                                                    <th style="width: 10%;" class="border-0 text-center rounded-end ">Hits</th>
                                                </tr>
                                            </thead>
                                            <!-- 정치 5개 -->
                                            <tbody class="border-top-0 ">
                                            	<c:if test="${empty list1}">
                                            		<td colspan="6">조회된 글이 없습니다.</td>
                                            	</c:if>
                                            	<c:if test="${!empty list1}">
                                            		<c:forEach var="board" items="${list1}" begin="0" end="4" step="1" varStatus="status">                                        				
                                           				<tr>
		                                                    <!-- Title -->
		                                                    <td>
		                                                        <h6 class="course-title mt-2 mt-md-0 mb-0">
		                                                        <a href="${path}/board/BoardDetail?board_no=${board.board_no}">
		                                                        <c:out value="${board.board_title}" /></a></h6>
		                                                    </td>
		                                                    <!-- Writer -->
		                                                    <td class="text-center">
		                                                        <h6 class="mb-0 "><c:out value="${board.user_nickName}"/></h6>
		                                                    </td>
		                                                    <!-- Hits -->
		                                                    <td class="text-center"><c:out value="${board.board_hit}"/></td>
		                                                </tr>                                           		
                                            		</c:forEach>
                                            	</c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 부동산 첫번째줄 오른쪽 -->
                    <div class="col-6">
                        <!-- 부동산글 목록 시작 -->
                        <div class="card border-0 bg-transparent rounded-3">
                            <!-- 테두리 시작 -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <div style="float:left;">
                                                <a href="${path}/board/list?type=2" class="badge text-bg-warning mt-2" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                            </div>
                                            <div style="float:left;">
                                                <h1 class="mice">&nbsp;&nbsp;부동산</h1>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="${path}/board/list?type=2" class="text-body ">
                                                <p><b>부동산글 더보기&nbsp;&nbsp;</b><i class="bi bi-arrow-right "></i></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="table-responsive border-0 ">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                            <!-- Table head -->
                                            <thead class="table-dark ">
                                                <tr>
                                                    <th style="width: 60%;" class="border-0 rounded-start ">&nbsp;&nbsp;Title</th>
                                                    <th style="width: 30%;" class="border-0 text-center ">Writer</th>
                                                    <th style="width: 10%;" class="border-0 text-center rounded-end ">Hits</th>
                                                </tr>
                                            </thead>
                                            <!-- 부동산 5개 -->
                                            <tbody class="border-top-0 ">
                                            	<c:if test="${empty list2}">
                                            		<td colspan="6">조회된 글이 없습니다.</td>
                                            	</c:if>
                                            	<c:if test="${!empty list2}">
                                            		<c:forEach var="board2" items="${list2}" begin="0" end="4" step="1" varStatus="status">                                        				
                                           				<tr>
		                                                    <!-- Title -->
		                                                    <td>
		                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 ">
		                                                        <a href="${path}/board/BoardDetail?board_no=${board.board_no}">
		                                                        <c:out value="${board2.board_title}" /></a></h6>
		                                                    </td>
		                                                    <!-- Writer -->
		                                                    <td class="text-center ">
		                                                        <h6 class="mb-0 "><c:out value="${board2.user_nickName}"/></h6>
		                                                    </td>
		                                                    <!-- Hits -->
		                                                    <td class="text-center "><c:out value="${board2.board_hit}" /></td>
		                                                </tr>                                           		
                                            		</c:forEach>
                                            	</c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 금융 두번째줄 왼쪽 -->
                    <div class="col-6">
                        <!-- 금융글 목록 시작 -->
                        <div class="card border-0 bg-transparent rounded-3">
                            <!-- 테두리 시작 -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <div style="float:left;">
                                                <a href="${path}/board/list?type=3" class="badge text-bg-danger mt-2" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                            </div>
                                            <div style="float:left;">
                                                <h1 class="mice">&nbsp;&nbsp;금융</h1>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="${path}/board/list?type=3" class="text-body ">
                                                <p><b>금융글 더보기&nbsp;&nbsp;</b><i class="bi bi-arrow-right "></i></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="table-responsive border-0 ">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                            <!-- Table head -->
                                            <thead class="table-dark ">
                                                <tr>
                                                    <th style="width: 60%;" class="border-0 rounded-start ">&nbsp;&nbsp;Title</th>
                                                    <th style="width: 30%;" class="border-0 text-center ">Writer</th>
                                                    <th style="width: 10%;" class="border-0 text-center rounded-end ">Hits</th>
                                                </tr>
                                            </thead>
                                            <!-- 금융 5개 -->
                                            <tbody class="border-top-0 ">
                                            	<c:if test="${empty list3}">
                                            		<td colspan="6">조회된 글이 없습니다.</td>
                                            	</c:if>
                                            	<c:if test="${!empty list3}">
                                            		<c:forEach var="board" items="${list3}" begin="0" end="4" step="1" varStatus="status">                                        				
                                           				<tr>
		                                                    <!-- Title -->
		                                                    <td>
		                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 ">
		                                                        <a href="${path}/board/BoardDetail?board_no=${board.board_no}">
		                                                        <c:out value="${board.board_title}" /></a></h6>
		                                                    </td>
		                                                    <!-- Writer -->
		                                                    <td class="text-center ">
		                                                        <h6 class="mb-0 "><c:out value="${board.user_nickName}"/></h6>
		                                                    </td>
		                                                    <!-- Hits -->
		                                                    <td class="text-center "><c:out value="${board.board_hit}" /></td>
		                                                </tr>                                           		
                                            		</c:forEach>
                                            	</c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 자유 두번째줄 오른쪽 -->
                    <div class="col-6">
                        <!-- 자유글 목록 시작 -->
                        <div class="card border-0 bg-transparent rounded-3">
                            <!-- 테두리 시작 -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <div style="float:left;">
                                                <a href="${path}/board/list?type=4" class="badge text-bg-success mt-2" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                                            </div>
                                            <div style="float:left;">
                                                <h1 class="mice">&nbsp;&nbsp;자유</h1>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="${path}/board/list?type=4" class="text-body ">
                                                <p><b>자유글 더보기&nbsp;&nbsp;</b><i class="bi bi-arrow-right "></i></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="table-responsive border-0 ">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                            <!-- Table head -->
                                            <thead class="table-dark ">
                                                <tr>
                                                    <th style="width: 60%;" class="border-0 rounded-start ">&nbsp;&nbsp;Title</th>
                                                    <th style="width: 30%;" class="border-0 text-center ">Writer</th>
                                                    <th style="width: 10%;" class="border-0 text-center rounded-end ">Hits</th>
                                                </tr>
                                            </thead>
                                            <!-- 자유 5개 -->
                                               <tbody class="border-top-0 ">
                                            	<c:if test="${empty list4}">
                                            		<td colspan="6">조회된 글이 없습니다.</td>
                                            	</c:if>
                                            	<c:if test="${!empty list4}">
                                            		<c:forEach var="board" items="${list4}" begin="0" end="4" step="1" varStatus="status">                                        				
                                           				<tr>
		                                                    <!-- Title -->
		                                                    <td>
		                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 ">
		                                                        <a href="${path}/board/BoardDetail?board_no=${board.board_no}">
		                                                        <c:out value="${board.board_title}" /></a></h6>
		                                                    </td>
		                                                    <!-- Writer -->
		                                                    <td class="text-center ">
		                                                        <h6 class="mb-0 "><a href="# "><c:out value="${board.user_nickName}"/></a></h6>
		                                                    </td>
		                                                    <!-- Hits -->
		                                                    <td class="text-center "><c:out value="${board.board_hit}" /></td>
		                                                </tr>                                           		
                                            		</c:forEach>
                                            	</c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
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