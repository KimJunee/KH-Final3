<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="/WEB-INF/views/common/header.jsp" %>
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
</head>
    <!-- **************** 금융상품 상세 시작 **************** -->
    <main>
        <section class="container mt-0 pt-5 pb-lg-5">
            <div class="row gy-5 pt-lg-2">
                <div class="col-lg-7">
                    <div class="d-flex flex-column">
                        <!-- Page title + Features-->
                        <div class="row">
                            <div class="col-9">
                                <h1 class="h2 mb-2">KB내맘대로적금</h1>
                                <p class="mb-2 pb-1 fs-lg"> &nbsp; - 가입대상 : 실명의 개인 또는 개인사업자<br> &nbsp; - 가입방법 : 인터넷, 스마트폰<br> &nbsp; - 최고한도 : 없음</p>
                            </div>
                            <div class="col-3">
                                <img src="resources/resources1b/images/03_financePro/kbBank.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <hr>
                    <h2 class="h5">유의사항</h2>
                    <p class="mb-4 pb-2">&nbsp; ※ 이 금융상품을 가입하시기 전에 상품설명서 및 약관을 읽어보시기 바랍니다.<br>&nbsp; ※ 금융소비자는 해당 상품 또는 서비스에 대하여 설명받을 권리가 있습니다.<br> &nbsp; ※ 만기 전 해지할 경우 계약에서 정한 이율보다 낮은 중도해지이율이 적용됩니다.</p>
                    <h2 class="h5">은행별 최고 우대금리</h2>
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
                                        text: '연령별의원현황'
                                    }
                                }
                            });
                        </script>
                    </div>

                    <h2 class="h5">Financial Advisors</h2>
                    <div class="card col-lg-15 p-2 rounded-3 border border-1">
                        <div class="card-body">
                            <div class="left rounded-circle">
                                <img src="resources/resources1b/images/03_financePro/woman.jpg" style="width:300px; height:250px">
                            </div>
                            <div class="right" style="width:300px; height:250px">
                                <p class="mb-4 mt-2"> 자본주의 사회에서 금융에 대해 이해하는 것은 필수입니다. 당장 무엇부터 알아야 할지, 어디부터 시작해야 할지 막막하다면 전문가와의 재무상담을 통해 계획을 세워보시기 바랍니다!</p>
                                <div class="d-flex justify-content-between">
                                    <div class="pe-3">
                                        <h6 class="mb-0">김태임 재무설계사</h6>
                                        <div class="text-secondary fw-normal fs-sm mb-3">KH자산관리법인</div>
                                        <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#">
                                            <i class="fab fa-facebook-square"></i>
                                        </a>
                                        <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#">
                                            <i class="fab fa-linkedin"></i>
                                        </a>
                                        <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#">
                                            <i class="fab fa-twitter-square"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 상품정보 details-->
                <aside class="col-lg-5">
                    <div class="ps-lg-5">
                        <div class="row">
                            <div class="col-8">
                                <div><span class="badge bg-success me-2 mb-2">Verified</span><span class="badge bg-info me-2 mb-2">New</span></div>
                                <h3 class="h5 mb-2">이율:</h3>
                                <h2 class="h3 mb-2 pb-2">최저 1.95 ~ 최고 3.05 </h2>
                            </div>
                            <div class="col-4">
                                <div class="avatar avatar-xl">
                                    <img class="mt-2 avatar-img rounded-circle" src="resources/resources1b/images/03_financePro/BankDetail.jpg" alt="avatar" style="margin-left: 20px;">
                                </div>
                            </div>
                        </div>
                        <div class="card border-0 bg-light mb-4">
                            <div class="card-body">
                                <h5 class="mb-0 pb-3">Preferential Conditions</h5>
                                <span>우대이율 최고 연1.3%p <br>- 가족사랑 우대이율 : 연0.2%p <br>- 자동이체 우대이율 : 연0.1%p <br>- 아동수당 우대이율 : 연0.1%p <br>- 주택청약종합저축 우대이율 : 최고 연0.4%p <br>- 우리아이 성장축하/지문등록 우대이율 : 연0.5%p</span>
                            </div>
                        </div><a class="btn btn-lg btn-primary w-100 mb-3" href="#">♥ Like This Financial Product</a><a class="d-inline-block mb-4 pb-2 text-decoration-none" href="#"><i class="fi-help me-2 mt-n1 align-middle"></i>목록으로 돌아가기</a>
                        <div class="card border-0 bg-light mb-4">
                            <div class="card-body">
                                <h5>Post-Maturity Interest Rates</h5>
                                <span>- 1개월 이내 : 기본이율 X 50% <br>- 1개월 초과 ~ 3개월 이내 : 기본이율 X 30% <br>- 3개월 초과 : 0.1%</span>
                            </div>
                        </div>
                        <div class="card border-0 bg-light mb-4">
                            <div class="card-body">
                                <h5>Not included in rent</h5>
                                <span>- 금리유형 : 단리</span><br>
                                <span>- 적립유형 : 정액적립식</span><br>
                                <span>- 저축기간 : 6 ~ 36개월</span><br>
                                <span>- 최고우대금리 : 3.05%</span><br>
                                <span>- 기타 유의사항 : 인터넷뱅킹/KB스타뱅킹 전용상품</span>
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
                        <h3 class="mb-0">최고금리상품</h3>
                    </div>
                </div>
                <div class="row g-4">
                    <div class="col-md-6 col-xl-3" style="height: 80px;">
                        <!-- 최고금리상품 START -->
                        <div class="card border">
                            <!-- 상품명 -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img" src="resources/resources1b/images/03_financePro/nhBank.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">NH1934월복리적금</h5>
                                </div>
                            </div>

                            <!-- 상품정보 -->
                            <div class="card-body" style="padding-left:0px;">
                                <ul>
                                    <li>가입대상 : 만19세~만34세 개인 및 개인사업자</li>
                                    <li>저축기간 : 24개월</li>
                                    <li>적립유형 : 자유적립식</li>
                                </ul>
                                <div class="d-flex justify-content-end">
                                    <div>
                                        <h4 class="mb-0">6.15%</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
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
                                            <img class="avatar-img" src="resources/resources1b/images/03_financePro/wcBank.png" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">웰뱅 든든적금</h5>
                                </div>
                            </div>

                            <!-- Card body START -->
                            <div class="card-body" style="padding-left:0px;">
                                <ul>
                                    <li>가입대상 : 만 19세 이상 실명의 개인</li>
                                    <li>저축기간 : 6개월</li>
                                    <li>적립유형 : 정액적립식</li>
                                </ul>
                                <div class="d-flex justify-content-end">
                                    <div>
                                        <h4 class="mb-0">6.0%</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-xl-3">
                        <!-- Category item START -->
                        <div class="card border">
                            <!-- Card header -->
                            <div class="card-header border-bottom p-3">
                                <div class="d-flex align-items-center">
                                    <ul class="avatar-group mb-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img" src="resources/resources1b/images/03_financePro/kbBank.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">KB마이핏적금</h5>
                                </div>
                            </div>
                            <div class="card-body" style="padding-left:0px;">
                                <ul>
                                    <li>가입대상 : 만18세이상 ~ 만38세이하 실명의 개인</li>
                                    <li>저축기간 : 12개월</li>
                                    <li>적립유형 : 자유적립식</li>
                                </ul>
                                <div class="d-flex justify-content-end">
                                    <div>
                                        <h4 class="mb-0">4.4%</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
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
                                            <img class="avatar-img" src="resources/resources1b/images/03_financePro/shinhanBank.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <h5 class="mb-0 ms-3">신한 안녕,반가워적금</h5>
                                </div>
                            </div>
                            <div class="card-body" style="padding-left:0px;">
                                <ul>
                                    <li>가입대상 : 제한없음</li>
                                    <li>저축기간 : 12개월</li>
                                    <li>적립유형 : 자유적립식</li>
                                </ul>
                                <div class="d-flex justify-content-end">
                                    <div>
                                        <h4 class="mb-0">4.8%</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer border-top text-center p-3">
                                <a href="#" class="btn btn-primary-soft w-100 mb-0 fw-bold">상세보기</a>
                            </div>
                        </div>
                        <!-- Category item END -->
                    </div>
                </div>
        </section>
    </main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>