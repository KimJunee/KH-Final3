<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>FinTouch | Politics | Parliamentary Profiles </title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

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
                            <li class="nav-item "> <a class="nav-link " href="04_pol-mna_list.html">국회의원목록</a>
                            </li>
                            <li class="nav-item "> <a class="nav-link  " href="04_pol-mna_profile_empty.html"> 의원상세보기 </a>
                            </li>
                            <li class="nav-item "> <a class="nav-link active" href="04_pol-mna_stats.html"> 의원통계보기 </a>
                            </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane" id="tab-6-1">
                            <div class="col-xl-9">
                                <!-- ===========탭1 : 국회의원목록 시작========== -->
                                <div class="card border bg-transparent rounded-3">
                                    <!-- Card body START -->
                                    <div class="card-body">
                                        <!-- Search and select START -->
                                        <div class="row g-3 align-items-center justify-content-between mb-3">
                                            <!-- Search -->
                                            <!-- <div class="col-md-8"> -->
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
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">전소피아</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>국민의힘</td>
                                                        <!-- Table data -->
                                                        <td>서울 동작구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-warning bg-opacity-10 text-warning mb-2">재선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>지역구</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">김주니</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>더불어민주당</td>
                                                        <!-- Table data -->
                                                        <td>서울 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-success bg-opacity-10 text-success mb-2">초선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>비례대표</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">이미향</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>정의당</td>
                                                        <!-- Table data -->
                                                        <td>안양 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-success bg-opacity-10 text-success mb-2">초선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>지역구</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">배현진</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>국민의힘</td>
                                                        <!-- Table data -->
                                                        <td>서울 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-warning bg-opacity-10 text-warning mb-2">재선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>지역구</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">배현진</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>국민의힘</td>
                                                        <!-- Table data -->
                                                        <td>서울 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-success bg-opacity-10 text-success mb-2">초선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>비례대표</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">배현진</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>국민의힘</td>
                                                        <!-- Table data -->
                                                        <td>서울 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-success bg-opacity-10 text-success mb-2">초선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>비례대표</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">배현진</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>국민의힘</td>
                                                        <!-- Table data -->
                                                        <td>서울 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-warning bg-opacity-10 text-warning mb-2">재선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>지역구</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">배현진</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>국민의힘</td>
                                                        <!-- Table data -->
                                                        <td>서울 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-success bg-opacity-10 text-success mb-2">초선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>지역구</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">배현진</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>국민의힘</td>
                                                        <!-- Table data -->
                                                        <td>서울 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-success bg-opacity-10 text-success mb-2">초선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>지역구</td>
                                                    </tr>
                                                    <!-- 국회의원한줄 -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>21대</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar align-middle">
                                                                    <img src="assets/images/avatar/mna_01.jpg" class="avatar-img rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">배현진</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>국민의힘</td>
                                                        <!-- Table data -->
                                                        <td>서울 송파구을</td>
                                                        <!-- Table data -->
                                                        <td>여</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <span class="badge bg-warning bg-opacity-10 text-warning mb-2">재선</span>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>지역구</td>
                                                    </tr>
                                                </tbody>
                                                <!-- Table body END -->
                                            </table>
                                        </div>
                                        <br>
                                        <!-- Content -->
                                        <!-- <p class="mb-sm-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p> -->
                                        <!-- Pagination -->
                                        <nav class="mb-sm-0 d-flex justify-content-center" aria-label="navigation">
                                            <ul class="pagination pagination-sm pagination-bordered mb-0">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Prev</a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item disabled"><a class="page-link" href="#">..</a></li>
                                                <li class="page-item"><a class="page-link" href="#">15</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">Next</a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Pagination END -->
                                    <br>
                                </div>
                            </div>
                        </div>
                        <!-- ===========탭1 : 국회의원목록 끝========== -->
                        <!-- ===========탭2 : 의원상세보기========== -->
                        <div class="tab-pane " id="tab-6-2">
                            <h5 class="card-header-title mb-0" style="color:white">국회의원소개(★페이지넘김)</h5>
                            <div class="container">
                                <div class="row g-4">
                                    <div class="col-lg-8">
                                        <!-- Chart START -->
                                        <div class="card border h-100">
                                            <!-- Card header -->
                                            <div class="card-header border-bottom d-flex justify-content-between align-items-center p-3 bg-dark">
                                                <h5 class="card-header-title mb-0" style="color:white">국회의원소개(★페이지넘김)</h5>
                                            </div>
                                            <!-- Card body -->
                                            <div class="card-body">
                                                <div class="d-sm-flex justify-content-sm-between align-items-center mb-4">
                                                    <!-- Avatar detail -->
                                                    <div class="d-flex align-items-center">
                                                        <!-- Avatar -->
                                                        <div class="avatar avatar-xxl">
                                                            <img class="avatar-img rounded" src="assets/images/avatar/mna_01.jpg" alt="avatar">
                                                        </div>
                                                        <!-- Info -->
                                                        <div class="ms-3">
                                                            <h5 class="mb-0">배현진 (裵賢鎭)</h5>
                                                            <p class="mb-0 small">BAE HYUNJIN</p>
                                                            <p class="mb-0 small">1983-11-06</p>
                                                            <p class="mb-0 small">제21대</p>
                                                            <p class="mb-0 small">국민의힘</p>
                                                        </div>
                                                    </div>

                                                    <!-- Tags -->
                                                    <div class="d-flex mt-2 mt-sm-0">
                                                    </div>
                                                </div>

                                                <!-- Information START -->
                                                <div class="row">
                                                    <!-- Information item -->
                                                    <div class="col-md-6">
                                                        <ul class="list-group list-group-borderless">

                                                            <li class="list-group-item">
                                                                <span>지역:</span>
                                                                <span class="h6 mb-0">서울 송파구을</span>
                                                            </li>
                                                            <!-- User Name -->
                                                            <li class="list-group-item">
                                                                <span>선거구구분:</span>
                                                                <span class="h6 mb-0">지역구</span>
                                                            </li>
                                                            <!-- Full Name -->
                                                            <li class="list-group-item">
                                                                <span>소속위원회:</span>
                                                                <span class="h6 mb-0">문화체육관광위원회, 예산결산특별위원회,
                                                                        연금개혁특별위원회</span>
                                                            </li>
                                                            <!-- User Name -->
                                                            <li class="list-group-item">
                                                                <span>당선횟수:</span>
                                                                <span class="h6 mb-0">초선(제21대)</span>
                                                            </li>
                                                            <!-- User Name -->
                                                            <li class="list-group-item">
                                                                <span>사무실전화:</span>
                                                                <span class="h6 mb-0">02-784-2062</span>
                                                            </li>
                                                            <!-- User Name -->
                                                            <li class="list-group-item">
                                                                <span>의원실안내:</span>
                                                                <span class="h6 mb-0">의원회관 1015호</span>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <!-- Information item -->
                                                    <div class="col-md-6">
                                                        <ul class="list-group list-group-borderless">
                                                            <!-- Email ID -->
                                                            <li class="list-group-item">
                                                                <span>의원홈페이지:</span>
                                                                <span class="h6 mb-0">www.assembly.go.kr/members/21st/BAEHYUNJIN</span>
                                                            </li>
                                                            <!-- Email ID -->
                                                            <li class="list-group-item">
                                                                <span>개별홈페이지:</span>
                                                                <span class="h6 mb-0">http://blog.naver.com/trustbhj</span>
                                                            </li>
                                                            <!-- Mobile Number -->
                                                            <li class="list-group-item">
                                                                <span>이메일: </span>
                                                                <span class="h6 mb-0"> </span>
                                                            </li>
                                                            <!-- Joining Date -->
                                                            <li class="list-group-item">
                                                                <span>보좌관: </span>
                                                                <span class="h6 mb-0">나경범, 유지민</span>
                                                            </li>
                                                            <!-- Joining Date -->
                                                            <li class="list-group-item">
                                                                <span>선임비서관: </span>
                                                                <span class="h6 mb-0">양재유, 이문재</span>
                                                            </li>
                                                            <!-- Joining Date -->
                                                            <li class="list-group-item">
                                                                <span>비서관: </span>
                                                                <span class="h6 mb-0">김하은, 김지선, 차영훈, 김소영, 박재흥</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- Information item -->
                                                    <div class="col-12">
                                                        <ul class="list-group list-group-borderless">

                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- Information END -->
                                            </div>
                                        </div>
                                        <!-- Chart END -->
                                    </div>

                                    <div class="col-md-6 col-lg-4">
                                        <!-- Popular blog START -->
                                        <div class="card border h-100">
                                            <!-- Card header -->
                                            <div class="card-header border-bottom p-3 bg-dark">
                                                <h5 class="card-header-title mb-0" style="color:white">주요약력</h5>
                                            </div>

                                            <!-- Card body START -->
                                            <div class="card-body p-3">

                                                <div class="row">
                                                    <div class="d-flex align-items-center position-relative">
                                                        <!-- Blog item -->
                                                        <div class="col-12">
                                                            <div class="ms-3">
                                                                <a class="h6 mb-0">
                                                                    <학력><br> - 숙명여자대학교 정보방송학 학사<br> - 북한대학원대학교 북한학 석사 수료
                                                                        <br>
                                                                        <br>
                                                                        <경력><br> - 제21대 국회의원(서울 송파구을/국민의힘)<br> - 국회 예산결산특별위원회 위원<br> - 국회 문화체육관광위원회 위원<br> - 국민의힘 부동산시장 정상화 특별위원회 위원<br> - (전) 국민의힘 최고위원
                                                                            <br> - (전) 윤석열 대통령 당선인 대변인<br> - (전) 국회 운영위원회 위원<br> - (전) 국민의힘 원내대변인<br> - (전) 국민의힘 원내부대표
                                                                            <br> - (전) MBC 앵커
                                                                            <br><br>
                                                                            <!-- <수상경력><br> - 2021 범시민사회단체연합 올해의 인물 좋은 정치인상<br> - 2021 국민의힘 국정감사 우수의원<br> - 2021 대한민국 최우수 법률상<br> - 2021 자유경제입법상<br> - 2021 대한민국 창조혁신대상 국회의정대상<br> - 2020 국민의힘 국정감사 우수의원<br></a> -->
                                                                            <!-- <p class="small mb-0"><i class="far fa-eye me-1"></i> 2344 Views</p> -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Blog item -->
                                                    <div class="col-12">
                                                        <div class="d-flex align-items-center position-relative">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Card body END -->

                                            <!-- Card footer -->
                                            <div class="card-footer border-top text-center p-3 bg-secondary">
                                                <a href="#" style="color:white">See more</a>
                                            </div>

                                        </div>
                                        <!-- Popular blog END -->
                                    </div>
                                    <div class="col-12 ">
                                        <!-- Blog post table START -->
                                        <div class="card border bg-transparent rounded-3">
                                            <!-- Card header START -->
                                            <div class="card-header   border-bottom p-3 bg-dark">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <h5 class="mb-2 mb-sm-0" style="color:white">대표발의법률안</h5>
                                                </div>
                                            </div>
                                            <!-- Card header END -->

                                            <!-- Card body START -->
                                            <div class="card-body">

                                                <!-- Search and select START -->
                                                <div class="row g-3 align-items-center justify-content-between mb-3">
                                                    <!-- Search -->
                                                    <div class="col-md-8">
                                                        <form class="rounded position-relative">
                                                            <input class="form-control pe-5 bg-transparent" type="search" placeholder="의안명검색" aria-label="Search">
                                                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i
                                                                        class="fas fa-search fs-6 "></i></button>
                                                        </form>
                                                    </div>

                                                    <!-- Select option -->
                                                    <div class="col-md-3">
                                                        <!-- Short by filter -->
                                                        <form>
                                                            <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
                                                                    <option value="">Sort by</option>
                                                                    <option>Free</option>
                                                                    <option>Newest</option>
                                                                    <option>Oldest</option>
                                                                </select>
                                                        </form>
                                                    </div>
                                                </div>
                                                <!-- Search and select END -->

                                                <!-- Blog post table START -->
                                                <div class="table-responsive border-0 text-center">
                                                    <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                                        <!-- Table head -->
                                                        <thead class="table-dark">
                                                            <tr>
                                                                <th scope="col" class="border-0 rounded-start">번호</th>
                                                                <th scope="col" class="border-0">대수</th>
                                                                <th scope="col" class="border-0">의안명</th>
                                                                <th scope="col" class="border-0">제안자</th>
                                                                <th scope="col" class="border-0">소관위원회</th>
                                                                <th scope="col" class="border-0">작성일</th>
                                                                <th scope="col" class="border-0 rounded-end">처리상태</th>
                                                            </tr>
                                                        </thead>

                                                        <!-- ========대표발의법률안 테이블======== -->
                                                        <tbody class="border-top-0">
                                                            <!-- 번호1 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>1</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">국민체육진흥법 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>문화체육관광위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-09-02</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-success bg-opacity-10 text-success mb-2">가결</span>
                                                                </td>
                                                            </tr>
                                                            <!-- 번호2 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>2</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">매장문화재 보호 및 조사에 관한 법률 일부개정법률안
                                                                            </a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>기획재정위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-29</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-warning bg-opacity-15 text-warning mb-2">계류</span>
                                                                </td>
                                                            </tr>
                                                            <!-- 번호3 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>3</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">재건축초과이익 환수에 관한 법률 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 13인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>국토교통위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-24</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-danger bg-opacity-10 text-danger mb-2">대안반영폐기</span>
                                                                </td>
                                                            </tr>
                                                            <!-- 번호1 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>1</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">국민체육진흥법 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>기획재정위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-09-02</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-success bg-opacity-10 text-success mb-2">가결</span>
                                                                </td>
                                                            </tr>
                                                            <!-- 번호2 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>2</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">매장문화재 보호 및 조사에 관한 법률 일부개정법률안</a>
                                                                    </h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>문화체육관광위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-29</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-warning bg-opacity-15 text-warning mb-2">계류</span>
                                                                </td>
                                                            </tr>
                                                            <!-- 번호3 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>3</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">재건축초과이익 환수에 관한 법률 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 13인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>국토교통위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-24</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-danger bg-opacity-10 text-danger mb-2">대안반영폐기</span>
                                                                </td>
                                                            </tr>
                                                            <!-- 번호1 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>1</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">국민체육진흥법 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>기획재정위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-09-02</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-success bg-opacity-10 text-success mb-2">가결</span>
                                                                </td>
                                                            </tr>
                                                            <!-- 번호2 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>2</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">매장문화재 보호 및 조사에 관한 법률 일부개정법률안</a>
                                                                    </h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>기획재정위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-29</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-warning bg-opacity-15 text-warning mb-2">계류</span>
                                                                </td>
                                                            </tr>
                                                            <!-- 번호3 Table item -->
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>3</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">재건축초과이익 환수에 관한 법률 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 13인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>국토교통위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-24</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-danger bg-opacity-10 text-danger mb-2">대안반영폐기</span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>1</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0"><a href="#">국민체육진흥법 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>문화체육관광위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-09-02</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-success bg-opacity-10 text-success mb-2">가결</span>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                        <!-- Table body END -->
                                                    </table>
                                                </div>
                                                <!-- Blog post table END -->
                                                <br>
                                                <!-- Pagination -->
                                                <nav class="mb-sm-0 d-flex justify-content-center" aria-label="navigation">
                                                    <ul class="pagination pagination-sm pagination-bordered mb-0">
                                                        <li class="page-item disabled">
                                                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Prev</a>
                                                        </li>
                                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                        <li class="page-item active"><a class="page-link" href="#">2</a>
                                                        </li>
                                                        <li class="page-item disabled"><a class="page-link" href="#">..</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">15</a></li>
                                                        <li class="page-item">
                                                            <a class="page-link" href="#">Next</a>
                                                        </li>
                                                    </ul>
                                                </nav>
                                            </div>
                                            <!-- Pagination END -->
                                            <br>
                                        </div>
                                        <!-- Blog post table END -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ===========탭3 : 의원통계보기========== -->
                        <div class="tab-pane show active" id="tab-6-3">
                            <div class="container" height="100px">
                                <div class="row g-4" height="100px">
                                    <div class="col-lg-8">
                                        <!-- Chart START -->
                                        <div class="card border h-60">
                                            <!-- Card header -->
                                            <div class="card-header border-bottom d-flex justify-content-between align-items-center p-3 bg-dark text-center">
                                                <h4 class="card-header-title mb-0 mice" style="color:white">정당별의원현황</h4>
                                            </div>
                                            <!-- Card body -->
                                            <div class="card-body">
                                                <div class="d-sm-flex justify-content-sm-between align-items-center mb-4" style="margin-left: 50px; width:600px; text-align:center">
                                                    <canvas id="ChartLine"></canvas>
                                                </div>
                                                <script>
                                                    let chartLine = document.getElementById('ChartLine').getContext('2d');
                                                    let lineCart = new Chart(ChartLine, {
                                                        type: 'doughnut', // 첫번째 라인형태의 차트
                                                        data: {
                                                            labels: [
                                                                '더불어민주당 169',
                                                                '국민의힘 115',
                                                                '정의당 6',
                                                                '기본소득당 1',
                                                                '시대전환 1',
                                                                '무소속 7'
                                                            ],
                                                            datasets: [{
                                                                lable: '정당별의원현황',
                                                                data: [
                                                                    169,
                                                                    115,
                                                                    6,
                                                                    1,
                                                                    1,
                                                                    7
                                                                ],
                                                                backgroundColor: [
                                                                    'rgb(54, 162, 235)', // 국힘당 빨강
                                                                    'rgb(255, 99, 132)', // 더민당 파랑
                                                                    'rgb(255, 205, 86)', // 정의당 노랑
                                                                    'rgb(255, 94, 0)', // 기본소득당 주황
                                                                    'rgba(128, 65, 217)', // 시대전환 보라
                                                                    'rgb(140, 140, 140)' // 무소속 회색
                                                                ]
                                                            }]
                                                        },
                                                        options: [{
                                                            responsive: false,
                                                        }]
                                                    });
                                                </script>
                                                <!-- Chart END -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4">
                                        <!-- Popular blog START -->
                                        <div class="card border h-45">
                                            <!-- Card header -->
                                            <div class="card-header border-bottom p-3 bg-dark">
                                                <h4 class="card-header-title mb-0 mice" style="color:white">당선횟수별의원현황</h4>
                                            </div>
                                            <!-- Card body START -->
                                            <div class="card-body p-3 ">
                                                <div class="row">
                                                    <div class="d-flex align-items-center position-relative">
                                                        <!-- Blog item -->
                                                        <div class="col-12">
                                                            <canvas id="wide-chart" width="800" height="450"> </canvas>
                                                        </div>
                                                        <script>
                                                            new Chart(document.getElementById("wide-chart"), {
                                                                type: 'bar',
                                                                data: {
                                                                    width: [100],
                                                                    height: [100],
                                                                    labels: ["초선 ", "재선 ", "3선 ", "4선 ", "5선 ", "6선 "],
                                                                    datasets: [{
                                                                        label: "당선횟수별의원현황 (명)",
                                                                        backgroundColor: ["#D1B2FF", "#D1B2FF", "#D1B2FF", "#D1B2FF", "#D1B2FF", "#D1B2FF"],
                                                                        data: [156, 69, 41, 20, 12, 1]
                                                                    }]
                                                                },

                                                                options: {
                                                                    title: {
                                                                        display: true,
                                                                        text: 'Predicted world population (millions) in 2050'
                                                                    },
                                                                    indexAxis: 'y',
                                                                }
                                                            });
                                                        </script>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <!-- Popular blog START -->
                                        <div class="card border h-40" style="margin-top: 0">
                                            <!-- Card header -->
                                            <div class="card-header border-bottom p-2 bg-dark">
                                                <h4 class="card-header-title p-3-sp mice" style="color:white">성별의원현황</h4>
                                            </div>
                                            <!-- Card body START -->
                                            <div class=" card-body  ">
                                                <div class="row ">
                                                    <div class="d-flex align-items-center position-relative ">
                                                        <!-- Blog item -->
                                                        <div class="col-12">
                                                            <canvas id="polar-chart" width="800" height="450"> </canvas>
                                                        </div>
                                                        <script>
                                                            new Chart(document.getElementById("polar-chart"), {
                                                                type: 'pie',
                                                                data: {
                                                                    labels: ["여: 57명", "남 242명"],
                                                                    datasets: [{
                                                                        label: "Population (millions)",
                                                                        backgroundColor: ["#FFB2D9", "#6799FF"],
                                                                        data: [57, 242]
                                                                    }]
                                                                },
                                                                options: {
                                                                    title: {
                                                                        display: true,
                                                                        text: 'Predicted world population (millions) in 2050'
                                                                    }
                                                                }
                                                            });
                                                        </script>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Popular blog END -->
                                </div>
                                <div class="col-12">
                                    <!-- Blog post table START -->
                                    <div class="card border bg-transparent rounded-3 mt-3">
                                        <!-- Card header START -->
                                        <div class="card-header border-bottom p-3 bg-dark">
                                            <div class="d-flex justify-content-between align-items-center ">
                                                <h4 class="mice" style="color:white ">연령별의원현황</h4>
                                            </div>
                                        </div>
                                        <!-- Card header END -->
                                        <!-- Card body START -->
                                        <div class="card-body ">
                                            <canvas id="age-chart" width="400" height="120"> </canvas>
                                        </div>
                                        <script>
                                            new Chart(document.getElementById("age-chart"), {
                                                type: 'bar',
                                                data: {
                                                    width: [100],
                                                    height: [100],
                                                    labels: ["30대", "40대", "50대", "60대", "70대"],
                                                    datasets: [{
                                                        label: "연령별의원현황",
                                                        backgroundColor: ["#BCE55C", "#BCE55C", "#BCE55C", "#BCE55C", "#BCE55C"],
                                                        data: [10, 26, 145, 110, 8]
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
                                </div>
                                <!-- Pagination END -->
                                <br>
                            </div>
                        </div>
                    </div>
                    <!-- ===========탭3 : 의원통계보기 끝========== -->
                </div>
            </div>
        </section>
    </main>
    <!-- **************** MAIN CONTENT END **************** -->
        <!-- =======================
Main END -->
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>