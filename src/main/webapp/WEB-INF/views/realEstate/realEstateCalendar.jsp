<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

  
<%@include file="/WEB-INF/views/common/header.jsp" %>

<head>
    <title>FinTouch | FinanceProduct | Detail</title>
    
    <!-- @@@@@@@@@@@@@@@@@@@@@@ -->
    <!-- calendar -->
    <link href='${path}/resources/resources1b/fullcalendar/lib/main.css' rel='stylesheet' />
    <script src='${path}/resources/resources1b/fullcalendar/lib/main.js'></script>
    
    <!-- fullcalendar css JS -->



</head>

<!-- 캘린더용 -->
<style>
    html,
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
        font-size: 14px;
    }
    
    #calendar {
        max-width: 1200px;
        margin: 40px auto;
        font-size: 17px;
        font-weight: 600;
    }
    
    .btn-cate {
        font-weight: 700;
    }
</style>


<script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
        	
            headerToolbar: {
                left: 'prevYear,prev',
                center: 'title',
                right: 'next,nextYear'
            },
            // locale: "ko",
            buttonIcons: {
                prev: 'chevron-left',
                next: 'chevron-right',
                prevYear: 'chevrons-left', // double chevron
                nextYear: 'chevrons-right' // double chevron
            },
            selectable: true,
            selectMirror: true,
            hiddenDays: [6, 0],
            navLinks: false, // can click day/week names to navigate views
            editable: true,

            /* dayMaxEvents: true, // allow "more" link when too many events */
            dayMaxEvents: 6, // allow "more" link when too many events
            // 이벤트 객체 필드 document : https://fullcalendar.io/docs/event-object
            events: [
           		<c:forEach var="apt" items="${apt}">
	    			{
	    				title: '<c:out value="${apt.house_nm}"/>' ,
    					start: '<c:out value="${apt.gnrl_rnk1_crsparea_rcept_pd}"/>' ,
    					color: '#E378A6'
    					
	    			},
   				</c:forEach>
            
            /* 	{
                title: '강릉 더리브 퍼스티지 아파트',
                start: '2022-10-03',
                color: '#BEABCC',
                url: '03_reales_calendar_detail.html'
            }, {
                title: '장성 바울루체',
                start: '2022-10-04',
                color: '#B7C089',
                url: '03_reales_calendar_detail.html'
            }, {
                title: '인천계양 유탑 유블레스',
                start: '2022-10-05',
                color: '#809BCA',
                url: '03_reales_calendar_detail.html'
            }, {
                title: '강릉 더리브 퍼스티지 아파트',
                start: '2022-10-04',
                color: '#809BCA',
                url: '03_reales_calendar_detail.html'
            }, {
                title: '거제 유림노르웨이숲 디오션',
                start: '2022-10-06',
                color: '#EB8770',
                url: '03_reales_calendar_detail.html'
            }, {
                title: '하남감일 한양수자인(계약취소주택)',
                start: '2022-10-11',
                color: '#E3A9C2',
                url: '03_reales_calendar_detail.html'
            } */
            
            {
                title: 'test용!',
                start: '2022-10-10',
                color: '#E378A6',
                url: '03_reales_calendar_detail.html'
            }]

        });
        calendar.render();
    });
</script> 


<body>
	
	<!-- **************** MAIN CONTENT START **************** -->
    <!-- <section class="position-relative overflow-hidden" style="background-image:url(re/images/03_reales_/03_reales_calendar.jpeg); background-position: center; background-size: cover;"> -->
    <section class="position-relative overflow-hidden" style="background-image:url(${path}/resources/resources1b/images/03_realEstate/03_reales_calendar.jpeg); background-position: center; background-size: cover;">
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
                        <h1 class="display-5 mice" style="color:black;">청약캘린더</h1>
						<p style="color:black;">월별 청약 일정 정보를 한눈에 확인하실 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	<!-- @@@ 본문 시작 @@@ -->
	<section class="pt-3 pt-lg-5">
		<div class="container">
			<section class="pt-3">
				<div class="container position-relative" data-sticky-container>
					<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
					<!-- tab Start -->
					<div style="width: 100%; margin: auto;">
						<h2 class="mice">
							<i class="bi bi-calendar-minus"></i> 청약캘린더
						</h2>
						<hr>

						<div class="col-12" style="margin-top: 30px; margin-bottom: 50px;">
							<form method="get" action="#" style="font-size: 17px;">
								<h4 class="mice">분양종류</h4>
								<hr
									style="background: black; height: 2px; border: 0; margin-top: 7px;">
								&nbsp; <label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="total" checked>
									전체</label> <label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="apt"> APT</label>
								<label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="minganApt">
									민간사전청약APT</label> <label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="officetel">
									오피스텔/도시형생활주택/민간임대</label> <label><input type="checkbox"
									name="calendar" id="" value="public"> 공공지원민간임대</label><br>
								<br>

								<h4 class="mice" style="margin-top: 20px;">우선순위</h4>
								<hr
									style="background: black; height: 2px; border: 0; margin-top: 7px;">
								&nbsp; <label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="total" checked>
									전체</label> <label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="total">
									특별공급</label> <label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="apt"> 1순위</label>
								<label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="apt"> 2순위</label>
								<label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="apt"> 무순위</label>
								<label style="margin-right: 60px;"><input
									type="checkbox" name="calendar" id="" value="apt">
									취소후재공급</label>

								<div
									style="display: flex; justify-content: center; margin: 30px 0 15px 0;">
									<button type="button" class="btn btn-dark"
										style="text-align: center; font-size: 16px;">search</button>
								</div>
							</form>
						</div>


						<table style="width: 100%; margin: auto;">
							<tr>
								<td colspan="5 " style="width: 38%; word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 16px; background-color: #436C9A;">APT</button>
								</td>
								<td colspan="3 " style="width: 25%; word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 16px; background-color: #436C9A;">민간사전청약APT</button>
								</td>
								<td rowspan="2 " style="width: 24%; word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 16px; height: 85px; background-color: #F7A825; border: none;">오피스텔/도시형생활주택/민간임대</button>
								</td>
								<td rowspan="2 " style="width: 13%; word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 16px; height: 85px; background-color: #E3A9C2; border: none;">공공지원민간임대</button>
								</td>
							</tr>
							<tr>
								<td style="word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 15px; background-color: #6B7CB4; border: none;">특별공급</button>
								</td>
								<td style="word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 15px; background-color: #E378A6; border: none;">1순위</button>
								</td>
								<td style="word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 15px; background-color: #FCC75F; border: none;">2순위</button>
								</td>
								<td style="word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 15px; background-color: #B7C089; border: none;">무순위</button>
								</td>
								<td style="word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 15px; background-color: #467EB7; border: none;">취소후재공급</button>
								</td>
								<td style="word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 15px; background-color: #BEABCC; border: none;">특별공급</button>
								</td>
								<td style="word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 15px; background-color: #EB8770; border: none;">1순위</button>
								</td>
								<td style="word-break: break-all;">
									<button type="button" class="btn btn-primary btn-cate mice"
										style="width: 100%; font-size: 15px; background-color: #809BCA; border: none;">2순위</button>
								</td>
							</tr>
						</table>
						<p style="font-size: 14px;">
							<i class="bi bi-info-circle"></i> 공급유형별 색상으로 일정을 확인해보세요.
						</p>
					</div>
					<!-- tabEnd -->

					<div id='calendar'></div>
					
					
					<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
					
					
					

					<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
				</div>
			</section>

		</div>
	</section>



	<!-- @@@ 본문 끝 @@@ -->
	






	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

