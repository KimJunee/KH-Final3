<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<c:set var="board_list_no" value="${board_list_no}"/>  
    
<!DOCTYPE html>
<html lang="ko">

<style>
    /* 레이아웃분할css 시작 */
    div.left {
        width: 70%;
        float: left;
        box-sizing: border-box;
    }
    
    div.right {
        width: 28.5%;
        float: right;
        box-sizing: border-box;
    }
    /* 레이아웃분할css 끝 */
    /* 스크롤바 css 시작 */
    #scroll-bar {
        width: 200px;
        height: 400px;
        overflow: auto;
    }
    
    #scroll-bar::-webkit-scrollbar {
        width: 5px;
        /*스크롤바의 너비*/
    }
    
    #scroll-bar::-webkit-scrollbar-thumb {
        background-color: #2163E8;
        /*스크롤바의 색상*/
    }
    
    #scroll-bar::-webkit-scrollbar-track {
        background-color: #F7F8F9;
        /*스크롤바 트랙 색상*/
    }
    /* 스크롤바 css 끝 */
    /* 글쓰기 버튼 정렬 */
    .wirtebutton {
    	display: inline-flex;
    	justify-content: space-between;
    }
    /* 글쓰기 버튼 정렬 끝 */
    
</style>

<head>
    <title>FinTouch | Community | Free</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/common/headerWhite.jsp" %>
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section style="background-image:url('${path}/resources/resources1b/images/avatar/fintouch/community04.png'); background-position: center; height:570px; width:99%;">
        
        </section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- ======================= 커뮤니티 메인 시작 -->
        <section class="py-4mb-5" style="margin-top: -60px;">
            <div class="container">
                <div class="row g-4" style="margin-top:-150px;">
	                <c:if test="${not empty param.searchValue}">		        	
		                <h1 class="mice">검색하신 "<span class="mice" style="color:#2163E8;"><c:out value="${param.searchValue}" /></span>"에 대한 결과입니다.</h1>
           			</c:if>
                	<c:if test="${board_list_no == 1}">
                		<div class="wirtebutton" style="margin-top:10px;">
	                		<div>
		                		<a href="${path}/board/list?type=1" class="badge text-bg-primary" style="width: 100px; margin-bottom: 5px;"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
								<h1 class="mice">정치 <span style="color:#2163E8;">커뮤니티</span></h1>
							</div>
							<button type="submit" class="btn btn-outline-primary" style="margin-top:30px; hight:30px; font-size:20px; padding:5px 5px"><b>글쓰기</b></button>
						</div>
                	</c:if>
                	<c:if test="${board_list_no == 2}">
                		<a href="${path}/board/list?type=2" class="badge text-bg-warning" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
						<h1 class="mice">부동산 <span style="color:#F7C32E;">커뮤니티</span></h1>
                	</c:if>
                	<c:if test="${board_list_no == 3}">
                		<a href="${path}/board/list?type=3" class="badge text-bg-danger" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
						<h1 class="mice">금융 <span style="color:#D6293E;">커뮤니티</span></h1>
                	</c:if>
                	<c:if test="${board_list_no == 4}">
                		<a href="${path}/board/list?type=4" class="badge text-bg-success" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
						<h1 class="mice">자유 <span style="color:#0CBC87;">광장</span></h1>
                	</c:if>
                    <div class="col-12" style="margin-top: 35px;">
                        <!-- Counter START -->
                        <div class="row g-4">
                            <div class="col-12">
                                <!-- Blog list table START -->
                                <div class="card border bg-transparent rounded-3">
                                    <!-- Card body START -->
                                    <div class="card-body">
                                        <!-- Search and select START -->
                                        <div class="row g-3 align-items-center justify-content-between mb-3">
                                            <!-- Search -->
                                            <div class="col-md-8">
                                            	<c:forEach var="board" items="${list}" begin="0" end="0" step="1" varStatus="status">
                                            		<!-- <div><c:out value="${board.board_list_no}"/></div> -->
	                                                <form action="${path}/board/list" method="get" class="rounded position-relative">
	                                                	<input type="hidden" id="type" name="type" value="${board.board_list_no}" />
	                                                    <input class="form-control pe-5 bg-transparent" id="searchValue" name="searchValue" type="${board.board_list_no}" placeholder="Search" aria-label="Search" value="${param.searchValue}" />
	                                                    <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
	                                                </form>                                           	
                                            	</c:forEach>
                                            </div>
                                            <!-- Select option -->
                                            <div class="col-md-3">
                                                <!-- Short by filter -->
                                                <form>
                                                    <select name="sort" id="sort" class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm" onchange="changeSort('${path}/board/searchList?')">
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
                                                        <th scope="col" style="width: 5%;" class="border-0 text-center rounded-start">No</th>
                                                        <th scope="col" style="width: 60%;" class="border-0 ">Title</th>
                                                        <th scope="col" style="width: 15%;" class="border-0 text-center">Writer</th>
                                                        <th scope="col" style="width: 10%;" class="border-0 text-center">Date</th>
                                                        <th scope="col" style="width: 5%;" class="border-0 text-center">Hits</th>
                                                        <th scope="col" style="width: 5%;" class="border-0 text-center rounded-end">Comments</th>
                                                    </tr>
                                                </thead>
                                                <!-- 게시판 목록 시작 -->
                                                <tbody class="border-top-0">
	                                                <c:if test="${empty list}">
														<tr>
															<td></td>
															<td style="text-align: right;">조회된 글이 없습니다.</td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
													</c:if>
													<c:if test="${!empty list}">
														<c:forEach var="board" items="${list}">
															<tr>
																<!-- No -->
																<td class="text-center"><c:out value="${board.board_no}"/></td>
																<!-- Title -->
																<td>
																	<h6 class="course-title mt-2 mt-md-0 mb-0">
																		<a href="${path}/board/BoardDetail?board_no=${board.board_no}" style="text-decoration-line: none; color: #595D69;">
																			<c:out value="${board.board_title}"/>
																		</a>
																	</h6>
																</td>
																<!-- Writer -->
																<td class="text-center">
																	<h6 class="mb-0">
																		<c:out value="${board.user_nickName}"/>
																	</h6>
																</td>
																<!-- Posting date -->
																<td class="text-center"><fmt:formatDate type="date" value="${board.board_register}"/></td>
																<!-- Hits -->
																<td class="text-center">
																	<a href="${path}/board/BoardDetail?board_no=${board.board_no}" style="text-decoration-line: none; color: #595D69;">
																		<c:out value="${board.board_hit}"/>
																	</a>
																</td>
																<!-- Comments -->
																<td class="text-center"><c:out value="${board.reply_cnt}"/></td>
															</tr>
														</c:forEach>
													</c:if>
                                            	</tbody>
                                                <!-- 게시판 목록 끝 -->
                                            </table>
                                        </div>
	                                    <!-- 페이지넘버 시작 -->
	                                    <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
	                                        <ul class="pagination pagination-sm pagination-bordered mb-0">
	                                            <li class="page-item">
	                                                <a onclick="movePage('${path}/board/list?type=${board_list_no}&page=${pageInfo.prevPage}');" class="page-link">Prev</a>
	                                            </li>
	                                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                                            	<c:if test="${pageInfo.currentPage == status.current}">
			                                            <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
	                                            	</c:if>
	                                            	<c:if test="${pageInfo.currentPage != status.current}">
			                                            <li class="page-item"><a onclick="movePage('${path}/board/list?type=${board_list_no}&page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
	                                            	</c:if>                                         
	                                            </c:forEach>
	                                            <li class="page-item">
	                                                <a onclick="movePage('${path}/board/list?type=${board_list_no}&page=${pageInfo.nextPage}');" class="page-link">Next</a>
	                                            </li>
	                                        </ul>
	                                    </nav>
                                        <!-- 페이지넘버 끝 -->
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
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