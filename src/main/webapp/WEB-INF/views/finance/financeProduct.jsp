<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | FinanceProduct | Detail</title>
        <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
		    <!-- **************** MAIN CONTENT START **************** -->
	<main>
        <div class="mt-100"></div>
        <section class="bg-dark-overlay-2 position-relative overflow-hidden" style="padding-bottom: 0px; background-image:url(${path}/resources/resources1b/images/02_fin_financePro/financeMain.jpeg); background-position: center; background-size: cover;">
            <div class="bg-overlay bg-transparent opacity-5"></div>
            <!-- SVG decoration for curve -->
            <figure class="position-absolute bottom-0 left-0 w-100 d-md-block mb-n3 z-index-9">
                <svg class="fill-white" width="100%" height="150" viewBox="0 0 500 150" preserveAspectRatio="none">
                    <path d="M0,150 L0,40 Q250,150 500,40 L580,150 Z"></path>
                </svg>
            </figure>

            <div class="container z-index-9 position-relative">
                <div class="row py-0 align-items-center text-center text-sm-start">
                    <div class="col-sm-12 all-text-white mt-md-0">
                        <div class=" my-2">
                            <!-- Badge with content -->
                            <a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                            <!-- Title -->
                            <h1 class="text-black display-5 mice">금융의 One Stop Shopping </h1>
                            <p class="text-black fw-bold mice" style="font-size:20px;">금융상품을 한 눈에 더 쉽고 빠르게<br>FinTouch 만의 금융상품 정보 서비스</p>
                            <div class="d-sm-flex align-items-center mt-4">
                                <br><br><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-4 mt-0">
            <div class="container">
                <div class="row g-4 mb-2">
                    <div class="col-12" style="margin-left: 10px;">
                        <h2 class="mb-0 mice">BEST 금리상품&nbsp;<a class="badge text-bg-danger mb-3" style="font-size: 50%;">BEST</a></h2>
                    </div>
                </div>
                <div class="row g-4">
                    <div class="col-md-6 col-xl-3">
                        <!-- BEST 고금리상품 START -->
                        <div class="card border h-100">
                            <!-- 고금리상품명 -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/BankDetail.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h4 class="mb-0 ms-3 mice">SUPER주거래적금</h4>
                                </div>
                            </div>

                            <!-- 예금상품 정보 -->
                            <div class="card-body">
                                <ul style="padding-left: 10px;">
                                    <li>가입대상 : 실명의 개인</li>
                                    <li>저축기간 : 36개월</li>
                                    <li>금리유형 : 정액적립식, 단리</li>
                                </ul>
                                <div class="d-flex justify-content-between">
                                    <!-- 최고금리 -->
                                    <div>
                                        <h4 class="mb-0">4.25%</h4>
                                    </div>
                                    <!-- 금융사 이미지 -->
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-xl">
                                            <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/wooriBank.png" alt="avatar">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- BEST 예금상품 END -->

                            <!-- Card footer -->
                            <div class="card-footer border-top text-center p-3">
                                <a href="${path}/finance/productDetail?id=0" class="btn btn-primary-soft w-100 mb-0 fw-bold mice">상세보기</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-xl-3">
                        <!-- Category item START -->
                        <div class="card border h-100">
                            <!-- Card header -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/BankDetail.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h4 class="mb-0 ms-3 mice">KB Star 정기예금</h4>
                                </div>
                            </div>

                            <!-- Card body START -->
                            <div class="card-body">
                                <ul style="padding-left: 10px;">
                                    <li>가입대상 : 개인, 개인사업자</li>
                                    <li>저축기간 : 12개월</li>
                                    <li>금리유형 : 단리</li>
                                </ul>
                                <div class="d-flex justify-content-between">
                                    <!-- Total post -->
                                    <div>
                                        <h4 class="mb-0">4.39%</h4>
                                    </div>
                                    <!-- Avatar group -->
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-xl">
                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/kbBank.png" class="avatar-img" alt="">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card body END -->

                            <!-- Card footer -->
                            <div class="card-footer border-top text-center p-3">
                                <a href="${path}/finance/depositDetail?id=32" class="btn btn-primary-soft w-100 mb-0 fw-bold mice">상세보기</a>
                            </div>
                        </div>
                        <!-- Category item END -->
                    </div>

                    <div class="col-md-6 col-xl-3">
                        <!-- Category item START -->
                        <div class="card border h-100">
                            <!-- Card header -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/BankDetail.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h4 class="mb-0 ms-3 mice">IBK탄소제로적금</h4>
                                </div>
                            </div>

                            <!-- Card body START -->
                            <div class="card-body">
                                <ul style="padding-left: 10px;">
                                    <li>가입대상 : 실명의 개인</li>
                                    <li>저축기간 : 12개월</li>
                                    <li>금리유형 : 자유적립식, 단리</li>
                                </ul>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="mb-0">6.5%</h4>
                                    </div>

                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-xl">
                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/ibkBank.png" alt="">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card body END -->

                            <!-- Card footer -->
                            <div class="card-footer border-top text-center p-3">
                                <a href="${path}/finance/productDetail?id=32" class="btn btn-primary-soft w-100 mb-0 fw-bold mice">상세보기</a>
                            </div>
                        </div>
                        <!-- Category item END -->
                    </div>

                    <div class="col-md-6 col-xl-3">
                        <!-- Category item START -->
                        <div class="card border h-100">
                            <!-- Card header -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/BankDetail.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h4 class="mb-0 ms-3 mice">쏠편한 정기예금</h4>
                                </div>
                            </div>

                            <!-- Card body START -->
                            <div class="card-body">
                                <ul style="padding-left: 10px;">
                                    <li>가입대상 : 만14세이상 개인고객</li>
                                    <li>저축기간 : 36개월</li>
                                    <li>금리유형 : 단리</li>
                                </ul>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="mb-0">4.65%</h4>
                                    </div>

                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-xl">
                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/shinhanBank.png" alt="">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card body END -->

                            <!-- Card footer -->
                            <div class="card-footer border-top text-center p-3">
                                <a href="${path}/finance/depositDetail?id=33" class="btn btn-primary-soft w-100 mb-0 fw-bold mice">상세보기</a>
                            </div>
                        </div>
                        <!-- Category item END -->
                    </div>
                </div>
        </section>

        <section class="py-4 mt-0 mb-5">
            <div class="container">
                <div class="row g-4 mb-2">
                    <div class="col-12" style="margin-left: 10px;">
                        <h2 class="mb-0 mice">상품검색</h2>
                    </div>
                </div>
                <!-- 금융상품 종류 선택 -->
                <div class="row g-4">
                    <div class="col-3">
                        <div class="row">
                            <div class="card border">
                                <div class="nav flex-column nav-pills mt-2 fw-bold" id="v-pills-tab" role="tablist" style="text-align: center;">
                                    <a class="nav-link active border-bottom mt-1 mice" style="font-size: 18px;" id="v-pills-home-tab" href="${path}/finance/productMain" role="tab" aria-selected="true">적 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 금</a>
                                    <a class="nav-link border-bottom mice" style="font-size: 18px;" id="v-pills-profile-tab" href="${path}/finance/depositMain" role="tab" aria-selected="false">예 &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 금</a>
                                    <a class="nav-link border-bottom mice" style="font-size: 18px;" id="v-pills-settings-tab" href="${path}/finance/mortgageMain" role="tab"  aria-selected="false">주택담보대출</a>
                                    <a class="nav-link mice" style="font-size: 18px;" id="v-pills-settings-tab" href="${path}/finance/leaseloanMain" role="tab"  aria-selected="false">전세자금대출</a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="bg-primary bg-opacity-10 rounded-3 p-5 h-100 mt-4">
                                <!-- Image -->
                                <div>
                                    <img src="${path}/resources/resources1b/images/02_fin_financePro/08.svg" class="h-100px h-sm-200px" alt="">
                                </div>
                                <!-- Content -->
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h3 class="mb-1">To make money</h3>
                                        <h5 class="mb-3 mice">회원님께 안성맞춤인 
                                        <br>금융정보를 원하시나요?</h5>
                                        <a href="#" class="btn btn-primary mb-0" style="margin-left: 20px;">View Information</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div id="v-pills-settings" class="col-9">
                        <!-- 상품검색 list START -->
                        <div class="card border">
                            <div class="card-header border-bottom p-3">
                                <!-- Search and select START -->
                                <div class="row g-3 align-items-center justify-content-between">
                                <form action="${path}/finance/productMain" method="get" class="rounded position-relative">
                                	<div class="row">
                                		<div class="col-2">
                                        <!-- Short by filter -->
                                            <select id="sort" name="sort" class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
	                                            <option value="sortBy" <c:if test="${param.sort == 'sortBy'}">selected</c:if>>Sort by</option>
	                                            <option value="intRate" <c:if test="${param.sort == 'intRate'}">selected</c:if>>금리순</option>
	                                            <option value="prtNm" <c:if test="${param.sort == 'prtNm'}">selected</c:if>>금융상품순</option>
                                            </select>
                                    	</div>
                                    	<div class="col-5"></div>         
                                    	<div class="col-5">
                                            <input id="searchValue" name="searchValue" class="form-control bg-transparent" type="search" placeholder="금융회사명을 입력하세요!" aria-label="Search" value="${param.searchValue}" />
                                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                    	</div>                      		
                                	</div>
                                </form>
                                </div>
                            </div>
                            <!-- 금융상품 검색 List START -->
                            <div class="card-body p-3 pb-0">
                                <!-- Tabs content START -->
                                <div class="tab-content py-0 my-0">
                                    <!-- Tabs content item START -->
                                    <div class="tab-pane fade show active" id="nav-list-tab">
                                        <!-- Table START -->
                                        <div class="table-responsive border-0">
                                            <table class="table align-middle p-4 mb-0 table-hover">
                                                <!-- Table head -->
                                                <thead class="table-light">
                                                    <tr style="text-align:center;">
                                                        <th scope="col" class="border-0 rounded-start">NO</th>
                                                        <th scope="col" class="border-0">금융상품</th>
                                                        <th scope="col" class="border-0">금융회사</th>
                                                        <th scope="col" class="border-0">가입방법</th>
                                                        <th scope="col" class="border-0 rounded-end">적립유형</th>
                                                    </tr>
                                                </thead>

                                                <!-- Table body START -->
                                                <tbody class="border-top-0" style="text-align:center;">
                                                <c:if test="${!empty list}">
                                                <c:forEach var="installmentSavings" items="${list}" step="1" varStatus="status">
                                                    <tr>
                                                        <!-- NO -->
                                                        <td><c:out value="${status.count + (pageInfo.currentPage - 1) * 10}"/></td>
                                                        <td>
                                                            <div class="row">
                                                                <div class="col-4" style="padding-right: 0px;">
                                                                    <div class="align-items-center">
                                                                        <!-- 금융사 Image -->
                                                                        <div class="avatar avatar-md">
                                                                        <c:set var="coName" value="${installmentSavings.korCoNm}"/>
                                                                        <c:choose>
	                                                                        <c:when test="${fn:contains(coName, '우리')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/wooriBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:when test="${fn:contains(coName, '국민')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/kbBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:when test="${fn:contains(coName, '신한')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/shinhanBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:when test="${fn:contains(coName, '제주')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/jejuBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:when test="${fn:contains(coName, '농협')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/nhBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:when test="${fn:contains(coName, '대구')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/deaguBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:when test="${fn:contains(coName, '광주')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/gjBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:when test="${fn:contains(coName, '기업')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/ibkBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
																			<c:when test="${fn:contains(coName, '부산')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/busanBank.png" class="avatar-img" alt="">
	                                                                        </c:when>	
	                                                                        <c:when test="${fn:contains(coName, '스탠다드')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/scBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:when test="${fn:contains(coName, '하나')}">
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/kebBank.png" class="avatar-img" alt="">
	                                                                        </c:when>
	                                                                        <c:otherwise>
	                                                                            <img src="${path}/resources/resources1b/images/02_fin_financePro/iconBank.png" class="avatar-img" alt="">	                                                                        
	                                                                        </c:otherwise>
                                                                        </c:choose>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-8" style="text-align: left; padding-left: 0px;">
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <!-- 금융상품명 -->
                                                                        <h5 class="mb-0">
                                                                        	<a href="${path}/finance/productDetail?id=${installmentSavings.id}">
                                                                        	<c:out value="${installmentSavings.finPrdtNm}"/>                                                                       	
                                                                        	</a>
                                                                        </h5>
                                                                    </div>
                                                                    <div class="mb-0 mt-1 ms-2">
                                                                        <h6 class="mb-0">최고 연
                                                                        	<a href="#!" class="text-primary">
                                                                        		<c:forEach var="installOption" items="${installmentSavings.installOptionList}"  begin="0" end="0" step="1">
                                                                        			<c:out value="${installOption.intrRate2}"/>%                                                                   			
                                                                        		</c:forEach>
                                                                        	</a>
                                                                        </h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- 금융기관명 -->
                                                       	<td style="text-overflow:ellipsis;width:120px;overflow:hidden;">
                                                       		<c:out value="${installmentSavings.korCoNm}"/>
                                                       	</td>                                                      		
                                                        <!-- 가입방법 -->
                                                        <td style="text-overflow:ellipsis;width:180px;overflow:hidden;">
                                                        	<c:out value="${installmentSavings.joinWay}"/>
                                                        </td>
                                                        <!-- 적립,금리유형 -->
                                                        <td>
                                                        	<c:forEach var="installOption" items="${installmentSavings.installOptionList}"  begin="0" end="0" step="1"> 
                                                            	<span class="
															    <c:choose>
															    <c:when test = "${installOption.rsrvTypeNm == '자유적립식'}">
															       badge bg-danger bg-opacity-15 text-danger mb-2
															    </c:when>
															    <c:when test="${installOption.rsrvTypeNm == '정액적립식'}">
															       badge bg-success bg-opacity-15 text-success mb-2
															    </c:when>
															    <c:otherwise>
															       badge bg-warning bg-opacity-10 text-warning mb-2
															    </c:otherwise>
															    </c:choose>
															    ">
															    ${installOption.rsrvTypeNm}
															    </span>                                                            			
                                                            </c:forEach>
                                                        </td>
                                                    </tr>   
                                                </c:forEach>
                                              	</c:if>                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-footer p-3">
                                <!-- Pagination START -->
                                <div class="d-sm-flex justify-content-center align-items-sm-center">
                                    <!-- Content -->
                                    <p class="mb-sm-0 text-center text-sm-start"></p>
                                    <!-- Pagination -->
                                    <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                                            <li class="page-item">
                                                <a onclick="movePage('${path}/finance/productMain?page=${pageInfo.prevPage}');" class="page-link">Prev</a>
                                            </li>
                                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                            	<c:if test="${pageInfo.currentPage == status.current}">
		                                            <li class="page-item active"><a class="page-link">${status.current}</a></li>                                    		
                                            	</c:if>
                                            	<c:if test="${pageInfo.currentPage != status.current}">
		                                            <li class="page-item"><a onclick="movePage('${path}/finance/productMain?page=${status.current}');" class="page-link">${status.current}</a></li>                                            	
                                            	</c:if>                                         
                                            </c:forEach>
                                            <li class="page-item">
                                                <a onclick="movePage('${path}/finance/productMain?page=${pageInfo.nextPage}');" class="page-link">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
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