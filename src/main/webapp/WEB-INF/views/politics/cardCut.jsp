<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">


 
<head>
    <title>FinTouch | Politics | CardCut</title>
    <!-- Favicon / Link -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
		<!-- **************** MAIN CONTENT START **************** -->
		<main>
		    <section class="bg-dark-overlay-4" style="background-image:url('${path}/resources/resources1b/images/04_politics/01_cardcut/bluehouse.png'); 
		        background-position: center left; background-size: cover;  ">
		          <div class="container ">
                <div class="row ">
                    <div class="col-lg-8 py-md-5 my-lg-0 ">
                        <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                        <h1 class="mice text-white fw-bold mb-2">카드/한컷</h1>
                        <p class="mice lead text-white fw-bold mb-0"> 정부에서 직접 제공하는 대한민국 정책뉴스를<br> 간단한 카드 형식을 통해 쉽게 접근하실 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </section>
		    <!-- =======================
		Main START -->
		<section class="pt-5 pb-0 mb-0 mt-3">
			<div class="container">
				<div class="row">
					<c:if test="${!empty topList}">
						<c:forEach var="cardcutTop" items="${topList}">
								<div class="col-sm-6 col-lg-4">
									<div class="card mb-4">
										<!-- Card img -->
											<div class="card-fold position-relative">
														<img class="card-img"
															src="${cardcutTop.images[0]}"
															alt="Card image" style="height: 280px;">
											</div>
											<div class="card-body px-0 pt-3">
												<h4 class="card-title">
													<a href="${path}/politics/cardCutDetail?cardCutNo=${cardcutTop.cardCutNo}"
														class="btn-link text-reset stretched-link fw-bold">${cardcutTop.title}</a>
												</h4>
												<!-- Card info -->
												<ul
													class="nav nav-divider align-items-center text-uppercase small">
													<li class="nav-item"><a href="#"
														class="nav-link text-reset btn-link">${cardcutTop.pubDate}</a></li>
													 
												</ul> 
											</div>
									</div>
								</div>
							</c:forEach>
						</c:if>
				</div>
			</div>
		</section>

		<section class="position-relative pt-0 mb-5">
		        <div class="container">
		            <div class="row">
		                <div class="col-9">
		                    <div class="card-header bg-transparent border-bottom p-3">
		                        <div class="d-sm-flex justify-content-between align-items-center">
		                            <h4 class="mb-2 mb-sm-0 fw-bold">카드뉴스 검색 <span class="badge bg-primary bg-opacity-10 text-primary">105</span></h4>
		                        </div>
		                    </div>
		                    <!-- Card header END -->
		                    <!-- Card body START -->
		                    <div class="card-body mt-3 border-bottom mb-3 p-1">
		                        <!-- Search and select START -->
		                        <div class="row g-3 align-items-center justify-content-between mb-3">
		                            <!-- Search -->
		                            <div class="col-md-4">
		                                <form class="rounded position-relative">
		                                    <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
		                                    <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
		                                </form>
		                            </div>
		                            <!-- Select option -->
		                            <div class="col-md-4">
		                                <!-- Short by filter -->
		                                <form>
		                                    <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
		                                        <option value="">Sort by</option>
		                                        <option>최근 1년</option>
		                                        <option>최근 1달</option>
		                                        <option>최근 1주</option>
		                                    </select>
		                                </form>
		                            </div>
		                        </div>
		                    </div>
						<!-- Card item -->
		                    <div class="row">
		                    <!-- Card item START -->
							<c:if test="${!empty list}">
								<c:forEach var="cardcut" items="${list}">
									<div class="col-sm-6 col-lg-4">
										<div class="card mb-4">
											<!-- Card img -->
											<div class="card-fold position-relative">
												<img class="card-img"
													src="${cardcut.images[0]}"
													alt="Card image" style="height: 270px;">
											</div>
											<div class="card-body px-0 pt-3">
												<h6 class="card-title">
													<a href="${path}/politics/cardCutDetail?cardCutNo=${cardcut.cardCutNo}"
														class="btn-link text-reset stretched-link fw-bold">${cardcut.title}</a>
												</h6>
												<!-- Card info -->
												<ul
													class="nav nav-divider align-items-center text-uppercase small">
													<li class="nav-item"><a href="#"
														class="nav-link text-reset btn-link">${cardcut.pubDate}</a></li>
												</ul>
											</div>
										</div>
									</div>
									<!-- Card item END -->
									<!-- Card item START -->
								</c:forEach>
							</c:if>
							<!-- Pagination START -->
											<nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                                            <li class="page-item">
                                                <a onclick="movePage('${path}/politics/cardCut?page=${pageInfo.prevPage}');" class="page-link">Prev</a>
                                            </li>
                                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                            	<c:if test="${pageInfo.currentPage == status.current}">
		                                            <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
                                            	</c:if>
                                            	<c:if test="${pageInfo.currentPage != status.current}">
		                                            <li class="page-item"><a onclick="movePage('${path}/politics/cardCut?page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
                                            	</c:if>                                         
                                            </c:forEach>
                                            <li class="page-item">
                                                <a onclick="movePage('${path}/politics/cardCut?page=${pageInfo.nextPage}');" class="page-link">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
											<!-- Pagination END -->
						</div>
		                </div>
		                <div class="col-3">
		                    <div class="card border ">
		                        <div class="card-header border-bottom p-3 bg-white">
		                            <h4 class="card-header-title mb-0 text-black fw-bold">오피니언</h4>
		                        </div>
		                        <!-- Card body START -->
		                        <div class="card-body p-3">
		                            <div class="row">
		                                <!-- Blog item -->
		                                <div class="col-12">
		                                    <div class="d-flex align-items-center position-relative">
		                                        <img class="w-60 rounded" src="resources/resources1b/images/blog/1by1/01.jpg" alt="product">
		                                        <div class="ms-3">
		                                            <a href="#" class="h6 stretched-link">‘청년주간’을 맞아 생각해 본 ‘청년정책’이 가야할 길</a>
		                                            <p class="small mb-0">2022.09.22</p>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!-- Divider -->
		                                <hr class="my-3">
		                                <!-- Blog item -->
		                                <div class="col-12">
		                                    <div class="d-flex align-items-center position-relative">
		                                        <img class="w-60 rounded" src="resources/resources1b/images/blog/1by1/02.jpg" alt="product">
		                                        <div class="ms-3">
		                                            <a href="#" class="h6 stretched-link">감정이입을 통해 내면세계로 초대하는 예술가들</a>
		                                            <p class="small mb-0">2022.09.22</p>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		
		                    <div class="row g-2 mt-4">
		                        <h4 class="fw-bolder">인기검색어</h4>
		                        <div class="d-flex justify-content-between align-items-center bg-warning bg-opacity-15 rounded p-2 position-relative">
		                            <h6 class="m-0 text-warning">디지털 경쟁력</h6>
		                            <a href="#" class="badge bg-warning text-dark stretched-link">01</a>
		                        </div>
		                        <div class="d-flex justify-content-between align-items-center bg-info bg-opacity-10 rounded p-2 position-relative">
		                            <h6 class="m-0 text-info">소상공인 대출</h6>
		                            <a href="#" class="badge bg-info stretched-link">02</a>
		                        </div>
		                        <div class="d-flex justify-content-between align-items-center bg-danger bg-opacity-10 rounded p-2 position-relative">
		                            <h6 class="m-0 text-danger">전세피해지원센터</h6>
		                            <a href="#" class="badge bg-danger stretched-link">03</a>
		                        </div>
		                        <div class="d-flex justify-content-between align-items-center bg-primary bg-opacity-10 rounded p-2 position-relative">
		                            <h6 class="m-0 text-primary">세계 전기차 점유율</h6>
		                            <a href="#" class="badge bg-primary stretched-link">04</a>
		                        </div>
		                        <div class="d-flex justify-content-between align-items-center bg-success bg-opacity-10 rounded p-2 position-relative">
		                            <h6 class="m-0 text-success">복지멤버십</h6>
		                            <a href="#" class="badge bg-success stretched-link">05</a>
		                        </div>
		                    </div>
		                  	<!-- 실시간정치커뮤니티 시작-->
								<div class="right-community">
									<div class="container">
	                            		<c:if test="${empty politicsList}">
											<div class="d-flex position-relative mb-3">
												<div class="container">
													<h6>조회된 글이 없습니다.</h6>
												</div>
											</div>
										</c:if>
										<c:if test="${not empty politicsList}">
			                                <h5 class="mt-5 mb-3">실시간<span style="color:#2163E8">정치</span>커뮤니티</h5>
												<c:forEach var="board" items="${politicsList}" varStatus="status">
					                                <div class="d-flex position-relative mb-3">
					                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">
					                                    <fmt:formatNumber type="number" pattern="##" minIntegerDigits="2" value="${board.rownum}"/></span>
					                                    <h6><a href="${path}/board/BoardDetail?board_no=${board.board_no}" class="stretched-link text-reset btn-link"><c:out value="${board.board_title}"/></a></h6>
					                                </div>
			                                	</c:forEach>
			                               </c:if>
		                                </div>
	                            	</div>
									<!-- 실시간정치커뮤니티 끝-->
		                </div>
		            </div>
		        </div>
		    </section>
		</main>
		<script type="text/javascript">
			function movePage(pageUrl) {
				location.href = encodeURI(pageUrl);
			}
		</script>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>