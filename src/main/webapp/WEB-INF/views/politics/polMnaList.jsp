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
    <title>FinTouch | Politics | Parliamentary Profiles </title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
		<!-- **************** MAIN CONTENT START **************** -->
 <main>
        <section class="bg-dark-overlay-4" style="background-image:url('resources/resources1b/images/04_politics/02_gov/main_na.jfif'); 
        background-position: center left; background-size: cover; height: 300px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 py-md-5 my-lg-0">
                        <a href="#" class="badge text-bg-primary mb-2"><i
                                class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                        <h1 class="text-white mice">제21대 국회의원현황</h1>
                        <p class="lead text-white mice"> 제21대 국회의원의 전체목록 및 검색, 의원별 상세정보, 정당별 의원현황등의 <br>통계를 확인하실 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
Main START -->
        <section class="pt-3 pt-lg-5">
            <div class="container">
                <div class="row">
                    <!-- Main part START -->
                    <ul class="nav nav-tabs nav-tabs-dark">
                        <li class="nav-item">
                            <li class="nav-item "> <a class="nav-link active" href="04_pol-mna_list.html">국회의원목록</a>
                            </li>
                            <li class="nav-item "> <a class="nav-link  " href="04_pol-mna_profile_empty.html"> 의원상세보기 </a>
                            </li>
                            <li class="nav-item "> <a class="nav-link " href="04_pol-mna_stats.html"> 의원통계보기 </a>
                            </li>
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
                                            <div class="row g-3 align-items-center justify-content-between mb-3">
                                                <table>
                                                    <!-- <caption>국회의원검색 : 대수, 이름, 정당, 위원회, 지역선거구, 성별, 연령, 당선횟수, 당선방법</caption> -->
                                                    <colgroup>
                                                        <col style="width:15%;">
                                                        <col style="width:15%;">
                                                        <col style="width:15%;">
                                                        <col style="width:15%;">
                                                        <col style="width:15%;">
                                                        <col style="width:15%;">
                                                    </colgroup>
                                                    <!-- <tbody class="col-md-8"></tbody> -->
                                                    <!-- </div> -->
                                                    <tr>
                                                        <th scope="row">대수</th>
                                                        <td><input class="form-control pe-5 bg-transparent" type="text" title="대수" value="제21대" readonly="readonly"></td>
                                                        <th scope="row">&emsp;이름</th>
                                                        <td> <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search"></th>
                                                        </td>
                                                        <th scope="row">&emsp;정당</th>
                                                        <td>
                                                            <select class="form-select" aria-label="Default select example" id="schPoly" name="schPoly" title="정당">
                                                                <option value="">전체</option>
                                                                <option value="101182">더불어민주당</option>
                                                                <option value="101210">국민의힘</option>
                                                                <option value="101180">정의당</option>
                                                                <option value="101200">국민의당</option>
                                                                <option value="101203">열린민주당</option>
                                                                <option value="101208">기본소득당</option>
                                                                <option value="101209">시대전환</option>
                                                                <option value="101030">무소속</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">위원회</th>
                                                        <td>
                                                            <select class="form-select" name="schCmit" title="위원회" aria-label="Default select example">
                                                                <option value="">전체</option>
                                                                <option value="9700005">국회운영위원회</option>
                                                                <option value="9700006">법제사법위원회</option>
                                                                <option value="9700008">정무위원회</option>
                                                                <option value="9700300">기획재정위원회</option>
                                                                <option value="9700512">교육위원회</option>
                                                                <option value="9700479">과학기술정보방송통신위원회</option>
                                                                <option value="9700409">외교통일위원회</option>
                                                                <option value="9700019">국방위원회</option>
                                                                <option value="9700480">행정안전위원회</option>
                                                                <option value="9700513">문화체육관광위원회</option>
                                                                <option value="9700408">농림축산식품해양수산위원회</option>
                                                                <option value="9700481">산업통상자원중소벤처기업위원회</option>
                                                                <option value="9700341">보건복지위원회</option>
                                                                <option value="9700038">환경노동위원회</option>
                                                                <option value="9700407">국토교통위원회</option>
                                                                <option value="9700047">정보위원회</option>
                                                                <option value="9700342">여성가족위원회</option>
                                                                <option value="9700049">예산결산특별위원회</option>
                                                                <option value="9700552">민생경제안정특별위원회</option>
                                                                <option value="9700551">중앙선거관리위원회위원(남래진)선출에관한인사청문특별위원회
                                                                </option>
                                                                <option value="9700051">윤리특별위원회</option>
                                                                <option value="9700544">언론·미디어 제도개선 특별위원회</option>
                                                                <option value="9700546">정치개혁 특별위원회</option>
                                                                <option value="9700547">국회 2030 부산세계박람회 유치지원 특별위원회</option>
                                                                <option value="9700548">국무총리후보자(한덕수)에 관한 인사청문특별위원회</option>
    
                                                            </select>
                                                        </td>
                                                        <th scope="row">&emsp;지역선거구</th>
                                                        <td>
                                                            <select class="form-select" id="schUpOrig" name="schUpOrig" title="시/도 지역 선택">
                                                                <option value="">전체</option>
                                                                <option value="021001">서울</option>
                                                                <option value="021002">부산</option>
                                                                <option value="021003">대구</option>
                                                                <option value="021004">인천</option>
                                                                <option value="021005">광주</option>
                                                                <option value="021006">대전</option>
                                                                <option value="021007">울산</option>
                                                                <option value="021008">경기</option>
                                                                <option value="021009">강원</option>
                                                                <option value="021010">충북</option>
                                                                <option value="021011">충남</option>
                                                                <option value="021012">전북</option>
                                                                <option value="021013">전남</option>
                                                                <option value="021014">경북</option>
                                                                <option value="021015">경남</option>
                                                                <option value="021016">제주</option>
                                                                <option value="021168">세종</option>
                                                            </select>
                                                        </td>
                                                        <th scope="row">&emsp;성별</th>
                                                        <td>
                                                            <select class="form-select" id="schSexGbn" name="schSexGbn" title="성별">
                                                                <option value="">전체</option>
                                                                <option value="1">남</option>
                                                                <option value="2">여</option>
    
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">연령</th>
                                                        <td>
                                                            <select class="form-select" id="schAge" name="schAge" title="연령">
                                                                <option value="">전체</option>
                                                                <option value="29">30세미만</option>
                                                                <option value="30">30대</option>
                                                                <option value="40">40대</option>
                                                                <option value="50">50대</option>
                                                                <option value="60">60대</option>
                                                                <option value="70">70세이상</option>
                                                            </select>
                                                        </td>
                                                        <th scope="row">&emsp;당선횟수</th>
                                                        <td>
                                                            <select class="form-select" id="schReeleGbn" name="schReeleGbn" title="당선횟수">
                                                                <option value="">전체</option>
                                                                <option value="105001">초선</option>
                                                                <option value="105002">재선</option>
                                                                <option value="105003">3선</option>
                                                                <option value="105004">4선</option>
                                                                <option value="105005">5선</option>
                                                                <option value="105006">6선</option>
                                                                <option value="105007">7선</option>
                                                                <option value="105008">8선</option>
                                                                <option value="105009">9선</option>
                                                                <option value="105010">10선</option>
                                                            </select>
                                                        </td>
                                                        <th scope="row">&emsp;당선방법</th>
                                                        <td>
                                                            <select class="form-select" id="schElectGbn" name="schElectGbn" title="당선방법">
                                                                <option value="">전체</option>
    
                                                                <option value="102010">지역구</option>
    
                                                                <option value="102020">비례대표</option>
    
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- Card header START -->
                                            <div class="card-header bg-transparent border-bottom p-3">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <h5 class="mb-2 mb-sm-0"> <span class="badge bg-primary bg-opacity-10 text-primary">총
                                                            105건</span></h5>
                                                    <a href="#" class="btn btn-sm btn-primary mb-0">S E A R C H</a>
                                                </div>
                                            </div>
                                            <!-- Card header END -->
                                            <!-- Blog post table START -->
                                            <div class="table-responsive border-0 text-center">
                                                <table class="table align-middle p-4 mb-0 table-hover table-shrink text-center">
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
	                                                            <td>${profile.units}</td>
	                                                            <!-- Table data -->
	                                                            <td>
	                                                                <div class="d-flex align-items-center position-relative">
	                                                                    <!-- Image -->
	                                                                    <div class="avatar align-middle">
	                                                                        <img src="${profile.jpglink}" class="avatar-img rounded" alt="">
	                                                                    </div>
	                                                                    <div class="mb-0 ms-2">
	                                                                        <!-- Title -->
	                                                                        <h6 class="mb-0"><a href="04_pol_mna_profile.html" class="stretched-link"><c:out value="${profile.hgNm}"/></a></h6>
	                                                                    </div>
	                                                                </div>
	                                                            </td>
	                                                            <!-- Table data -->
	                                                            <td><c:out value="${profile.polyNm}"/></td>
	                                                            <!-- Table data -->
	                                                            <td>${profile.origNm}</td>
	                                                            <!-- Table data -->
	                                                            <td>${profile.sexGbnNm}</td>
	                                                            <!-- Table data -->
	                                                            <td>
	                                                                <span class="badge bg-warning bg-opacity-10 text-warning mb-2">${profile.reeleGbnNm}</span>
	                                                            </td>
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
                                            <!-- Content -->
                                            <!-- <p class="mb-sm-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p> -->
                                            <!-- Pagination -->
                                            <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                                <ul class="pagination pagination-sm pagination-bordered mb-0">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Prev</a>
                                                    </li>
                                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">6</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">7</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">8</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">9</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">10</a></li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="#">Next</a>
                                                    </li>
                                                </ul>
                                            </nav>
                                            <br>
                                            <!-- 페이지넘버 끝 -->
                                        </div>
                                        <!-- Pagination END -->
                                    </div>
                                </div>
                                <!-- 국회의원목록 검색 테이블 left 끝 -->
                                <!-- 사이드바 right 시작 -->
                                <div class="right">
                                    <!-- 사이드바 오피니언 시작 -->
                                    <div class="card border ">
                                        <div class="card-header border-bottom p-3 bg-dark ">
                                            <h5 class="card-header-title mb-0 text-white mice">오피니언</h5>
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
                                </div>
                                <!-- 오피니언 끝 -->
                                <!-- 실시간정치커뮤니티 시작-->
                                <div class="right-community  ">
                                    <div class="container">
                                        <h4 class="mt-5 mb-3 mice " style="font-weight: bold">실시간<a class="text-primary">정치</a>커뮤니티</h4>
                                        <div class="d-flex position-relative mb-2">
                                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">01</span>
                                            <h6><a href="#" class="stretched-link text-reset btn-link">친분과 정치생명은 구분해야죠</a></h6>
                                        </div>
                                        <div class="d-flex position-relative mb-2">
                                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">02</span>
                                            <h6><a href="#" class="stretched-link text-reset btn-link">자신이 윤석열이라면 이 이후에 기분이 어땠을거 같냐요?</a></h6>
                                        </div>
                                        <div class="d-flex position-relative mb-2 ">
                                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">03</span>
                                            <h6><a href="#" class="stretched-link text-reset btn-link">정동영 어제 윤석열 깠는데 옆에 이해찬 앉아 있네요 ㅋ</a></h6>
                                        </div>
                                        <div class="d-flex position-relative mb-2 ">
                                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">04</span>
                                            <h6><a href="#" class="stretched-link text-reset btn-link">한일관계 개선되면 이득보는 쪽은 어딜까요?</a></h6>
                                        </div>
                                        <div class="d-flex position-relative mb-2 ">
                                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">05</span>
                                            <h6><a href="#" class="stretched-link text-reset btn-link"> 검찰의 민낯을 깨달은 중도층이 과연......</a></h6>
                                        </div>
                                        <div class="d-flex position-relative mb-2 ">
                                            <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">06</span>
                                            <h6><a href="#" class="stretched-link text-reset btn-link">변희재 태블릿 열흘안에 끝날겁니다 ㅋㅋㅋㅋㅋㅋ </a></h6>
                                        </div>
                                    </div>
                                    <!-- 실시간정치커뮤니티 끝-->
                                </div>
                                <!-- 사이드바 right 끝 -->
                            </div>
                        </div>
                        <!-- ===========탭1 : 국회의원목록 끝========== -->
                        <!-- ===========탭2 : 의원상세보기========== -->
                        <div class="tab-pane" id="tab-6-2" href="01_a_politics-mna-detail_profile">
                        </div>
                        <!-- ===========탭3 : 의원통계보기========== -->
                        <div class="tab-pane" id="tab-6-3">
                        </div>
                    <!-- ===========탭3 : 의원통계보기 끝========== -->
                </div>
            </div>
        </section>

        <!-- =======================
Main END -->
		</main>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>