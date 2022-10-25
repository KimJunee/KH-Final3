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
            dayMaxEvents: 4, // allow "more" link when too many events
         	// 이벤트 객체 필드 document : https://fullcalendar.io/docs/event-object
            events: [
            	<c:if test="${!empty apt1}">
	           		<c:forEach var="apt1" items="${apt1}">
		    			{
		    				/* apt-1순위 */
		    				title: '<c:out value="${apt1.house_nm}"/>' ,
	    					start: '<c:out value="${apt1.gnrl_rnk1_crsparea_rcept_pd}"/>' ,
	    					color: '#E378A6',
    						url: '${path}/RealEstate/detail?type=A&no=${apt1.house_manage_no}'
		    			},
	   				</c:forEach>
            	</c:if>
	    		
            	<c:if test="${!empty apt2}">
	           		<c:forEach var="apt2" items="${apt2}">
		    			{
		    				/* apt-2순위 */
		    				title: '<c:out value="${apt2.house_nm}"/>' ,
	    					start: '<c:out value="${apt2.gnrl_rnk2_crsparea_rcept_pd}"/>' ,
	    					color: '#809BCA',
	    					url: '${path}/RealEstate/detail?type=A&no=${apt2.house_manage_no}'
		    			},
	   				</c:forEach>
    			</c:if>
	    		
    			<c:if test="${!empty city}">
	           		<c:forEach var="city" items="${city}">
		    			{
		    				/* 도시형생활주택 */
		    				title: '<c:out value="${city.house_nm}"/>' ,
	    					start: '<c:out value="${city.subscrpt_rcept_bgnde}"/>' ,
	    					color: '#F7A825',
	   						url: '${path}/RealEstate/detail?type=U&no=${city.house_manage_no}'
		    			},
	   				</c:forEach>
    			</c:if>
	    		
    			<c:if test="${!empty office}">
	           		<c:forEach var="office" items="${office}">
		    			{
		    				/* 오피스텔 */
		    				title: '<c:out value="${office.house_nm}"/>' ,
	    					start: '<c:out value="${office.subscrpt_rcept_bgnde}"/>' ,
	    					color: '#BEABCC',
	   						url: '${path}/RealEstate/detail?type=U&no=${office.house_manage_no}'
		    			},
	   				</c:forEach>
    			</c:if>
	    		
    			<c:if test="${!empty mingan}">
	           		<c:forEach var="mingan" items="${mingan}">
		    			{
		    				/* 민간임대 */
		    				title: '<c:out value="${mingan.house_nm}"/>' ,
	    					start: '<c:out value="${mingan.subscrpt_rcept_bgnde}"/>' ,
	    					color: '#EB8770',
	   						url: '${path}/RealEstate/detail?type=U&no=${mingan.house_manage_no}'
		    			},
	   				</c:forEach>
    			</c:if>
            
    			<c:if test="${!empty gong}">
	           		<c:forEach var="gong" items="${gong}">
		    			{
		    				/* 공공지원민간임대 */
		    				title: '<c:out value="${gong.house_nm}"/>' ,
	    					start: '<c:out value="${gong.subscrpt_rcept_bgnde}"/>' ,
	    					color: '#E3A9C2',
	    					url: '${path}/RealEstate/detail?type=U&no=${gong.house_manage_no}'
		    			},
	   				</c:forEach>
    			</c:if>
            
    			<c:if test="${!empty nn}">
	           		<c:forEach var="nn" items="${nn}">
		    			{
		    				/* apt-무순위 */
		    				title: '<c:out value="${nn.house_nm}"/>' ,
	    					start: '<c:out value="${nn.subscrpt_rcept_bgnde}"/>' ,
	    					color: '#B7C089',
    						url: '${path}/RealEstate/detail?type=R&no=${nn.house_manage_no}'
		    			},
	   				</c:forEach>
    			</c:if>
            
    			<c:if test="${!empty cc}">
	           		<c:forEach var="cc" items="${cc}">
		    			{
		    				/* apt-취소후재공급 */
		    				title: '<c:out value="${cc.house_nm}"/>' ,
	    					start: '<c:out value="${cc.subscrpt_rcept_bgnde}"/>' ,
	    					color: '#467EB7',
    						url: '${path}/RealEstate/detail?type=R&no=${cc.house_manage_no}'	
		    			},
	   				</c:forEach>
    			</c:if>
            
    			<c:if test="${!empty spc}">
	           		<c:forEach var="spc" items="${spc}">
		    			{
		    				/* 특별공급 */
		    				title: '<c:out value="${spc.house_nm}"/>' ,
	    					start: '<c:out value="${spc.spsply_rcept_bgnde}"/>' ,
	    					color: '#6B7CB4',
    						url: '${path}/RealEstate/detail?type=A&no=${spc.house_manage_no}'
		    			},
	   				</c:forEach>
    			</c:if>
            
            {
                title: 'test용!',
                start: '2020-09-10',
                color: '#E378A6',
            }]

        });
        calendar.render();
    });
</script> 

<script>
    function checkOnlyOne(element) {

        const checkboxes = document.getElementsByName("calendar");

        checkboxes.forEach((cb) => {
            cb.checked = false;
        })

        element.checked = true;
    }
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

						<div class="col-12" style="margin-top: 30px; margin-bottom:50px;">
	                        <form method="post" action="${path}/realEstate/calendar" id="calendarSearch" style="font-size: 17px;">
	                            <h4 class="mice">분양종류</h4>
	                            <hr style="background: black; height: 2px; border: 0; margin-top:7px;">&nbsp;
	                            <label style="margin-right: 105px;"><input type="checkbox" name="calendar" id="calendar_t" value="total_show" onclick="checkOnlyOne(this)" <c:if test="${checkBox eq 'total_show'}">checked</c:if>> 전체</label>
	                            <label style="margin-right: 70px;">
	                                APT (<input type="checkbox" name="calendar" id="" value="apt_special" onclick="checkOnlyOne(this)" style="margin-left: 5px;" <c:if test="${checkBox eq 'apt_special'}">checked</c:if>> 특별공급 
	                                <input type="checkbox" name="calendar" id="" value="apt_1" onclick="checkOnlyOne(this)" style="margin-left: 15px;" <c:if test="${checkBox eq 'apt_1'}">checked</c:if>> 1순위
	                                <input type="checkbox" name="calendar" id="" value="apt_2" onclick="checkOnlyOne(this)" style="margin-left: 15px;" <c:if test="${checkBox eq 'apt_2'}">checked</c:if>> 2순위
	                                <input type="checkbox" name="calendar" id="" value="apt_n" onclick="checkOnlyOne(this)" style="margin-left: 15px;" <c:if test="${checkBox eq 'apt_n'}">checked</c:if>> 무순위
	                                <input type="checkbox" name="calendar" id="" value="apt_c" onclick="checkOnlyOne(this)" style="margin-left: 15px;" <c:if test="${checkBox eq 'apt_c'}">checked</c:if>> 취소후재공급
	                                )
	                            
	                            </label>
	                            <label style="margin-right: 70px;"><input type="checkbox" name="calendar" id="" value="office" onclick="checkOnlyOne(this)" <c:if test="${checkBox eq 'office'}">checked</c:if>> 오피스텔</label>
	                            <label style="margin-right: 70px;"><input type="checkbox" name="calendar" id="" value="cityhouse" onclick="checkOnlyOne(this)" <c:if test="${checkBox eq 'cityhouse'}">checked</c:if>> 도시형생활주택</label><br>
	                            <label style="margin-right: 70px; margin-left: 8px;"><input type="checkbox" name="calendar" id="" value="rent" onclick="checkOnlyOne(this)" <c:if test="${checkBox eq 'rent'}">checked</c:if>> 민간임대</label>
	                            <label><input type="checkbox" name="calendar" id="" value="public_rent" onclick="checkOnlyOne(this)" <c:if test="${checkBox eq 'public_rent'}">checked</c:if>> 공공지원민간임대</label><br><br>
	
	                            <div style="display: flex; justify-content: center; margin:10px 0 15px 0; ">
	                                <button type="submit" class="btn btn-dark" form="calendarSearch" style="text-align: center; font-size: 16px;">search</button>
	                            </div>
	                        </form>
	                    </div>

						<table style="width:100%; margin:auto;">
	                        <tr>
	                            <td colspan="5 " style="width:40%; word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:16px; background-color: #436C9A;">APT</button>
	                            </td>
	                            <!-- <td colspan="3 " style="width:25%; word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:16px; background-color: #436C9A;">민간사전청약APT</button>
	                            </td> -->
	                            <td rowspan="2 " style="width:15%; word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:16px; height: 85px; background-color: #BEABCC; border:none;">오피스텔</button>
	                            </td>
	                            <td rowspan="2 " style="width:15%; word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:16px; height: 85px; background-color: #F7A825; border:none;">도시형생활주택</button>
	                            </td>
	                            <td rowspan="2 " style="width:15%; word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:16px; height: 85px; background-color: #EB8770; border:none;">민간임대</button>
	                            </td>
	                            <td rowspan="2 " style="width:15%; word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:16px; height: 85px; background-color: #E3A9C2; border:none;">공공지원민간임대</button>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td style="word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:15px; background-color: #6B7CB4; border:none;">특별공급</button>
	                            </td>
	                            <td style="word-break:break-all;">
	                                <button type="button" onclick="location.href='${path}/realEstate/calendar?type=a'" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:15px; background-color: #E378A6; border:none;">1순위</button>
	                            </td>
	                            <td style="word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:15px; background-color: #809BCA; border:none;">2순위</button>
	                            </td>
	                            <td style="word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:15px; background-color: #B7C089; border:none;">무순위</button>
	                            </td>
	                            <td style="word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:15px; background-color: #467EB7; border:none;">취소후재공급</button>
	                            </td>
	                            <!-- <td style="word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:15px; background-color: #BEABCC; border:none;">특별공급</button>
	                            </td>
	                            <td style="word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:15px; background-color: #EB8770; border:none;">1순위</button>
	                            </td>
	                            <td style="word-break:break-all;">
	                                <button type="button" class="btn btn-primary btn-cate mice" style="width: 100%; font-size:15px; background-color: #809BCA; border:none;">2순위</button>
	                            </td> -->
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

