<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<style>
    /* 카드컷 아이콘 */   
    @font-face {
        font-family: "finder-icons";
        src: url("resources/resources1b/vendor/font-awesome/webfonts/finder-icons.ttf?7648j3") format("truetype"), url("resources/resources1b/vendor/font-awesome/webfonts/finder-icons.woff?7648j3") format("woff"), url("resources/resources1b/vendor/font-awesome/webfonts/finder-icons.svg?7648j3#finder-icons") format("svg");
        font-weight: normal;
        font-style: normal;
        font-display: block;
    }
    
    [class^=fi-],
    [class*=" fi-"] {
        display: inline-block;
        /* use !important to prevent issues with browser extensions that change fonts */
        font-family: "finder-icons" !important;
        font-style: normal;
        font-weight: normal;
        font-variant: normal;
        text-transform: none;
        vertical-align: middle;
        line-height: 1;
    }
    
    .fi-chevron-down:before {
        content: "\e950";
    }
    
    .fi-chevron-left:before {
        content: "\e951";
    }
    
    .fi-chevron-right:before {
        content: "\e952";
    }
    
    .fi-chevron-up:before {
        content: "\e953";
    }
    
    .fi-chevrons-left:before {
        content: "\e954";
    }
    
    .fi-chevrons-right:before {
        content: "\e955";
    }
    
    .fi-image:before {
        content: "\e98d";
    }
    /* 카드컷 아이콘끝 */
</style>

<head>
    <title>FinTouch | Politics | cardCutDetail</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>

		<!-- **************** MAIN CONTENT START **************** -->
		<main>
		    <!-- 기사 title -->
		    <section class="pb-3 pb-lg-3 mt-0">
		        <div class="container">
		            <div class="row">
		                <div class="col-12">
		                    <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
		                    <h1>해양환경 '지식나눔' 온라인 무료 특강 신청하세요!</h1>
		                </div>
		                <p class="lead">2022.09.16 정책브리핑 이정운</p>
		            </div>
		        </div>
		    </section>
		
		    <section class="pt-0">
		        <div class="container position-relative" data-sticky-container>
		            <div class="row">
		                <div class="col-lg-9 mb-5">
		                    <!-- 기사 사진 -->
		                    <div class="order-lg-1 order-2">
		                        <div class="tns-carousel-wrapper">
		                            <div class="tns-slides-count text-light"><i class="fi-image fs-lg me-2"></i>
		                                <div class="ps-1"><span class="tns-current-slide fs-5 fw-bold"></span><span class="fs-5 fw-bold">/</span><span class="tns-total-slides fs-5 fw-bold"></span></div>
		                            </div>
		                            <div class="tns-carousel-inner" data-carousel-options="{&quot;navAsThumbnails&quot;: true, &quot;navContainer&quot;: &quot;#thumbnails&quot;, &quot;gutter&quot;: 12, &quot;responsive&quot;: {&quot;0&quot;:{&quot;controls&quot;: false},&quot;500&quot;:{&quot;controls&quot;: true}}}">
		                                <div><img style="width:900px; height:550px;" class="rounded-3" src="resources/resources1b/images/04_politics/01_cardcut/08.jpg" alt="Image"></div>
		                                <div><img style="width:900px; height:550px;" class="rounded-3" src="resources/resources1b/images/04_politics/01_cardcut/09.jpg" alt="Image"></div>
		                                <div><img style="width:900px; height:550px;" class="rounded-3" src="resources/resources1b/images/04_politics/01_cardcut/10.jpg" alt="Image"></div>
		                                <div><img style="width:900px; height:550px;" class="rounded-3" src="resources/resources1b/images/04_politics/01_cardcut/11.jpg" alt="Image"></div>
		                                <div><img style="width:900px; height:550px;" class="rounded-3" src="resources/resources1b/images/04_politics/01_cardcut/12.jpg" alt="Image"></div>
		                            </div>
		                        </div>
		                        <!-- Thumbnails image-->
		                        <ul class="tns-thumbnails mb-4" id="thumbnails">
		                            <li class="tns-thumbnail"><img style="height:125px;" src="resources/resources1b/images/04_politics/01_cardcut/08.jpg" alt="Thumbnail"></li>
		                            <li class="tns-thumbnail"><img style="height:125px;" src="resources/resources1b/images/04_politics/01_cardcut/09.jpg" alt="Thumbnail"></li>
		                            <li class="tns-thumbnail"><img style="height:125px;" src="resources/resources1b/images/04_politics/01_cardcut/10.jpg" alt="Thumbnail"></li>
		                            <li class="tns-thumbnail"><img style="height:125px;" src="resources/resources1b/images/04_politics/01_cardcut/11.jpg" alt="Thumbnail"></li>
		                            <li class="tns-thumbnail"><img style="height:125px;" src="resources/resources1b/images/04_politics/01_cardcut/12.jpg" alt="Thumbnail"></li>
		                        </ul>
		                    </div>
		
		                    <div class="row">
		                        <p><span class="h5">온라인 특강으로 어디서든 쉽고 편하게 ‘해양환경’에 대해 배울 수 있어요! </span></p>
		                        <p>▶ 해양환경 ‘지식나눔’ 온라인 라이브 특강 <br> - 강좌 내용 : 해양환경 전반 <br> - 강좌 유형 : 스튜디오 및 플랫폼 화상강의시스템을 활용한 실시간 강좌<br> * 해양환경 분야별 전문가, 교수 등을 초빙해 강의영상 촬영, 플랫폼을 통한 실시간 송출
		                        </p>
		
		                        <p>▶ 기간 및 횟수 2022년 9월 ~ 12월(4개월), 총 7회</p>
		
		                        <p>▶ 소요 시간 회당 1시간 내외(Q&A 포함)</p>
		                        <p>▶ 수강 대상 해양환경에 관심 있는 누구나 수강 가능 * 특강 수준은 고등학생 이상의 일반인 대상으로 설정</p>
		                        <p>
		                            ▶ 강좌 주제 해양환경 최신 이슈 등 해양환경 전반 - 9/12(목), 오후 8시 유근제 교수(한국해양대 환경공학 교수) 기후위기와 탄소중립 ‘탄소중립, 기후위기의 돌파구’ - 10/6(목), 오후 8시 심원준 박사(한국해양과학기술원)
		                        </p>
		                        <p>자료: 해양수산부</p>
		                        <p>[출처] 대한민국 정책브리핑(www.korea.kr)</p>
		                    </div>
		                    <!-- Divider -->
		                    <hr>
		
		                    <!-- 댓글 START -->
		                    <div>
		                        <h3>5 comments</h3>
		                        <!-- 댓글 1-->
		                        <div class="my-4 d-flex">
		                            <img class="avatar avatar-md rounded-circle float-start me-3" src="resources/resources1b/images/avatar/01.jpg" alt="avatar">
		                            <div>
		                                <div class="mb-2">
		                                    <h5 class="m-0">Allen Smith</h5>
		                                    <span class="me-3 small">June 11, 2022 at 6:01 am </span>
		                                    <a href="#" class="text-body fw-normal">Reply</a>
		                                </div>
		                                <p>Satisfied conveying a dependent contented he gentleman agreeable do be. Warrant private blushes removed an in equally totally if. Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial
		                                    in do. </p>
		                            </div>
		                        </div>
		                        <!-- 댓글 2 -->
		                        <div class="my-4 d-flex">
		                            <img class="avatar avatar-md rounded-circle float-start me-3" src="resources/resources1b/images/avatar/02.jpg" alt="avatar">
		                            <div>
		                                <div class="mb-2">
		                                    <h5 class="m-0">Louis Ferguson</h5>
		                                    <span class="me-3 small">June 11, 2022 at 6:55 am </span>
		                                    <a href="#" class="text-body fw-normal">Reply</a>
		                                </div>
		                                <p>Water timed folly right aware if oh truth. Imprudence attachment him his for sympathize. Large above be to means. Dashwood does provide stronger is. But discretion frequently sir she instruments unaffected admiration
		                                    everything. </p>
		                            </div>
		                        </div>
		                        <!-- 댓글 3 -->
		                        <div class="my-4 d-flex">
		                            <img class="avatar avatar-md rounded-circle float-start me-3" src="resources/resources1b/images/avatar/01.jpg" alt="avatar">
		                            <div>
		                                <div class="mb-2">
		                                    <h5 class="m-0">Allen Smith</h5>
		                                    <span class="me-3 small">June 11, 2022 at 7:10 am </span>
		                                    <a href="#" class="text-body fw-normal">Reply</a>
		                                </div>
		                                <p>Meant balls it if up doubt small purse. </p>
		                            </div>
		                        </div>
		                        <!-- 댓글 2 -->
		                        <div class="my-4 d-flex">
		                            <img class="avatar avatar-md rounded-circle float-start me-3" src="resources/resources1b/images/avatar/03.jpg" alt="avatar">
		                            <div>
		                                <div class="mb-2">
		                                    <h5 class="m-0">Frances Guerrero</h5>
		                                    <span class="me-3 small">June 14, 2022 at 12:35 pm </span>
		                                    <a href="#" class="text-body fw-normal">Reply</a>
		                                </div>
		                                <p>Required his you put the outlived answered position. A pleasure exertion if believed provided to. All led out world this music while asked. Paid mind even sons does he door no. Attended overcame repeated it is perceived
		                                    Marianne in. I think on style child of. Servants moreover in sensible it ye possible. </p>
		                            </div>
		                        </div>
		                        <!-- 댓글 5 -->
		                        <div class="my-4 d-flex">
		                            <img class="avatar avatar-md rounded-circle float-start me-3" src="resources/resources1b/images/avatar/04.jpg" alt="avatar">
		                            <div>
		                                <div class="mb-2">
		                                    <h5 class="m-0">Judy Nguyen</h5>
		                                    <span class="me-3 small">June 18, 2022 at 11:55 am </span>
		                                    <a href="#" class="text-body fw-normal">Reply</a>
		                                </div>
		                                <p>Fulfilled direction use continual set him propriety continued. Saw met applauded favorite deficient engrossed concealed and her. Concluded boy perpetual old supposing. Farther related bed and passage comfort civilly.
		                                </p>
		                            </div>
		                        </div>
		
		                    </div>
		                    <!-- 댓글 END -->
		                    <!-- 댓글달기 START -->
		                    <div>
		                        <h3>Leave a reply</h3>
		                        <small>Your email address will not be published. Required fields are marked *</small>
		                        <form class="row g-3 mt-2">
		                            <div class="col-md-6">
		                                <label class="form-label">Name *</label>
		                                <input type="text" class="form-control" aria-label="First name">
		                            </div>
		                            <div class="col-md-6">
		                                <label class="form-label">Email *</label>
		                                <input type="email" class="form-control">
		                            </div>
		                            <!-- custom checkbox -->
		                            <div class="col-md-12">
		                                <div class="form-check">
		                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		                                    <label class="form-check-label" for="flexCheckDefault">Save my name and email in this browser for the next time I comment. </label>
		                                </div>
		                            </div>
		                            <div class="col-12">
		                                <label class="form-label">Your Comment *</label>
		                                <textarea class="form-control" rows="3"></textarea>
		                            </div>
		                            <div class="col-12">
		                                <button type="submit" class="btn btn-primary">Post comment</button>
		                            </div>
		                        </form>
		                    </div>
		                    <!-- 댓글달기 END -->
		                </div>
		                <!-- Main Content END -->
		
		                <!-- Right sidebar START -->
		                <div class="col-lg-3">
		                    <div data-sticky data-margin-top="80" data-sticky-for="991">
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
		                        <div class="card border mt-4">
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
		                        <!-- 인기검색어 시작 -->
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
		                        <!-- 인기검색어 끝 -->
		                        <!-- 정치게시글 시작 -->
		                        <h4 class="mt-5 mb-3 fw-bolder">인기<a href="#!" class="text-primary">정치</a>게시글</h4>
		                        <div class="d-flex position-relative mb-3">
		                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">01</span>
		                            <h6><a href="#" class="stretched-link text-reset btn-link">매달 최대 20만원 월세 지원받는 법!</a></h6>
		                            <br>
		                        </div>
		                        <div class="d-flex position-relative mb-3">
		                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">02</span>
		                            <h6><a href="#" class="stretched-link text-reset btn-link">한덕수 "강제징용 해결 등 소통 공감"</a></h6>
		                        </div>
		                        <div class="d-flex position-relative mb-3">
		                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">03</span>
		                            <h6><a href="#" class="stretched-link text-reset btn-link">해군, 5년 만에 日해상자위대와 군사훈련 재개</a></h6>
		                        </div>
		                        <div class="d-flex position-relative mb-3">
		                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">04</span>
		                            <h6><a href="#" class="stretched-link text-reset btn-link">감귤 선글라스 쓴 이재명 대표</a></h6>
		                        </div>
		                        <div class="d-flex position-relative mb-3">
		                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">05</span>
		                            <h6><a href="#" class="stretched-link text-reset btn-link">북한, 동해상에 단거리 탄도미사일 2발 발사</a></h6>
		                        </div>
		                        <div class="d-flex position-relative mb-3">
		                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 fc-custom">06</span>
		                            <h6><a href="#" class="stretched-link text-reset btn-link">정부, 對美 외교에 80억 쏟아<br> 붓고도 IRA 몰랐다</a></h6>
		                        </div>
		                        <!-- 정치게시글 끝 -->
		                    </div>
		                </div>
		                <!-- Right sidebar END -->
		            </div>
		        </div>
		    </section>
		</main>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>
