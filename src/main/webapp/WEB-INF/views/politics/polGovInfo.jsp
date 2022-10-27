<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | Politics | Government </title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>

    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section class="bg-dark-overlay-4 " style="background-image:url('${path}/resources/resources1b/images/04_politics/02_gov/main_gov.jpg'); background-position: center left; background-size: cover; ">
            <div class="container ">
                <div class="row ">
                    <div class="col-lg-8 py-md-5 my-lg-0">
                        <a href="# " class="badge text-bg-primary mb-2 "><i
                                class="fas fa-circle me-2 small fw-bold "></i>Politics</a>
                        <h1 class="text-white mice">정부부처소개</h1>
                        <p class="lead text-white mice">정부조직관리정보시스템 기준의 정부조직도를 안내해드립니다. </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- 메인 본문내용 시작 -->
        <section class="pt-3 pt-lg-5 ">
            <!-- 메인 내용 알맹이 시작-->
            <div class="container ">
                <div class="row ">
                    <img src="https://www.korea.kr//images/v3/sub/organization_220913.jpg ">
                </div>
                <br> <br><br>
                <div class="row ">
                    <h5 class="text-center ">※ 해당 조직도는 정부조직관리정보시스템 기준입니다.</h5>
                </div>
                <br>
                <div class="col-12 ">
                    <!-- Blog post table START -->
                    <div class="card border bg-transparent rounded-3 ">
                        <!-- Card header START -->
                        <div class="card-header border-bottom p-3 bg-light ">
                            <div class="d-flex justify-content-between align-items-center card-body row g-3 mb-3 ">
                                <h5 class="font-weight-bold " style="color:#2163E8 ">
                                    정부조직은 정부의 수반인 대통령, 대통령의 명을 받아 중앙행정기관의 장을 지휘.감독하는 국무총리, 국무총리가 특별히 위임하는 사무를 수행하는 부총리와 18부 4처 18청 6위원회로 구성된다. </h5>
                                <br>
                                <strong style="color:#191A1F ">대통령 밑으로는</strong>대통령을 보좌하는 대통령비서실과 국가안보실 및 대통령경호처, 국가정보원, 감사원을 두고 인권의 보호와 향상업무를 독립적으로 수행할수 있도록 하는 국가인권위원회와 고위공직자 및 그 가족의 특정범죄를 척결하는 고위공직자범죄수사처, 국가안전보장회의, 민주평화통일자문회의, 국민경제자문회의, 국가과학기술자문회의와
                                같은 대통령자문회의를 둔다.
                                <br> <strong style="color:#191A1F ">국무총리 밑으로는</strong> 국무총리를 보좌하는 국무조정실 및 국무총리비서실을 두고, 소속으로는 국가보훈처, 인사혁신처, 법제처, 식품의약품안전처, 공정거래위원회, 금융위원회, 국민권익위원회, 개인정보보호위원회, 원자력안전위원회를 둔다. 대통령의 통찰하에 기획재정부, 교육부, 외교부, 국가과학기술정보통신부, 통일부, 법무부,
                                국방부, 행정안전부, 문화체육관광부, 농림축산식품부, 산업통상부, 보건복지부, 환경부, 고용노동부, 여성가족부, 국토교통부, 해양수산부, 중소벤처기업부인 18부와 국세청, 관세청, 조달청, 통계청, 대검찰청, 병무청, 방위사업청,경찰청, 소방청, 문화재청, 농촌진흥청, 산림청, 특허청, 질병관리청, 기상청, 행정중심복합도시건설청, 새만금개발청, 해양경찰청인 18청을 둔다.
                                </h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- 메인 내용 알맹이 끝-->
    </main>
    <!-- 메인 본문내용 끝 -->
    <!-- ============ 메인 컨텐츠 끝============ -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>