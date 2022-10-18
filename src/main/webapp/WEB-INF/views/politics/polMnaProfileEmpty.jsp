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
        <section class="bg-dark-overlay-4" style="background-image:url('${path}/resources/resources1b/images/04_politics/02_gov/main_na.png'); 
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
                        <div class="tab-pane show active" id="tab-6-2">
                            <h5 class="card-header-title mb-5" style="color:white">국회의원소개</h5>
                            <div class="container text-center">

                                <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                    <img src="${path}/resources/resources1b/images/04_politics/02_gov/logo_mna.png" style="width: 200px;">
                                    <div class="ms-3">
                                        <h5 class="mb-5">
                                            <a style="color:#888a8d;">좌측의</a> <a style="color:#2163e8;">국회의원목록</a> <a style="color:#888a8d;"> 탭에서</a>
                                            <br> <a style="color:#888a8d;">먼저</a>
                                            <a style="color:#2163e8"> 국회의원검색</a> <a style="color:#888a8d;">부탁드립니다.</a> </h5>
                                    </div>
                                </table>
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