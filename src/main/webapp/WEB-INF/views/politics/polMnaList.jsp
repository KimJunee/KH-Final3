<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<style>
/* 성별의원현황css 시작 */
.p-3-sp {
	padding: 0.4rem !important;
	top: 50;
	left: 0;
	width: 100%;
	height: 100%;
}
/* 성별의원현황css 시작 */
/* 레이아웃분할css 시작 */
div.left {
	width: 70%;
	float: left;
	box-sizing: border-box;
	/* background: #8977ad; */
}

div.right {
	width: 28.5%;
	float: right;
	box-sizing: border-box;
	/* background: #ece6cc; */
}
/* 실시간커뮤니티 */
div.right-community {
	width: 28.5%;
	float: right;
	box-sizing: border-box;
	text-align: Left;
	/* padding: 2px; */
	vertical-align: middle;
	/* background: #ece6cc; */
}
/* 레이아웃분할css 끝 */
</style>
<head>
<title>FinTouch | Politics | Parliamentary Profiles</title>
<!-- Favicon -->
<link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<!-- **************** MAIN CONTENT START **************** -->
<main>
	<section class="bg-dark-overlay-4" style="background-image:url('${path}/resources/resources1b/images/04_politics/02_gov/main_na.png'); 
        background-position: center left; background-size: cover; height: 300px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 py-md-5 my-lg-0">
					<a href="#" class="badge text-bg-primary mb-2">
						<i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
							<h1 class="text-white mice">제21대 국회의원현황</h1>
								<p class="lead text-white mice">
								제21대 국회의원의 전체목록 및 검색, 의원별 상세정보, 정당별 의원현황등의 <br>통계를 확인하실 수
								있습니다.
								</p>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================Main START======================= -->
	<section class="pt-3 pt-lg-5">
		<div class="container">
			<div class="row">
			<!-- Main part START -->
				<ul class="nav nav-tabs nav-tabs-dark">
					<li class="nav-item">
					<li class="nav-item "><a class="nav-link active"
						href="${path}/politics/polMnaList">국회의원목록</a></li>
					<li class="nav-item "><a class="nav-link  "
						href="${path}/politics/polMnaProfileEmpty"> 의원상세보기 </a></li>
					<li class="nav-item "><a class="nav-link "
						href="${path}/politics/polMnaStats"> 의원통계보기 </a></li>
				</ul>
				<!-- ===========탭메뉴 시작========== -->
				<div class="tab-content ">
				<!-- ===========탭1 : 국회의원목록 시작========== -->
				<div class="tab-pane show active" id="tab-6-1">
					<div class="container ">
						<!-- 국회의원목록 검색 테이블 left 시작 -->
						<div class="left">
							<div class="card border bg-transparent rounded-3">
								<!-- Card body START -->
								<div class="card-body">
									<!-- Search and select START -->
									<form action="${path}/politics/polMnaList" method="get">
										<div class="row g-3 align-items-center justify-content-between mb-3">
											<table>
												<!-- <caption>국회의원검색 : 대수, 이름, 정당, 위원회, 지역선거구, 성별</caption> -->
												<colgroup>
													<col style="width: 15%;">
													<col style="width: 15%;">
													<col style="width: 15%;">
													<col style="width: 15%;">
													<col style="width: 15%;">
													<col style="width: 15%;">
												</colgroup>
												<!-- <tbody class="col-md-8"></tbody> -->
												<!-- </div> -->
												<tr>
													<th scope="row">대수</th>
													<td><input class="form-control pe-5 bg-transparent"
															type="text" title="대수" value="제21대" readonly="readonly"></td>
													<th scope="row">&emsp;이름</th>
													<td><input id="searchName" name="searchName"
															class="form-control pe-5 bg-transparent" type="search"
															placeholder="Search" aria-label="Search"
															value="${param.searchName}"></td>
														<th scope="row">&emsp;정당</th>
														<td><select class="form-select"
															aria-label="Default select example" id="schPoly"
															name="schPoly" title="정당">
																<option value="">전체</option>
																<option value="더불어민주당"  ${param.schPoly == '더불어민주당' ? 'selected':''}>더불어민주당</option>
																<option value="국민의힘" ${param.schPoly == '국민의힘' ? 'selected':''}>국민의힘</option>
																<option value="정의당" ${param.schPoly == '정의당' ? 'selected':''}>정의당</option>
																<option value="국민의당" ${param.schPoly == '국민의당' ? 'selected':''}>국민의당</option>
																<option value="열린민주당" ${param.schPoly == '열린민주당' ? 'selected':''}>열린민주당</option>
																<option value="기본소득당" ${param.schPoly == '기본소득당' ? 'selected':''}>기본소득당</option>
																<option value="시대전환" ${param.schPoly == '시대전환' ? 'selected':''}>시대전환</option>
																<option value="무소속" ${param.schPoly == '무소속' ? 'selected':''}>무소속</option>
														</select></td>
													</tr>
													<tr>
														<th scope="row">위원회</th>
														<td><select class="form-select" name="schCmit"
															title="위원회" aria-label="Default select example">
																<option value="" selected>전체</option>
																<option value="국회운영위원회"  ${param.schCmit == '국회운영위원회' ? 'selected':''} >국회운영위원회</option>
																<option value="법제사법위원회"  ${param.schCmit == '법제사법위원회' ? 'selected':''}>법제사법위원회</option>
																<option value="정무위원회"  ${param.schCmit == '정무위원회' ? 'selected':''}>정무위원회</option>
																<option value="기획재정위원회"   ${param.schCmit == '기획재정위원회' ? 'selected':''}>기획재정위원회</option>
																<option value="교육위원회"  ${param.schCmit == '교육위원회' ? 'selected':''}>교육위원회</option>
																<option value="과학기술정보방송통신위원회"  ${param.schCmit == '과학기술정보방송통신위원회' ? 'selected':''}>과학기술정보방송통신위원회</option>
																<option value="외교통일위원회"  ${param.schCmit == '외교통일위원회' ? 'selected':''}>외교통일위원회</option>
																<option value="국방위원회"  ${param.schCmit == '국방위원회' ? 'selected':''}>국방위원회</option>
																<option value="행정안전위원회"  ${param.schCmit == '행정안전위원회' ? 'selected':''}>행정안전위원회</option>
																<option value="문화체육관광위원회"  ${param.schCmit == '문화체육관광위원회' ? 'selected':''}>문화체육관광위원회</option>
																<option value="농림축산식품해양수산위원회"  ${param.schCmit == '농림축산식품해양수산위원회' ? 'selected':''}>농림축산식품해양수산위원회</option>
																<option value="산업통상자원중소벤처기업위원회"  ${param.schCmit == '산업통상자원중소벤처기업위원회' ? 'selected':''}>산업통상자원중소벤처기업위원회</option>
																<option value="보건복지위원회"  ${param.schCmit == '보건복지위원회' ? 'selected':''}>보건복지위원회</option>
																<option value="환경노동위원회"  ${param.schCmit == '환경노동위원회' ? 'selected':''}>환경노동위원회</option>
																<option value="국토교통위원회"  ${param.schCmit == '국토교통위원회' ? 'selected':''}>국토교통위원회</option>
																<option value="정보위원회"  ${param.schCmit == '정보위원회' ? 'selected':''}>정보위원회</option>
																<option value="여성가족위원회"  ${param.schCmit == '여성가족위원회' ? 'selected':''}>여성가족위원회</option>
																<option value="예산결산특별위원회"  ${param.schCmit == '예산결산특별위원회' ? 'selected':''}>예산결산특별위원회</option>
																<option value="민생경제안정특별위원회"  ${param.schCmit == '민생경제안정특별위원회' ? 'selected':''}>민생경제안정특별위원회</option>
														</select></td>
														<th scope="row">&emsp;지역선거구</th>
														<td><select class="form-select" id="schUpOrig"
															name="schUpOrig" title="시/도 지역 선택">
																<option value="">전체</option>
																<option value="서울"  ${param.schUpOrig == '서울' ? 'selected':''} >서울</option>
																<option value="부산"  ${param.schUpOrig == '부산' ? 'selected':''} >부산</option>
																<option value="대구"  ${param.schUpOrig == '대구' ? 'selected':''} >대구</option>
																<option value="인천"  ${param.schUpOrig == '인천' ? 'selected':''} >인천</option>
																<option value="광주"  ${param.schUpOrig == '광주' ? 'selected':''} >광주</option>
																<option value="대전"  ${param.schUpOrig == '대전' ? 'selected':''} >대전</option>
																<option value="울산"  ${param.schUpOrig == '울산' ? 'selected':''} >울산</option>
																<option value="경기"  ${param.schUpOrig == '경기' ? 'selected':''} >경기</option>
																<option value="강원"  ${param.schUpOrig == '강원' ? 'selected':''} >강원</option>
																<option value="충북"  ${param.schUpOrig == '충북' ? 'selected':''} >충북</option>
																<option value="충남"  ${param.schUpOrig == '충남' ? 'selected':''} >충남</option>
																<option value="전북"  ${param.schUpOrig == '전북' ? 'selected':''} >전북</option>
																<option value="전남"  ${param.schUpOrig == '전남' ? 'selected':''} >전남</option>
																<option value="경북"  ${param.schUpOrig == '경북' ? 'selected':''} >경북</option>
																<option value="경남"  ${param.schUpOrig == '경남' ? 'selected':''} >경남</option>
																<option value="제주"  ${param.schUpOrig == '제주' ? 'selected':''} >제주</option>
																<option value="세종"  ${param.schUpOrig == '세종' ? 'selected':''} >세종</option>
														</select></td>
														<th scope="row">&emsp;성별</th>
														<td><select class="form-select" id="schSexGbn"
															name="schSexGbn" title="성별">
																<option value="">전체</option>
																<option value="남"  ${param.schSexGbn == '남' ? 'selected':''}>남</option>
																<option value="여"  ${param.schSexGbn == '여' ? 'selected':''}>여</option>

														</select></td>
													</tr>
													</tbody>
												</table>
											</div>
											<!-- Card header START -->
											<div class="card-header bg-transparent border-bottom p-3">
												<div
													class="d-flex justify-content-between align-items-center">
													<h5 class="mb-2 mb-sm-0">
														<span class="badge bg-primary bg-opacity-10 text-primary">
															총 ${totalSize}명</span>
													</h5>
													<button type="submit" class="btn btn-sm btn-primary mb-0">S E A R C H</button>
												</div>
											</div>
											</form>
											<!-- Card header END -->
											<!-- Blog post table START -->
											<div class="table-responsive border-0 text-center">
												<table
													class="table align-middle p-4 mb-0 table-hover table-shrink text-center">
													<!-- Table head -->
													<thead class="table-dark text-center">
														<tr>
															<th scope="col" class="border-0 rounded-start">번호</th>
															<th scope="col" class="border-0">대수</th>
															<th scope="col" class="border-0 ">의원명</th>
															<th scope="col" class="border-0 ">정당</th>
															<th scope="col" class="border-0 ">지역</th>
															<th scope="col" class="border-0 ">성별</th>
															<th scope="col" class="border-0 ">당선횟수</th>
															<th scope="col" class="border-0 rounded-end">당선방법</th>
														</tr>
													</thead>

													<!-- Table body START -->
													<tbody class="border-top-0">

														<c:if test="${empty list}">
															<tr>
																<td colspan="8">조회된 글이 없습니다.</td>
															</tr>
														</c:if>
														<c:if test="${!empty list}">
															<c:forEach var="profile" items="${list}">
																<!-- 국회의원한줄 -->
																<tr>
																	<!-- Table data -->
																	<td>${profile.no}</td>
																	<!-- Table data -->
																	<td>제21대</td>

																	<!-- Table data -->
																	<td>
																		<div
																			class="d-flex align-items-center position-relative">
																			<!-- Image -->
																			<div class="avatar align-middle">
																				<img src="${profile.jpglink}"
																					class="avatar-img rounded" alt="">
																			</div>
																			<div class="mb-0 ms-2">
																				<!-- Title -->
																				<h6 class="mb-0">
																					<a href="${path}/politics/polMnaProfile?profileNo=${profile.no}"
																						class="stretched-link"><c:out
																							value="${profile.hgNm}" /></a>
																				</h6>
																			</div>
																		</div>
																	</td>
																	<!-- Table data -->
																	<td><c:out value="${profile.polyNm}" /></td>
																	<!-- Table data -->
																	<td>${profile.origNm}</td>
																	<!-- Table data -->
																	<td>${profile.sexGbnNm}</td>
																	<!-- 당선횟수 -->
																	<td><span
																			class="
																			  <c:choose>
        																	    <c:when test = "${profile.reeleGbnNm == '초선'}">
																					badge bg-danger bg-opacity-15 text-danger mb-2
																				</c:when>
																				<c:when test="${profile.reeleGbnNm == '재선'}">
																					badge bg-success bg-opacity-15 text-success mb-2
																				</c:when>
																				 <c:otherwise>
																					badge bg-warning bg-opacity-10 text-warning mb-2
																				   </c:otherwise>
																			 </c:choose>
																			 	">
																			 	 
																				<c:if test="${profile.reeleGbnNm != null}">
																					${profile.reeleGbnNm}
																				</c:if>
																			</span>
																		</td>
																	<!-- <td><span
																		class="badge bg-warning bg-opacity-10 text-warning mb-2">${profile.reeleGbnNm}</span>
																	</td> -->
																	<!-- Table data -->
																	<td>${profile.electGbnNm}</td>
																</tr>
															</c:forEach>
														</c:if>
													</tbody>
													<!-- Table body END -->
												</table>
											</div>
											<br>
											<!-- Pagination START -->
											<nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                                            <li class="page-item">
                                                <a onclick="movePage('${path}/politics/polMnaList?page=${pageInfo.prevPage}');" class="page-link">Prev</a>
                                            </li>
                                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                            	<c:if test="${pageInfo.currentPage == status.current}">
		                                            <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
                                            	</c:if>
                                            	<c:if test="${pageInfo.currentPage != status.current}">
		                                            <li class="page-item"><a onclick="movePage('${path}/politics/polMnaList?page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
                                            	</c:if>                                         
                                            </c:forEach>
                                            <li class="page-item">
                                                <a onclick="movePage('${path}/politics/polMnaList?page=${pageInfo.nextPage}');" class="page-link">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
											<!-- Pagination END -->
											<br>
										</div>
									</div>
								</div>
								<!-- 국회의원목록 검색 테이블 left 끝 -->
								<!-- 사이드바 right 시작 -->
								<div class="right">
									<!-- 사이드바 오피니언 시작 -->
									<div class="card border ">
										<div class="card-header border-bottom p-3 bg-dark ">
											<h4 class="card-header-title mb-0 text-white mice">오피니언</h4>
										</div>
										<!-- Card body START -->
										<div class="col-lg-3 mt-lg-0">
                        <div data-margin-top="80" data-sticky-for="767">
                            <!-- Most read -->
                            <div>
	                            <c:if test="${empty sideopinion}">
									<div class="d-flex position-relative mb-3">
										<h6>조회된 글이 없습니다.</h6>
									</div>
								</c:if>
								<c:if test="${not empty sideopinion}">
	                                <h5 class="mb-3">제일 많이 본 칼럼</h5>
									<c:forEach var="Opinion" items="${sideopinion}" varStatus="status">
		                                <div class="d-flex position-relative mb-3">
		                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">
		                                    <fmt:formatNumber type="number" pattern="##" minIntegerDigits="2" value="${Opinion.rownum}"/></span>
		                                    <h6><a href="${path}/opinion/opinionDetail?opinionNo=${Opinion.opinionNo}" class="stretched-link text-reset btn-link"><c:out value="${Opinion.title}"/></a></h6>
		                                </div>
                                	</c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <!-- Sidebar END -->
                    </div>
									</div>
								</div>
								<!-- 오피니언 끝 -->
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
			                                <h4 class="mt-5 mb-3 mice">실시간<span style="color:#2163E8">정치</span>커뮤니티</h4>
												<c:forEach var="board" items="${politicsList}" varStatus="status">
					                                <div class="d-flex position-relative mb-3">
					                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">
					                                    <fmt:formatNumber type="number" pattern="##" minIntegerDigits="2" value="${board.rownum}"/></span>
					                                    <h6><a href="${path}/board/BoardDetail?board_no=${board.board_no}" class="stretched-link text-reset btn-link">
					                                    <c:out value="${board.board_title}"/></a></h6>
					                                </div>
			                                	</c:forEach>
			                               </c:if>
		                                </div>
	                            	</div>
									<!-- 실시간정치커뮤니티 끝-->
								</div>
								<!-- 사이드바 right 끝 -->
							</div>
						</div>
						<!-- ===========탭1 : 국회의원목록 끝========== -->
						<!-- ===========탭2 : 의원상세보기========== -->
						<div class="tab-pane" id="tab-6-2"
							href="${path}/politics/polMnaProfileEmpty"></div>
						<!-- ===========탭3 : 의원통계보기========== -->
						<div class="tab-pane" id="tab-6-3"
							href="${path}/politics/polMnaStats"></div>
						<!-- ===========탭3 : 의원통계보기 끝========== -->
					</div>
				</div>
		</section>
		<script type="text/javascript">
			function movePage(pageUrl) {
				var searchName = '${param.searchName}';
				if(searchName.length > 0){
					pageUrl += '&searchName=' + searchName  
				}
				
				var schPoly = '${param.schPoly}';
				if(schPoly.length > 0){
					pageUrl += '&schPoly=' + schPoly  
				}
				
				var schCmit = '${param.schCmit}';
				if(schCmit.length > 0){
					pageUrl += '&schCmit=' + schCmit  
				}
				
				var schUpOrig = '${param.schUpOrig}';
				if(schUpOrig.length > 0){
					pageUrl += '&schUpOrig=' + schUpOrig  
				}
				
				// schSexGbn 성별
				var schSexGbn = '${param.schSexGbn}';
				if(schSexGbn.length > 0){
					pageUrl += '&schSexGbn=' + schSexGbn  
				}
				
				location.href = encodeURI(pageUrl);
			}
		</script>

		<!-- =======================
Main END -->
	</main>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>