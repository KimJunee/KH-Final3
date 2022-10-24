<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | Opinion</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
    <%@include file="/WEB-INF/views/common/header.jsp" %>
    <br><br>
    <!-- **************** MAIN CONTENT START **************** -->
    <main>
        <!-- =======================
Main content START -->
        <section class="position-relative">
            <div class="container" data-sticky-container>
                <div class="row">
                    <!-- Main Post START -->
                    <div class="col-lg-9">
                        <!-- Card item START -->
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-md-3">
                                    <img class="rounded-3" src="${topOpinion.imageUrl}" style="width: 300px; height: 250px;" alt="">
                                </div>
                                <div class="col-md-8 mt-4 mt-md-0">
                                	<!-- 제목 -->
                                    <h4><a href="${path}/opinion/opinionDetail?opinionNo=${topOpinion.opinionNo}" class="btn-link stretched-link text-reset">${topOpinion.title}</a></h4><br>
                                    <!-- 내용 -->
                                    <div style="overflow: hidden;height: 178px;text-overflow: ellipsis">
                                    <!-- <p>달러 대비 원화 환율이 지난 주 달러당 1400원의 마지노선을 깬 데 이어 26일엔 22원 이상 오르며 1430원을 넘어섰다. 1400원대 환율은 2009년 글로벌 금융 위기 이후 13년여 만의 일이다. 세계 경제를 침체로 몰아간 서브프라임 모기지 사태 때만큼 상황이 심각하다는 의미다. 코스피는 3%, 코스닥은 5%씩 폭락하며 금융시장을 혼란으로 몰아넣었다. 국제 금융가에선 ‘아시아
                                        외환 위기’ 경고가 나오기 시작했다. 블룸버그 통신은 월가 전문가들을 인용해 “일본 엔과 중국 위안화 폭락으로 아시아에서 외국 자금이 대거 이탈하는 위기로 확대될 수 있다”며 1997년 사태의 재발 가능성을 지적했다.</p> -->
                                        ${topOpinion.content}
                                       </div>
                                    <!-- Card info -->
                                    <ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
                                        <li class="nav-item"><fmt:formatDate type="both" value="${topOpinion.pubDate}"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                    </div>
                    <!-- Main Post END -->
                    <!-- Sidebar START -->
                    <div class="col-lg-3 mt-lg-0">
                        <div data-sticky data-margin-top="80" data-sticky-for="767">
                            <!-- Most read -->
                            <div>
	                            <c:if test="${empty sideList}">
									<div class="d-flex position-relative mb-3">
										<h6>조회된 글이 없습니다.</h6>
									</div>
								</c:if>
								<c:if test="${not empty sideList}">
	                                <h5 class="mt-5 mb-3">제일 많이 본 칼럼</h5>
									<c:forEach var="sideList" items="${sideList}" varStatus="status">
		                                <div class="d-flex position-relative mb-3">
		                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">
		                                    <fmt:formatNumber type="number" pattern="##" minIntegerDigits="2" value="${sideList.rownum}"/></span>
		                                    <h6><a href="" class="stretched-link text-reset btn-link"><c:out value="${sideList.title}"/></a></h6>
		                                </div>
                                	</c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <!-- Sidebar END -->
                    </div>
                    <!-- Row end -->
                </div>
        </section>
        <!-- ======================= Main content END -->

        <!-- ======================= Featured Guests START -->
        <section class="bg-light" style="margin-top: -50px;">
            <div class="container">
                <div class="row g-0">
                    <div class="col-12 ">
                        <!-- Title -->
                        <div class="mb-4">
                            <h2>논설 위원</h2>
                        </div>
                        <!-- Slider -->
                        <c:if test="${empty editoria}">
							<div class="d-flex position-relative mb-3">
								<h6>논설위원이 없습니다.</h6>
							</div>
						</c:if>
						<c:if test="${not empty editoria}">
	                        <div class="tiny-slider arrow-hover arrow-dark arrow-blur arrow-round">
	                        	<div class="tiny-slider-inner" data-autoplay="false" data-hoverpause="true" data-gutter="24" data-arrow="true" data-dots="false" data-items-xl="6" data-items-lg="4" data-items-md="3" data-items-sm="2" data-items-xs="2">
	                            	<!-- Guest item -->
	                           		<c:forEach var="editoria" items="${editoria}" varStatus="status">
	                                	<div>
	                                    	<div class="card bg-transparent">
		                                       <img class="card-img" src="${editoria.imageUrl}" alt="card image">
		                                       <div class="card-body ps-0">
		                                           <h5 class="mb-0">${editoria.columnist}</h5>
		                                       </div>
		                                   </div>
	                               	   </div>
	                           	   </c:forEach>
	                            </div>
	                        </div>
                        </c:if>
                        <!-- Slider END -->
                    </div>
                </div>
            </div>
        </section>
        <!-- ======================= Featured Guests END -->
        <br>
        <!-- ======================= Main content START -->
        <section class="position-relative pt-8">
            <div class="container">
                <div class="row">
                    <!-- Main Post START -->
                    <div class="col-12">
                        <!-- Card item START -->
                        <c:forEach var="list" items="${list}" varStatus="status">
	                        <div class="card border rounded-3 up-hover p-4 mb-4">
	                            <div class="row g-3">
	                                <div class="col-lg-5">
	                                    <!-- Title -->
	                                    <h2 class="card-title">
	                                        <a href="post-single.html" class="btn-link text-reset stretched-link">${list.title}</a>
	                                    </h2>
	                                    <!-- Author info -->
	                                    <div class="d-flex align-items-center position-relative mt-3">
	                                        <div>
	                                            <h5 class="mb-1"><a href="#" class="stretched-link text-reset btn-link">${list.columnist}</a></h5>
	                                            <ul class="nav align-items-center small">
	                                                <li class="nav-item me-3"><fmt:formatDate type="both" value="${list.pubDate}"/></li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                </div>
	                                <!-- Detail -->
	                                <div class="col-md-6 col-lg-4" style="overflow: hidden;height: 193px;text-overflow: ellipsis">
	                                    <p>${list.content}</p>
	                                </div>
	                                <!-- Image -->
	                                <div class="col-md-6 col-lg-3">
	                                    <img class="rounded-3" src="${list.imageUrl}" style="width: 170px; height:200px;" alt="Card image">
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>
                        <!-- Card item END -->
                        <!-- 페이지넘버 시작 -->
	                    <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
	                        <ul class="pagination pagination-sm pagination-bordered mb-0">
	                            <li class="page-item">
	                                <a onclick="movePage('${path}/opinion?&page=${pageInfo.prevPage}');" class="page-link">Prev</a>
	                            </li>
	                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                            	<c:if test="${pageInfo.currentPage == status.current}">
	                              <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
	                            	</c:if>
	                            	<c:if test="${pageInfo.currentPage != status.current}">
	                              <li class="page-item"><a onclick="movePage('${path}/opinion&page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
	                            	</c:if>                                         
	                            </c:forEach>
	                            <li class="page-item">
	                                <a onclick="movePage('${path}/opinion&page=${pageInfo.nextPage}');" class="page-link">Next</a>
	                            </li>
	                        </ul>
	                    </nav>
                        <!-- 페이지넘버 끝 -->
                    </div>
                    <!-- Main Post END -->
                </div>
                <!-- Row end -->
            </div>
        </section>
        <!-- ======================= Main content END -->
        <script type="text/javascript">
            function movePage(pageUrl){
                var sortValue = sort.options[sort.selectedIndex].value;
                    pageUrl = pageUrl + '&searchValue=' + searchValue.value + '&sort=' + sortValue; 
                location.href = encodeURI(pageUrl);
            }
        </script>
    </main>
    <!-- **************** MAIN CONTENT END **************** -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>