<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<title>FinTouch | Politics | Parliamentary Profiles</title>
<!-- Favicon -->
<link rel="shortcut icon"
	href="resources/resources1b/images/favicon.ico">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<!-- **************** MAIN CONTENT START **************** -->
	<main>
		<section class="bg-dark-overlay-4"
			style="background-image:url('${path}/resources/resources1b/images/04_politics/02_gov/main_na.png'); 
        background-position: center left; background-size: cover; height: 300px;">
			<div class="container">
				<div class="row ">
					<div class="col-lg-8 py-md-5 my-lg-0 ">
						<a href="# " class="badge text-bg-primary mb-2 "><i
							class="fas fa-circle me-2 small fw-bold "></i>Politics</a>
						<h1 class="text-white mice">제21대 국회의원현황</h1>
						<p class="lead text-white mice">
							제21대 국회의원의 전체목록 및 검색, 의원별 상세정보, 정당별 의원현황등의 <br>통계를 확인하실 수
							있습니다.
						</p>

					</div>
				</div>
			</div>
		</section>
		<!-- =======================
Main START -->
		<section class="pt-3 pt-lg-5 ">
			<div class="container ">
				<div class="row ">
					<!-- Main part START -->
					<ul class="nav nav-tabs nav-tabs-dark ">
						<li class="nav-item">
						<li class="nav-item "><a class="nav-link "
							href="${path}/politics/polMnaList">국회의원목록</a></li>
						<li class="nav-item "><a class="nav-link active"
							href="${path}/politics/polMnaProfileEmpty"> 의원상세보기 </a></li>
						<li class="nav-item "><a class="nav-link "
							href="${path}/politics/polMnaStats"> 의원통계보기 </a></li>
					</ul>
					<div class="tab-content ">
						<div class="tab-pane " id="tab-6-1 "></div>

						<!-- ===========탭1 : 국회의원목록 끝========== -->
						<!-- ===========탭2 : 의원상세보기========== -->
						<div class="tab-pane show active " id="tab-6-2 ">
							<h5 class="card-header-title mb-0 mice" style="color: white">국회의원소개</h5>
							<div class="container ">
								<div class="row g-4 ">
									<div class="col-lg-8 ">
										<!-- Chart START -->
										<div class="card border h-100 ">
											<!-- Card header -->
											<div
												class="card-header border-bottom d-flex justify-content-between align-items-center p-3 bg-dark ">
												<h5 class="card-header-title mb-0 mice" style="color: white">국회의원소개</h5>
											</div> 
											<!-- Card body -->
											<div class="card-body ">
												<div
													class="d-sm-flex justify-content-sm-between align-items-center mb-4 ">
													<!-- Avatar detail -->
													<div class="d-flex align-items-center ">
														<!-- Avatar -->
														<div class="avatar avatar-xxl ">
															<img class="avatar-img rounded " src="${profile.jpglink}"
																alt="avatar ">
														</div>
														<!-- Info -->
														<div class="ms-3 ">
															<h5 class="mb-0 ">${profile.hgNm}${profile.hjNm}</h5>
															<p class="mb-0 small ">${profile.engNm}</p>
															<p class="mb-0 small ">${profile.bthDate}</p>
															<p class="mb-0 small ">${profile.units}</p>
															<p class="mb-0 small ">${profile.polyNm}</p>
														</div>
													</div>

													<!-- Tags -->
													<div class="d-flex mt-2 mt-sm-0 "></div>
												</div>

												<!-- Information START -->
												<div class="row ">
															<!-- Information item -->
															<div class="col-md-6 ">
																<ul class="list-group list-group-borderless ">

																	<li class="list-group-item "><span>지역:</span> <span
																		class="h6 mb-0 ">${profile.origNm}</span></li>
																	<!-- User Name -->
																	<li class="list-group-item "><span>선거구구분:</span> <span
																		class="h6 mb-0 ">${profile.electGbnNm}</span></li>
																	<!-- Full Name -->
																	<li class="list-group-item "><span>소속위원회:</span> <span
																		class="h6 mb-0 ">${profile.cmits}</span></li>
																	<!-- User Name -->
																	<li class="list-group-item "><span>당선횟수:</span> <span
																		class="h6 mb-0 ">${profile.reeleGbnNm}</span></li>
																	<!-- User Name -->
																	<li class="list-group-item "><span>사무실전화:</span> <span
																		class="h6 mb-0 ">${profile.telNo}</span></li>
																	<!-- User Name -->
																	
																</ul>
															</div>
													<!-- Information item -->
													<div class="col-md-6 ">
														<ul class="list-group list-group-borderless ">
															<!-- Email ID -->
															<li class="list-group-item "><span>의원실안내:</span> <span
																		class="h6 mb-0 ">${profile.assemAddr}</span></li>
																	<li class="list-group-item "><span>의원홈페이지:</span>
																		<span class="h6 mb-0 ">${profile.homepage}</span></li>
																	<!-- Email ID -->
																	<!-- Mobile Number -->
																	<li class="list-group-item "><span>이메일: </span> <span
																		class="h6 mb-0 ">${profile.email}</span></li>
																	<!-- Joining Date -->
																	<li class="list-group-item "><span>보좌관: </span> <span
																		class="h6 mb-0 ">${profile.staff}</span></li>
																	<!-- Joining Date -->
																	<li class="list-group-item "><span>선임비서관: </span>
																		<span class="h6 mb-0 ">${profile.secretary}</span></li>
																	<!-- Joining Date -->
																	<li class="list-group-item "><span>비서관: </span> <span
																		class="h6 mb-0 ">${profile.secretary2}</span></li>
														</ul>
													</div>
													<!-- Information item -->
													<div class="col-12 ">
														<ul class="list-group list-group-borderless ">
														</ul>
													</div>
												</div>
												<!-- Information END -->
											</div>
										</div>
										<!-- Chart END -->
									</div>

									<div class="col-md-6 col-lg-4 ">
										<!-- Popular blog START -->
										<div class="card border h-100 ">
											<!-- Card header -->
											<div class="card-header border-bottom p-3 bg-dark ">
												<h5 class="card-header-title mb-0 mice" style="color: white">주요약력</h5>
											</div>
											<!-- Card body START -->
											<div class="card-body p-3 " id="scroll-bar "
												style="overflow: auto; width: 100%; height: 150px;">
												<div class="row ">
													<div class="d-flex align-items-center position-relative ">
														<!-- Blog item -->
														<div class="col-12 ">
															<div class="ms-3 ">
																		<!-- <h6> -->
																${profile.memTitle}
															</div>
														</div>

													</div>
												</div>
											</div>
										</div>
										<!-- Popular blog END -->
									</div>
									<div class="col-12 ">
										<!-- Blog post table START -->
										<div class="card border bg-transparent rounded-3 ">
											<!-- Card header START -->
											<div class="card-header border-bottom p-3 bg-dark ">
												<div
													class="d-flex justify-content-between align-items-center ">
													<h5 class="mb-2 mb-sm-0 mice" style="color: white">대표발의법률안</h5>
												</div>
											</div>
											<!-- Card header END -->

											<!-- Card body START -->
											<div class="card-body ">

												<!-- Search and select START -->
												<div
													class="row g-3 align-items-center justify-content-between mb-3 ">
													<!-- Search -->
													<div class="col-md-8 ">
														<form class="rounded position-relative ">
															<input class="form-control pe-5 bg-transparent "
																type="search " placeholder="의안명검색 " aria-label="Search ">
															<button
																class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y "
																type="submit ">
																<i class="fas fa-search fs-6 "></i>
															</button>
														</form>
													</div>

													<!-- Select option -->
													<div class="col-md-3 ">
														<!-- Short by filter -->
														<form>
															<select class="form-select z-index-9 bg-transparent "
																aria-label=".form-select-sm ">
																<option value=" ">Sort by</option>
																<option>Free</option>
																<option>Newest</option>
																<option>Oldest</option>
															</select>
														</form>
													</div>
												</div>
												<!-- Search and select END -->

												<!-- Blog post table START -->
												<div class="table-responsive border-0 text-center ">
													<table
														class="table align-middle p-4 mb-0 table-hover table-shrink ">
														<!-- Table head -->
														<thead class="table-secondary ">
															<tr>
																<th scope="col " class="border-0 rounded-start ">의안번호</th>
																<th scope="col " class="border-0 ">대수</th>
																<th scope="col " class="border-0 ">의안명</th>
																<th scope="col " class="border-0 ">제안자</th>
																<th scope="col " class="border-0 ">소관위원회</th>
																<th scope="col " class="border-0 ">작성일</th>
																<th scope="col " class="border-0 rounded-end ">처리상태</th>
															</tr>
														</thead>

														<!-- ========대표발의법률안 테이블======== -->
														<tbody class="border-top-0 ">
															<!-- 번호1 Table item -->
															<c:if test="${empty lawList}">
																<tr>
																	<td colspan=8>조회된 글이 없습니다.</td>
																</tr>
															</c:if>
																<c:if test="${!empty lawList}">
																<c:forEach var="law" items="${lawList}">
																	<tr>
																		<!-- 번호 -->
																		<td>${law.billNo}</td>
																		<!-- 대수 -->
																		<td>제21대</td>
																		<!-- 의안명 -->
																		<td>
																			<h6 class="table-title mt-2 mt-md-0 mb-0 ">
																				<a
																					href="${law.detailLink}">${law.billName}</a>
																			</h6>
																		</td>
																		<!-- 제안자 -->
																		<td>${law.proposer}</td>
																		<!-- 소관위원회 -->
																		<td>${law.committee}</td>
																		<!-- 작성일 -->
																		<td>${law.proposeDt}</td>
																		<!-- 처리상태 -->
																		<td><span
																			class="badge bg-success bg-opacity-10 text-success mb-2 ">
																				<c:if test="${law.procResult == null}">
																					계류
																				</c:if>
																				<c:if test="${law.procResult != null}">
																					${law.procResult}
																				</c:if>
																			</span>
																		</td>
																	</tr>
																</c:forEach>
																</c:if>
														</tbody>
														<!-- Table body END -->
													</table>
												</div>
												<!-- Blog post table END -->
												<br>
												<!-- Pagination START -->
											<nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                                            <li class="page-item">
                                                <a onclick="movePage('${path}/politics/polMnaProfile?page=${pageInfo.prevPage}');" class="page-link">Prev</a>
                                            </li>
                                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                            	<c:if test="${pageInfo.currentPage == status.current}">
		                                            <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
                                            	</c:if>
                                            	<c:if test="${pageInfo.currentPage != status.current}">
		                                            <li class="page-item"><a onclick="movePage('${path}/politics/polMnaProfile?profileNo=${profile.no}&page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
                                            	</c:if>                                         
                                            </c:forEach>
                                            <li class="page-item">
                                                <a onclick="movePage('${path}/politics/polMnaProfile?page=${pageInfo.nextPage}');" class="page-link">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
											<!-- Pagination END -->
											</div>
											<br>
										</div>
										<!-- Blog post table END -->
									</div>
								</div>
							</div>
						</div>
						<!-- ===========탭3 : 의원통계보기========== -->
						<div class="tab-pane " id="tab-6-3 "></div>
					</div>
					<!-- ===========탭3 : 의원통계보기 끝========== -->
				</div>
			</div>
		</section>
		<script type="text/javascript">
			function movePage(pageUrl) {
				location.href = encodeURI(pageUrl);
			}
		</script>
		<!-- =======================
Main END -->
	</main>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>