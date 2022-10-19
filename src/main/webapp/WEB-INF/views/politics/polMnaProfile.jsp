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
        <section class="bg-dark-overlay-4" style="background-image:url('${path}/resources/resources1b/images/04_politics/02_gov/main_na.jfif'); 
        background-position: center left; background-size: cover; height: 300px;">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-8 py-md-5 my-lg-0 ">
                        <a href="# " class="badge text-bg-primary mb-2 "><i
                                class="fas fa-circle me-2 small fw-bold "></i>Politics</a>
                        <h1 class="text-white mice">제21대 국회의원현황</h1>
                        <p class="lead text-white mice"> 제21대 국회의원의 전체목록 및 검색, 의원별 상세정보, 정당별 의원현황등의 <br>통계를 확인하실 수 있습니다.</p>

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
                            <li class="nav-item "> <a class="nav-link " href="${path}/politics/polMnaList">국회의원목록</a>
                            </li>
                            <li class="nav-item "> <a class="nav-link active" href="${path}/politics/polMnaProfileEmpty"> 의원상세보기 </a>
                            </li>
                            <li class="nav-item "> <a class="nav-link " href="${path}/politics/polMnaStats"> 의원통계보기 </a>
                            </li>
                    </ul>
                    <div class="tab-content ">
                        <div class="tab-pane " id="tab-6-1 "></div>
                          
                        <!-- ===========탭1 : 국회의원목록 끝========== -->
                        <!-- ===========탭2 : 의원상세보기========== -->
                        <div class="tab-pane show active " id="tab-6-2 ">
                            <h5 class="card-header-title mb-0 mice" style="color:white ">국회의원소개</h5>
                            <div class="container ">
                                <div class="row g-4 ">
                                    <div class="col-lg-8 ">
                                        <!-- Chart START -->
                                        <div class="card border h-100 ">
                                            <!-- Card header -->
                                            <div class="card-header border-bottom d-flex justify-content-between align-items-center p-3 bg-dark ">
                                                <h5 class="card-header-title mb-0 mice" style="color:white ">국회의원소개</h5>
                                            </div>
                                            <!-- Card body -->
                                            <div class="card-body ">
                                                <div class="d-sm-flex justify-content-sm-between align-items-center mb-4 ">
                                                    <!-- Avatar detail -->
                                                    <div class="d-flex align-items-center ">
                                                        <!-- Avatar -->
                                                        <div class="avatar avatar-xxl ">
                                                            <img class="avatar-img rounded " src="resources/resources1b/images/avatar/mna_01.jpg " alt="avatar ">
                                                        </div>
                                                        <!-- Info -->
                                                        <div class="ms-3 ">
                                                            <h5 class="mb-0 ">배현진 (裵賢鎭)</h5>
                                                            <p class="mb-0 small ">BAE HYUNJIN</p>
                                                            <p class="mb-0 small ">1983-11-06</p>
                                                            <p class="mb-0 small ">제21대</p>
                                                            <p class="mb-0 small ">국민의힘</p>
                                                        </div>
                                                    </div>

                                                    <!-- Tags -->
                                                    <div class="d-flex mt-2 mt-sm-0 ">
                                                    </div>
                                                </div>

                                                <!-- Information START -->
                                                <div class="row ">
                                                    <!-- Information item -->
                                                    <div class="col-md-6 ">
                                                        <ul class="list-group list-group-borderless ">

                                                            <li class="list-group-item ">
                                                                <span>지역:</span>
                                                                <span class="h6 mb-0 ">서울 송파구을</span>
                                                            </li>
                                                            <!-- User Name -->
                                                            <li class="list-group-item ">
                                                                <span>선거구구분:</span>
                                                                <span class="h6 mb-0 ">지역구</span>
                                                            </li>
                                                            <!-- Full Name -->
                                                            <li class="list-group-item ">
                                                                <span>소속위원회:</span>
                                                                <span class="h6 mb-0 ">문화체육관광위원회, 예산결산특별위원회,
                                                                        연금개혁특별위원회</span>
                                                            </li>
                                                            <!-- User Name -->
                                                            <li class="list-group-item ">
                                                                <span>당선횟수:</span>
                                                                <span class="h6 mb-0 ">초선(제21대)</span>
                                                            </li>
                                                            <!-- User Name -->
                                                            <li class="list-group-item ">
                                                                <span>사무실전화:</span>
                                                                <span class="h6 mb-0 ">02-784-2062</span>
                                                            </li>
                                                            <!-- User Name -->
                                                            <li class="list-group-item ">
                                                                <span>의원실안내:</span>
                                                                <span class="h6 mb-0 ">의원회관 1015호</span>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <!-- Information item -->
                                                    <div class="col-md-6 ">
                                                        <ul class="list-group list-group-borderless ">
                                                            <!-- Email ID -->
                                                            <li class="list-group-item ">
                                                                <span>의원홈페이지:</span>
                                                                <span class="h6 mb-0 ">www.assembly.go.kr/members/21st/BAEHYUNJIN</span>
                                                            </li>
                                                            <!-- Email ID -->
                                                            <li class="list-group-item ">
                                                                <span>개별홈페이지:</span>
                                                                <span class="h6 mb-0 ">http://blog.naver.com/trustbhj</span>
                                                            </li>
                                                            <!-- Mobile Number -->
                                                            <li class="list-group-item ">
                                                                <span>이메일: </span>
                                                                <span class="h6 mb-0 "> </span>
                                                            </li>
                                                            <!-- Joining Date -->
                                                            <li class="list-group-item ">
                                                                <span>보좌관: </span>
                                                                <span class="h6 mb-0 ">나경범, 유지민</span>
                                                            </li>
                                                            <!-- Joining Date -->
                                                            <li class="list-group-item ">
                                                                <span>선임비서관: </span>
                                                                <span class="h6 mb-0 ">양재유, 이문재</span>
                                                            </li>
                                                            <!-- Joining Date -->
                                                            <li class="list-group-item ">
                                                                <span>비서관: </span>
                                                                <span class="h6 mb-0 ">김하은, 김지선, 차영훈, 김소영, 박재흥</span>
                                                            </li>
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
                                                <h5 class="card-header-title mb-0 mice" style="color:white ">주요약력</h5>
                                            </div>
                                            <!-- Card body START -->
                                            <div class="card-body p-3 " id="scroll-bar " style="overflow:auto; width:100%; height:150px; ">
                                                <div class="row ">
                                                    <div class="d-flex align-items-center position-relative ">
                                                        <!-- Blog item -->
                                                        <div class="col-12 ">
                                                            <div class="ms-3 ">
                                                                <!-- <h6> -->
                                                                <학력><br> - 숙명여자대학교 정보방송학 학사<br> - 북한대학원대학교 북한학 석사 수료
                                                                    <br>
                                                                    <br>
                                                                    <경력><br> - 제21대 국회의원(서울 송파구을/국민의힘)<br> - 국회 예산결산특별위원회 위원<br> - 국회 문화체육관광위원회 위원<br> - 국민의힘 부동산시장 정상화 특별위원회 위원<br> - (전) 국민의힘 최고위원
                                                                        <br> - (전) 윤석열 대통령 당선인 대변인<br> - (전) 국회 운영위원회 위원<br> - (전) 국민의힘 원내대변인<br> - (전) 국민의힘 원내부대표
                                                                        <br> - (전) MBC 앵커
                                                                        <br><br>
                                                                        <수상경력>
                                                                            <br> - 2021 범시민사회단체연합 올해의 인물 좋은 정치인상<br> - 2021 국민의힘 국정감사 우수의원
                                                                            <br> - 2021 대한민국 최우수 법률상<br> - 2021 자유경제입법상<br> - 2021 대한민국 창조혁신대상 국회의정대상<br> - 2020 국민의힘 국정감사 우수의원<br>
                                                                            <!-- </h6> -->
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
                                                <div class="d-flex justify-content-between align-items-center ">
                                                    <h5 class="mb-2 mb-sm-0 mice" style="color:white ">대표발의법률안</h5>
                                                </div>
                                            </div>
                                            <!-- Card header END -->

                                            <!-- Card body START -->
                                            <div class="card-body ">

                                                <!-- Search and select START -->
                                                <div class="row g-3 align-items-center justify-content-between mb-3 ">
                                                    <!-- Search -->
                                                    <div class="col-md-8 ">
                                                        <form class="rounded position-relative ">
                                                            <input class="form-control pe-5 bg-transparent " type="search " placeholder="의안명검색 " aria-label="Search ">
                                                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y " type="submit "><i
                                                                        class="fas fa-search fs-6 "></i></button>
                                                        </form>
                                                    </div>

                                                    <!-- Select option -->
                                                    <div class="col-md-3 ">
                                                        <!-- Short by filter -->
                                                        <form>
                                                            <select class="form-select z-index-9 bg-transparent " aria-label=".form-select-sm ">
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
                                                    <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                                        <!-- Table head -->
                                                        <thead class="table-secondary ">
                                                            <tr>
                                                                <th scope="col " class="border-0 rounded-start ">번호</th>
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
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>1</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="http://likms.assembly.go.kr/bill/billDetail.do?billId=PRC_X2C2Z0T9O1H3H1J8J3B1P5N8Q6A8J6&ageFrom=21&ageTo=21">국민체육진흥법 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>문화체육관광위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-09-02</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-success bg-opacity-10 text-success mb-2 ">가결</span>
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
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">매장문화재 보호 및 조사에 관한 법률 일부개정법률안
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
                                                                    <span class="badge bg-warning bg-opacity-15 text-warning mb-2 ">계류</span>
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
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">재건축초과이익 환수에 관한 법률 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 13인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>국토교통위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-24</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-danger bg-opacity-10 text-danger mb-2 ">대안반영폐기</span>
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
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">국민체육진흥법 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>기획재정위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-09-02</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-success bg-opacity-10 text-success mb-2 ">가결</span>
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
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">매장문화재 보호 및 조사에 관한 법률 일부개정법률안</a>
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
                                                                    <span class="badge bg-warning bg-opacity-15 text-warning mb-2 ">계류</span>
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
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">재건축초과이익 환수에 관한 법률 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 13인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>국토교통위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-24</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-danger bg-opacity-10 text-danger mb-2 ">대안반영폐기</span>
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
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">국민체육진흥법 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>기획재정위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-09-02</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-success bg-opacity-10 text-success mb-2 ">가결</span>
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
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">매장문화재 보호 및 조사에 관한 법률 일부개정법률안</a>
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
                                                                    <span class="badge bg-warning bg-opacity-15 text-warning mb-2 ">계류</span>
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
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">재건축초과이익 환수에 관한 법률 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 13인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>국토교통위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-06-24</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-danger bg-opacity-10 text-danger mb-2 ">대안반영폐기</span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <!-- 번호 -->
                                                                <td>1</td>
                                                                <!-- 대수 -->
                                                                <td>제21대</td>
                                                                <!-- 의안명 -->
                                                                <td>
                                                                    <h6 class="table-title mt-2 mt-md-0 mb-0 "><a href="# ">국민체육진흥법 일부개정법률안</a></h6>
                                                                </td>
                                                                <!-- 제안자 -->
                                                                <td>배현진의원 등 12인</td>
                                                                <!-- 소관위원회 -->
                                                                <td>문화체육관광위원회</td>
                                                                <!-- 작성일 -->
                                                                <td>2022-09-02</td>
                                                                <!-- 처리상태 -->
                                                                <td>
                                                                    <span class="badge bg-success bg-opacity-10 text-success mb-2 ">가결</span>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                        <!-- Table body END -->
                                                    </table>
                                                </div>
                                                <!-- Blog post table END -->
                                                <br>
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
                        <div class="tab-pane " id="tab-6-3 ">
                        </div>
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