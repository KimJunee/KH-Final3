<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">

<style>
    /* 레이아웃분할css 시작 */
    
    div.left {
        width: 45%;
        float: left;
        box-sizing: border-box;
        /* background: #8977ad; */
    }
    
    div.right {
        width: 45%;
        float: right;
        box-sizing: border-box;
        /* background: #ece6cc; */
    }
    /* 레이아웃분할css 끝 */
</style>
<head>
    <title>FinTouch | FinanceProduct | Main</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>
	<body>
		<%@include file="/WEB-INF/views/common/header.jsp" %>
		    <!-- **************** 금융상품 상세 시작 **************** -->
		    <main>
		        <section class="container ">
		            <div class="row ">
		                <div class="col-lg-7">
		                    <div class="d-flex flex-column">
		                        <!-- Page title + Features-->
		                        <div class="row">
		                            <div class="col-9">
		                            	<input type="hidden" value="${mortgage.id}">
		                                <h2 class="mb-2 mice">${mortgage.finPrdtNm}</h2>
		                                <p class="mb-2 pb-1 fs-lg"> &nbsp; - 가입방법 : ${mortgage.joinWay}<br> &nbsp; - 대출한도 : ${mortgage.loanLmt}</p>
		                            </div>
		                            <div class="col-3">
		                           	<c:set var="coName" value="${mortgage.korCoNm}"/>
                                    <c:choose>
	                                      <c:when test="${fn:contains(coName, '우리')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/wooriBank.png" alt="">
	                                      </c:when>
	                                      <c:when test="${fn:contains(coName, '국민')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/kbBank.png" alt="">
	                                      </c:when>
	                                      <c:when test="${fn:contains(coName, '신한')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/shinhanBank.png" alt="">
	                                      </c:when>
	                                      <c:when test="${fn:contains(coName, '제주')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/jejuBank.png" alt="">
	                                      </c:when>
	                                      <c:when test="${fn:contains(coName, '농협')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/nhBank.png" alt="">
	                                      </c:when>
	                                      <c:when test="${fn:contains(coName, '대구')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/deaguBank.png" alt="">
	                                      </c:when>
	                                      <c:when test="${fn:contains(coName, '광주')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/gjBank.png" alt="">
	                                      </c:when>
	                                      <c:when test="${fn:contains(coName, '기업')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/ibkBank.png" alt="">
	                                      </c:when>
				     					  <c:when test="${fn:contains(coName, '부산')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/busanBank.png" alt="">
	                                      </c:when>	
	                                      <c:when test="${fn:contains(coName, '스탠다드')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/scBank.png" alt="">
	                                      </c:when>
	                                      <c:when test="${fn:contains(coName, '하나')}">
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/kebBank.png" alt="">
	                                      </c:when>
	                                      <c:otherwise>
	                                          <img src="${path}/resources/resources1b/images/02_fin_financePro/iconBank.png" alt="">	                                                                        
	                                      </c:otherwise>
                                    </c:choose>
		                            </div>
		                        </div>
		                        <div class="row">
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
		                                                    <tr style="text-align: center;">
		                                                        <th scope="col" class="border-0 rounded-start">대출상환유형</th>
		                                                        <th scope="col" class="border-0">대출금리유형</th>
		                                                        <th scope="col" class="border-0">최저금리</th>
		                                                        <th scope="col" class="border-0">최고금리</th>
		                                                        <th scope="col" class="border-0 rounded-end">전월 평균금리</th>
		                                                    </tr>
		                                                </thead>
		
		                                                <!-- Table body START -->
		                                                <tbody class="border-top-0" style="text-align:center;">
		                                                <c:forEach var="mortgageOption" items="${mortgage.mortgageOptionList}">
		                                                    <tr>		                                                    
		                                                        <!-- NO -->
		                                                        <td>${mortgageOption.rpayTypeNm}</td>
		                                                        <td>${mortgageOption.lendRateTypeNm}</td>
		                                                        <!-- 최저금리 -->
		                                                        <td>${mortgageOption.lendRateMin}%</td>
		                                                        <!-- 최고금리 -->
		                                                        <td>${mortgageOption.lendRateMax}%</td>
		                                                        <!-- 전월 평균금리 -->
		                                                        <td>${mortgageOption.lendRateAvg}%</td>
		                                                    </tr>
		                                                </c:forEach>
		                                                </tbody>
		                                            </table>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		
		                    <h5 class="mice mt-5">유의사항</h5>
		                    <p class="mb-4 pb-2">&nbsp; ※ 대출신청인이 신용도판단정보 등록자(신용회복지원 또는 배드뱅크 포함)이거나 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;은행의 신용평가 결과 신용등급이 낮은 고객일 경우 대출이 제한될 수 있습니다.<br>&nbsp; ※ 일반금융소비자는 은행이 계약 체결을 권유하는 경우 및 일반금융소비자가<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;설명을 요청하는 경우에도 중요한 사항을 이해할 수 있도록 설명받을 권리가 있습니다.<br> &nbsp; ※ 대출 사실만으로 신용점수는 하락할 수 있습니다.</p>
		                    <h5 class="mice">은행별 최고 우대금리</h5>
		                    <div class="card-body col-lg-15 p-4 rounded-3 border border-1 mb-5">
		                        <div class="card-body">
		                            <canvas id="rate-chart" width="400" height="120"> </canvas>
		                        </div>
		                        <script>
		                            new Chart(document.getElementById("rate-chart"), {
		                                type: 'bar',
		                                data: {
		                                    width: [100],
		                                    height: [100],
		                                    labels: ["국민은행", "신한은행", "우리은행", "중소기업은행", "농협은행", "SC은행"],
		                                    datasets: [{
		                                        label: "최고우대금리(소수점 두자리)",
		                                        backgroundColor: ["#0CBC87", "#0CBC87", "#0CBC87", "#0CBC87", "#0CBC87", "#0CBC87"],
		                                        data: [4.4, 5.5, 4.25, 6.5, 6.15, 3.1]
		                                    }]
		                                },
		                                options: {
		                                    title: {
		                                        display: true,
		                                        text: '금융사별금리현황'
		                                    }
		                                }
		                            });
		                        </script>
		                    </div>
		                </div>
		                <!-- 상품정보 details-->
		                <aside class="col-lg-5">
		                    <div class="ps-lg-5">
		                        <div class="row">
		                            <div class="col-8">
		                                <div><span class="badge bg-success me-2 mb-2">Verified</span><span class="badge bg-info me-2 mb-2">New</span></div>
		                                <h5 class="mice mb-2">이율</h5>
		                                <c:forEach var="mortgageOption" items="${mortgage.mortgageOptionList}" begin="0" end="0" step="1">
		                                <h3 class="mice mb-2 pb-2">최저 ${mortgageOption.lendRateMin} ~ 최고 ${mortgageOption.lendRateMax}</h3>
		                                </c:forEach>
		                            </div>
		                            <div class="col-4">
		                                <div class="avatar avatar-xl">
		                                    <img class="mt-2 avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/BankDetail.jpg" alt="avatar" style="margin-left: 20px;">
		                                </div>
		                            </div>
		                        </div>
		                        <div class="card border-0 bg-light mb-4">
		                            <div class="card-body">
		                                <h5 class="mice">대출부대비용</h5>
		                                <c:set var="loanExpn" value="${mortgage.loanInciExpn}"></c:set>
		                                <span>${fn:replace(loanExpn, '-', '<br>-')}</span>
		                            </div>
		                        </div>
		                        <form action="${path}/mypage/finProLikeMort" method="post">
		                        	<input type="hidden" name="finType" value="${mortgage.finType}">
		                        	<input type="hidden" name="prtId" value="${mortgage.id}">		                        	
		                        	<button class="btn btn-lg btn-primary w-100 mb-3" type="submit">♥ Like This Financial Product</button>
		                        </form>
		                        <a class="d-inline-block mb-4 pb-2 text-decoration-none" href="${path}/finance/mortgageMain">
		                            <i class="fi-help me-2 mt-n1 align-middle"></i>목록으로 돌아가기
		                        </a>
		                        <div class="card border-0 bg-light mb-4">
		                            <div class="card-body">
		                                <h5 class="mice">중도상환 수수료</h5>
		                                <span>${mortgage.erlyRpayFee}</span>
		                                <h5 class="mice mt-2">연체 이자율</h5>
		                                <span>${mortgage.dlyRate}</span>
		                            </div>
		                        </div>
		                        <div class="card border border-1 mb-4">
		                            <div class="card-body">
		                                <div class="left rounded-circle">
		                                    <img src="${path}/resources/resources1b/images/02_fin_financePro/woman.jpg" style="width:300px; height:180px">
		                                </div>
		                                <div class="right" style="width:180px; height:100px">
		                                    <p class="mb-2 mt-2"> 개인별 맞춤 재무상담을 통해 자산관리 방법, 재테크 전략, 금융 관련 정보 등을 제공합니다.</p>
		                                    <div class="d-flex justify-content-between">
		                                        <div class="pe-3">
		                                            <h6 class="mb-0">김태임 재무설계사</h6>
		                                            <div class="text-secondary fw-normal fs-sm mb-1">KH자산관리법인</div>
		                                            <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2">
		                                                <i class="fab fa-facebook-square"></i>
		                                            </a>
		                                            <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2">
		                                                <i class="fab fa-linkedin"></i>
		                                            </a>
		                                            <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2">
		                                                <i class="fab fa-twitter-square"></i>
		                                            </a>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		
		                </aside>
		            </div>
		        </section>
		
		        <section class="py-1 mb-5">
		            <div class="container">
		                <div class="row g-4 mb-2">
		                    <div class="col-12" style="margin-left: 10px;">
		                        <h3 class="mice mb-0">저금리 대출상품</h3>
		                    </div>
		                </div>
		                <div class="row g-4">
		                    <div class="col-md-6 col-xl-3" style="height: 80px;">
		                        <!-- 최고금리상품 START -->
		                        <div class="card border">
		                            <!-- 상품명 -->
		                            <div class="card-header border-bottom p-2">
		                                <div class="d-flex align-items-center">
		                                    <ul class="avatar-group mb-0">
		                                        <li class="avatar avatar-sm">
		                                            <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/kbBank.png" alt="avatar">
		                                        </li>
		                                    </ul>
		                                    <h5 class="mb-0 ms-3 mice">KB주택전세자금대출</h5>
		                                </div>
		                            </div>
		
		                            <!-- 상품정보 -->
		                            <div class="card-body" style="padding-left:0px;">
		                                <ul>
		                                    <li>대출한도 : 최대 2.22억원</li>
		                                    <li>대출상환 : 만기일시상환방식</li>
		                                    <li>대출금리 : 번동금리</li>
		                                </ul>
		                                <div class="d-flex justify-content-end">
		                                    <div>
		                                        <h4 class="mb-0">4.04%</h4>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="card-footer border-top text-center p-3">
		                                <a href="${path}/finance/leaseLoanDetail?id=18" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
		                            </div>
		                        </div>
		                        <!-- Category item END -->
		                    </div>
		
		                    <div class="col-md-6 col-xl-3">
		                        <!-- Category item START -->
		                        <div class="card border h-100">
		                            <!-- Card header -->
		                            <div class="card-header border-bottom p-2">
		                                <div class="d-flex align-items-center">
		                                    <ul class="avatar-group mb-0">
		                                        <li class="avatar avatar-sm">
		                                            <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/scBank.png" alt="avatar">
		                                        </li>
		                                    </ul>
		                                    <h5 class="mb-0 ms-3 mice">SC전세담보대출</h5>
		                                </div>
		                            </div>
		
		                            <!-- Card body START -->
		                            <div class="card-body" style="padding-left:0px;">
		                                <ul>
		                                    <li>대출한도 : 최대 5억원</li>
		                                    <li>대출상환 : 만기일시상환방식</li>
		                                    <li>대출금리 : 번동금리</li>
		                                </ul>
		                                <div class="d-flex justify-content-end">
		                                    <div>
		                                        <h4 class="mb-0">4.33%</h4>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="card-footer border-top text-center p-3">
		                                <a href="${path}/finance/leaseLoanDetail?id=2" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
		                            </div>
		                        </div>
		                    </div>
		
		                    <div class="col-md-6 col-xl-3">
		                        <!-- Category item START -->
		                        <div class="card border">
		                            <!-- Card header -->
		                            <div class="card-header border-bottom p-2">
		                                <div class="d-flex align-items-center">
		                                    <ul class="avatar-group mb-0">
		                                        <li class="avatar avatar-sm">
		                                            <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/02_fin_financePro/wooriBank.png" alt="avatar">
		                                        </li>
		                                    </ul>
		                                    <h5 class="mb-0 ms-3 mice">우리전세론(금융보증)</h5>
		                                </div>
		                            </div>
		                            <div class="card-body" style="padding-left:0px;">
		                                <ul>
		                                    <li>대출한도 : 최대 2.22억원</li>
		                                    <li>대출상환 : 분할상환방식</li>
		                                    <li>대출금리 : 번동금리</li>
		                                </ul>
		                                <div class="d-flex justify-content-end">
		                                    <div>
		                                        <h4 class="mb-0">4.92%</h4>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="card-footer border-top text-center p-3">
		                                <a href="${path}/finance/leaseLoanDetail?id=0" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
		                            </div>
		                        </div>
		                        <!-- Category item END -->
		                    </div>
		
		                    <div class="col-md-6 col-xl-3">
		                        <!-- Category item START -->
		                        <div class="card border h-100">
		                            <!-- Card header -->
		                            <div class="card-header border-bottom p-2">
		                                <div class="d-flex align-items-center">
		                                    <ul class="avatar-group mb-0">
		                                        <li class="avatar avatar-sm">
		                                            <img class="avatar-img" src="${path}/resources/resources1b/images/02_fin_financePro/shinhanBank.png" alt="avatar">
		                                        </li>
		                                    </ul>
		                                    <h5 class="mb-0 ms-3 mice">신한전세대출(서울보증)</h5>
		                                </div>
		                            </div>
		                            <div class="card-body" style="padding-left:0px;">
		                                <ul>
		                                    <li>대출한도 : 최대 5억원</li>
		                                    <li>대출상환 : 분할상환방식</li>
		                                    <li>대출금리 : 고정금리</li>
		                                </ul>
		                                <div class="d-flex justify-content-end">
		                                    <div>
		                                        <h4 class="mb-0">4.31%</h4>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="card-footer border-top text-center p-3">
		                                <a href="${path}/finance/leaseLoanDetail?id=21" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
		                            </div>
		                        </div>
		                        <!-- Category item END -->
		                    </div>
		                </div>
		        </section>
		    </main>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>