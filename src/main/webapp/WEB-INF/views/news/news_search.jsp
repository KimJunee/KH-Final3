<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | News | Search</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
    <%@include file="/WEB-INF/views/common/header.jsp" %>
    <!-- **************** MAIN CONTENT START **************** -->
    <main>

        <!-- =======================
    Inner intro START -->
        <section class="py-4 pb-3">
            <div class="container">
                <!-- Search -->
                <div class="row">
                    <div class="col-9 mt-3">
                        <h3 class="mice"><i class="bi bi-search " style="font-size: 80%;"></i>&nbsp;총 <a href="#!" class="text-primary">${totalCount}</a>건이 검색되었습니다.</h3>
                    </div>
                    <div class="col-3 mt-3">
                        <form action="${path}/news/search" method="get" class="rounded position-relative">
                            <input id="searchKeyword" name="searchKeyword" class="form-control bg-transparent" type="search" placeholder="검색어를 입력하세요." aria-label="Search" value="${param.searchKeyword}">
                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
Inner intro END -->

        <!-- =======================
Main content START -->
        <section class="position-relative pt-0">
            <div class="container" data-sticky-container>
                <div class="row">
                    <!-- Main Post START -->
                    <div class="col-lg-9">
                        <!-- Card item START -->
                        <c:if test="${!empty list}">
                        <c:forEach var="search" items="${list}">
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-12 mt-3 mt-md-0">
                                <c:if test="${search.category == 'economy'}">
                                    <a href="#" class="badge bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i> Finance</a>
                                </c:if>
                                 <c:if test="${search.category == 'politics'}">
                                    <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>politics</a>
                                </c:if>
                                <c:if test="${search.category == 'national'}">
                                    <a href="#" class="badge bg-dark mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>national</a>
                                </c:if>
                                <c:if test="${search.category == 'opinion'}">
                                    <a href="#" class="badge bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>opinion</a>
                                </c:if>
                                    <h3><a href="${path}/news/post?newsNo=${search.newsNo}" class="btn-link stretched-link text-reset">${search.title}</a></h3>
                                    <p>${search.description}</p>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item">${search.pubDate}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                        <!-- Card item END -->

                        <!-- Pagination START -->
                        <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                        	<ul class="pagination pagination-sm pagination-bordered mb-0">
                                <li class="page-item">
                                    <a onclick="movePage('${path}/news/search?page=${pageInfo.prevPage}');" class="page-link">Prev</a>
                                </li>
                                <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                <c:if test="${pageInfo.currentPage == status.current}">
                                	<li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
                                </c:if>
                                <c:if test="${pageInfo.currentPage != status.current}">
                                	<li class="page-item"><a onclick="movePage('${path}/news/search?page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
                                </c:if>                                         
                                </c:forEach>
                                <li class="page-item">
                                    <a onclick="movePage('${path}/news/search?page=${pageInfo.nextPage}');" class="page-link">Next</a>
                                </li>
                            </ul>
                        </nav>
                        <!-- Pagination END -->
                    </div>
                    <!-- Main Post END -->

                    <!-- Sidebar START -->
                    <div class="col-lg-3 mt-5 mt-lg-0">
                        <div data-sticky data-margin-top="80" data-sticky-for="767">
                            <h4>Share this article</h4>
                            <ul class="nav text-white-force">
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-facebook" href="#">
                                        <i class="fab fa-facebook-square align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-twitter" href="#">
                                        <i class="fab fa-twitter-square align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-linkedin" href="#">
                                        <i class="fab fa-linkedin align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-pinterest" href="#">
                                        <i class="fab fa-pinterest align-middle"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link icon-md rounded-circle me-2 mb-2 p-0 fs-5 bg-primary" href="#">
                                        <i class="far fa-envelope align-middle"></i>
                                    </a>
                                </li>
                            </ul>


                            <div class="row">
                                <!-- Recent post widget START -->
                                <div class="col-12 col-sm-6 col-lg-12">
                                    <h4 class="mt-4 mb-3">최근 기사</h4>
                                    <!-- Recent post item -->
                                    <c:forEach var="sideList" items="${sideList}">
                                    <div class="card mb-3">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img class="rounded" src="${sideList.image}" style="height: 65px;" alt="">
                                            </div>
                                            <div class="col-8">
                                                <h6><a href="${path}/news/post?newsNo=${sideList.newsNo}" class="btn-link stretched-link text-reset fw-bold">${sideList.title}</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                </div>
                                <!-- Recent post widget END -->
                                <h4 class="mt-5 mb-3 mice">인기<a href="#!" class="text-primary">오피니언</a></h4>
                                <c:if test="${!empty opinionList}">
                                <c:forEach var="opinion" items="${opinionList}" varStatus="status" step="1" begin="1" end="6">
                                <div class="d-flex position-relative mb-3">
                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">0${status.count}</span>
                                    <h6><a href="${path}/news/post?newsNo=${opinion.newsNo}" class="stretched-link text-reset btn-link">${opinion.title}</a></h6>
                                    <br>
                                </div>
                                </c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <!-- Sidebar END -->
                </div>
                <!-- Row end -->
            </div>
        </section>
        <!-- =======================
Main content END -->
        <script type="text/javascript">
			function movePage(pageUrl){
				var searchValue = document.getElementById("searchKeyword");
					pageUrl = pageUrl + '&searchKeyword=' + searchValue.value;
				location.href = encodeURI(pageUrl);	
			}			
		</script>



    </main>
    <!-- **************** MAIN CONTENT END **************** -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>