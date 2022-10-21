<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

  
<%@include file="/WEB-INF/views/common/header.jsp" %>

<head>
    <title>FinTouch | FinanceProduct | Detail</title>
</head>

<body>
	<!-- **************** 상단 이미지 **************** -->
    <section class="position-relative overflow-hidden" style="background-image:url(${path}/resources/resources1b/images/03_realEstate/03_reales_notice.jpeg); background-position: center; background-size: cover;">
        <!-- <section class="position-relative overflow-hidden" style="background-image:url(assets/images/03_reales_/03_reales_house.jpg); background-position: center; background-size: cover;"> -->
        <!-- <section class="position-relative overflow-hidden" style="background-image:url(assets/images/03_reales_/03_reales_etc.jpg); background-position: center; background-size: cover;"> -->
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
                    <div class="py-0 py-md-5 my-2">

                        <!-- Badge with content -->
                        <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>

                        <!-- Title -->
                        <h1 class="display-5 mice" style="color:black;">청약공지사항</h1>

                    </div>
                </div>
            </div>
        </div>
    </section>


	<!-- =========== 본문 시작 ============ -->

	<section class="pt-3 pt-lg-5">

		<div class="container">
			<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
			<!-- =======================Podcast single START -->

			<section class="pt-1">
				<div class="container position-relative" data-sticky-container>
					<div class="row">
						<div class="col-12" style="position: relative;">
							<!-- Podcast title -->
							<a href="#" class="badge text-bg-danger mb-2">${notice.ais_tp_cd_nm}</a><br>
							<h2 class="mice" style="display: inline;">${notice.bbs_tl}</h2>
							<div>${notice.bbs_wou_dttm}</div>
							<hr>
						</div>
					</div>
					<div class="row g-4">
						<div class="col-lg-8">
							<!-- Episode Description -->
							<!-- <h4 class="mb-3">본문</h4> -->
							<br>
							<p>
								${notice.bbs_dtl_cts}
								<!-- 2022.06.28 모집공고한 [행정중심복합도시 4-2생활권 M3블록 신혼희망타운 행복주택] 당첨자발표일정이
								차세대사회보장시스템(범정부) 개편에 따라 입주자격 검증결과 회신이 지연되어 부득이하게 연기되었음을 알려드립니다.<br>
								<br> - 당초 : 2022.10.06(목) 17시 이후<br> - 변경 :
								2022.10.27(목) 17시 이후 * 차세대사회보장시스템(범정부) 개편 상황에 따라 당첨자 발표일자 변동<br>
								<br> 가능 접수하신 고객님들의 많은 양해 부탁드립니다. 감사합니다. -->
							</p>


						</div>

						<!-- ######################################## -->
						<!-- Right Side START -->
						<div class="col-lg-4">
							<div class="card border-0 mb-5 bg-light">
								<div class="card-body">
									<table class="table text-sm mb-0">
										<tr>
											<th class="ps-0 mice">본 문 보 기</th>
											<td class="pe-0 "><a href="${notice.link_url}">페이지 바로가기</a></td>
										</tr>
										<tr>
											<th class="ps-0 mice" style="width: 100px">담 당 부 서</th>
											<td class="pe-0">${notice.dep_nm}</td>
										</tr>
										<tr>
											<th class="ps-0 mice" style="border-bottom: none">첨 부 파 일</th>
											<!-- <td class="pe-0" style="border-bottom: none">공지사항첨부1.pdf<br>공지사항첨부2.pdf
											</td> -->
											<td class="pe-0" style="border-bottom: none">
												<c:if test="${!empty attach}">
													<c:forEach var="attach" items="${attach}">
															<a href="${attach.ahfl_url}"><c:out value="${attach.cmn_ahfl_nm}"/></a><br>
															
													</c:forEach>
												</c:if>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<!-- Right Side END -->
						<!-- ######################################## -->
					</div>
				</div>
			</section>
			<!-- =======================
                Episode single END -->
		</div>
			<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
	</section>

	<section class="pt-0 pt-md-5">
		<div class="container pb-4">
			<div class="row g-4">
				<!-- Title -->
				<div class="col-md-3">
					<h3 class="mice">최신청약상품</h3>
					<p>
						청약상품을 클릭하시면 청약정보 <br> 페이지로 이동하실 수 있습니다.
					</p>
					<h4 class="">
						<a href="03_reales_detailList.html" class="btn btn-dark mb-0 mice">청약상세조회
							바로가기</a>
					</h4>

				</div>

				<!-- Slider item START -->
				<div class="col-md-9">
					<div
						class="tiny-slider arrow-hover arrow-dark arrow-blur arrow-round">
						<div class="tns-outer" id="tns3-ow">
							<div class="tns-liveregion tns-visually-hidden"
								aria-live="polite" aria-atomic="true">
								slide <span class="current">7 to 11</span> of 4
							</div>
							<div id="tns3-mw" class="tns-ovh">
								<div class="tns-inner" id="tns3-iw">
									<div
										class="tiny-slider-inner  tns-slider tns-carousel tns-subpixel tns-calc tns-horizontal"
										data-autoplay="false" data-hoverpause="true" data-gutter="24"
										data-edge="2" data-arrow="true" data-dots="false"
										data-items-xl="3" data-items-lg="2" data-items-xs="1"
										id="tns3"
										style="transition-duration: 0s; transform: translate3d(-38.8889%, 0px, 0px);">
										<div class="tns-item tns-slide-cloned" aria-hidden="true"
											tabindex="-1">
											<div class="card border h-400">
												<!-- Image -->
												<div class="position-relative">
													<img class="card-img-top"
														src="${path}/resources/resources1b/images/02_realEstate/pic01.png"
														style="width: 300px; height: 200px;" alt="">
													<div class="card-img-overlay d-flex"></div>
												</div>

												<!-- Card body -->
												<div class="card-body">
													<h5 class="card-title mice">성남 금토지구 A-3블록 중흥S-클래스</h5>
													<p class="mb-2">경기도 성남시 수정구 금토로 44-5(금토동)</p>
													<h6 class="mb-0">
														<i class="bi bi-patch-check text-primary me-2"></i>공급규모 :
														288세대
													</h6>
												</div>

												<!-- Card footer -->
												<div class="card-footer d-grid pt-0">
													<a href="03_reales_detail.html"
														class="btn btn-sm btn-dark mb-0">View all details</a>
												</div>
											</div>
										</div>
										<div class="tns-item tns-slide-cloned" aria-hidden="true"
											tabindex="-1">
											<div class="card border h-400">
												<!-- Image -->
												<div class="position-relative">
													<img class="card-img-top"
														src="${path}/resources/resources1b/images/02_realEstate/apt_01.jpg"
														style="width: 300px; height: 200px;" alt="">
													<div class="card-img-overlay d-flex"></div>
												</div>

												<!-- Card body -->
												<div class="card-body">
													<h5 class="card-title mice">김포마송 B-5블록 행복주택</h5>
													<p class="mb-2">경기도 김포시 통진읍 마송리 579번지 김포마송LH5단지</p>
													<h6 class="mb-0">
														<i class="bi bi-patch-check text-primary me-2"></i>공급규모 :
														288세대
													</h6>
												</div>

												<!-- Card footer -->
												<div class="card-footer d-grid pt-0">
													<a href="03_reales_detail.html"
														class="btn btn-sm btn-dark mb-0">View all details</a>
												</div>
											</div>
										</div>
										<div class="tns-item tns-slide-cloned " aria-hidden="true"
											tabindex="-1">
											<div class="card border h-400">
												<!-- Image -->
												<div class="position-relative">
													<img class="card-img-top"
														src="${path}/resources/resources1b/images/02_realEstate/apt_02.png"
														style="width: 300px; height: 200px;" alt="">
													<div class="card-img-overlay d-flex"></div>
												</div>

												<!-- Card body -->
												<div class="card-body">
													<h5 class="card-title mice">힐스테이트 푸르지오 수원</h5>
													<p class="mb-2">경기도 수원시 팔달구 교동 155-41</p>
													<h6 class="mb-0">
														<i class="bi bi-patch-check text-primary me-2"></i>공급규모 :
														288세대
													</h6>
												</div>

												<!-- Card footer -->
												<div class="card-footer d-grid pt-0">
													<a href="03_reales_detail.html"
														class="btn btn-sm btn-dark mb-0">View all details</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Slider item END -->
			</div>
		</div>
	</section>


	<!-- =========== 본문 끝 ============ -->

</body>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>