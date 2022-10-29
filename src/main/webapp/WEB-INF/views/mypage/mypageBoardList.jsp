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
                            <h3 class="mb-2 mb-sm-0"><i class="fa fa-solid fa-quote-left"></i>&nbsp;Board list</h3>
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
                                        <a class="card-nav-link active" href="${path}/MypageBoard/mylist"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/myReply"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 내 글 보기 시작 -->
                    <div class="col-md-8 col-xxl-8">
                        <!-- Card header -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- Card body START -->
                            <div class="card-body">
                                <!-- Search and select START -->
                                <div class="row g-3 align-items-center justify-content-between mb-3">
                                    <!-- 상단 검색 -->
                                    <div class="col-md-7">
                                    	<c:forEach var="board" items="${list}" begin="0" end="0" step="1" varStatus="status">
	                                        <form action="${path}/MypageBoard/mylist" method="get" class="rounded position-relative">
	                                            <input class="form-control pe-5 bg-transparent" id="searchValue" type="search" name="searchValue" placeholder="Search" aria-label="Search" value="<c:out value="${param.searchValue}"/>">
	                                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
	                                        </form>
                                        </c:forEach>
                                    </div>
                                    <!-- Select option -->
                                    <div class="col-md-3">
                                        <!-- Short by filter -->
                                        <form>
                                            <select name="sort" id="sort" class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm" onchange="changeSort('${path}/MypageBoard/mylist?')">
								                <option value="DESC" <c:if test="${param.sort!=null and param.sort.equals('DESC')}">selected</c:if>>최근 순 정렬</option>
								                <option value="ASC" <c:if test="${param.sort!=null and param.sort.equals('ASC')}">selected</c:if>>오래된 순 정렬</option>
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
                                                <th style="width: 15%;" class="border-0 text-center rounded-start">Categories</th>
                                                <th style="width: 55%;" class="border-0">Title</th>
                                                <th style="width: 15%;" class="border-0 text-center">Date</th>
                                                <th style="width: 15%;" class="border-0 text-center rounded-end">Action</th>
                                            </tr>
                                        </thead>
                                        <!-- 목록 시작 -->
                                        <tbody class="border-top-0">
	                                        <c:if test="${empty list}">
												<tr>
													<td></td>
													<td style="text-align: right;">조회된 글이 없습니다.</td>
													<td></td>
													<td></td>
												</tr>
											</c:if>
											<c:if test="${!empty list}">
												<c:forEach var="board" items="${list}">
		                                            <!-- 글 목록 -->
		                                            <tr>
		                                                <!-- Categories -->
		                                                <c:if test="${board.board_list_no == 1}">
			                                                <td>
			                                                    <a href="${path}/board/list?type=1" class="badge text-bg-primary"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
			                                                </td>
		                                                </c:if>
		                                                <c:if test="${board.board_list_no == 2}">
			                                                <td>
			                                                    <a href="${path}/board/list?type=2" class="badge text-bg-warning"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
			                                                </td>
		                                                </c:if>
		                                                <c:if test="${board.board_list_no == 3}">
			                                                <td>
			                                                    <a href="${path}/board/list?type=3" class="badge text-bg-danger"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
			                                                </td>
		                                                </c:if>
		                                                <c:if test="${board.board_list_no == 4}">
			                                                <td>
			                                                    <a href="${path}/board/list?type=4" class="badge text-bg-success"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
			                                                </td>
		                                                </c:if>
		                                                <!-- Title -->
		                                                <td>
		                                                    <h6 class="course-title mt-2 mt-md-0 mb-0 ">
		                                                    <a href="${path}/board/BoardDetail?board_no=${board.board_no}">
		                                                    <c:out value="${board.board_title}"/></a></h6>
		                                                </td>
		                                                <!-- Date Created -->
		                                                <td class="text-center "><fmt:formatDate type="date" value="${board.board_register}"/></td>
		                                                <!-- Action -->
		                                                <td style="padding-left: 20px;">
		                                                    <div class=" d-flex gap-2 text-center">
		                                                        <a href="${path}/board/BoardDetail?board_no=${board.board_no}" class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Delete "><i class="bi bi-trash "></i></a>
		                                                        <a href="${path}/board/BoardDetail?board_no=${board.board_no}" class="btn btn-light btn-round mb-0 " data-bs-toggle="tooltip " data-bs-placement="top " title="Edit "><i class="bi bi-pencil-square "></i></a>
		                                                    </div>
		                                                </td>
		                                            </tr>
		                                        </c:forEach>
											</c:if>
                                        </tbody>
                                        <!-- Table body END -->
                                    </table>
                                </div>
                                <!-- 내 글 보기 끝 -->
                            </div>
                        </div>
                        <!-- 페이지넘버 시작 -->
                        <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                            <ul class="pagination pagination-sm pagination-bordered mb-0">
                                <li class="page-item">
                                    <a onclick="movePage('${path}/MypageBoard/mylist?page=${pageInfo.prevPage}');" class="page-link">Prev</a>
                                </li>
                                <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                	<c:if test="${pageInfo.currentPage == status.current}">
                                  <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
                                	</c:if>
                                	<c:if test="${pageInfo.currentPage != status.current}">
                                  <li class="page-item"><a onclick="movePage('${path}/MypageBoard/mylist?page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
                                	</c:if>                                         
                                </c:forEach>
                                <li class="page-item">
                                    <a onclick="movePage('${path}/MypageBoard/mylist?page=${pageInfo.nextPage}');" class="page-link">Next</a>
                                </li>
                            </ul>
                        </nav>
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
            
            function changeSort(pageUrl){
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