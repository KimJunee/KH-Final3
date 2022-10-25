<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<style>
    /* 카드컷 아이콘 내용 
    @font-face {
         
        src: url("resources/resources1b/vendor/font-awesome/webfonts/finder-icons.ttf?7648j3") format("truetype"), url("resources/resources1b/vendor/font-awesome/webfonts/finder-icons.woff?7648j3") format("woff"), url("resources/resources1b/vendor/font-awesome/webfonts/finder-icons.svg?7648j3#finder-icons") format("svg");
        font-weight: normal;
        font-style: normal;
        font-display: block;
    }*/  
    
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
    <title>FinTouch | Politics | CardCutDetail</title>
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
		                    <h1>${cardCut.title}</h1>
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
                            </div>
                        </div>
		                    <div class="row">
		                        <p><span class="h5">${cardCut.descriptionOrigin}</span></p>
		                    </div>
		                    <!-- Divider -->
		                    <hr>
		
		                    <!-- 댓글 START -->
		                
		                     <!-- 댓글 시작 -->
                        <div class="border-bottom border-top border-2 mb-3 pt-3" style="color:#a1a1a8">
		                        <h3>${fn:length(cardCut.replyCnt)} comments</h3>
                        		<c:forEach var="cCreply" items="${cCreply}" varStatus="status">
                        			<c:choose>
	                        			<c:when test="${!status.last}">
	                            		<div class="my-4 d-flex border-bottom border-1 mb-1 reply" id="cCreply${cCreply.c_reply_no}" style="color:#a1a1a8">
	                           			 </c:when>
	                            	<c:otherwise>
	                            		<div class="my-4 d-flex reply" id="cCreply${cCreply.c_reply_no}">
	                            	</c:otherwise>
                           			 </c:choose>
                                <img class="avatar avatar-md rounded-circle float-start me-3" src="${path}/resources/resources1b/images/avatar_w3.png" alt="avatar">
                        		<div style="width: 100%;">
                                <div style="flex-container: space-between;">
                                    <div class="mb-2" style="display:inline-block">
                                        <h6 class="m-0 mice">${cCreply.c_reply_writer_nickName}</h6>
                                        <span class="me-3 small"><fmt:formatDate type="both" value="${cCreply.reply_register}"/></span>
                                    </div>
                                    <c:if test="${not empty loginMember && (loginMember.user_id == cCreply.c_reply_writer_id)}">
	                                    <div style="display: inline-block; flex-container: space-between; float: right;">
		                                    <button id="reply_edit${cCreply.c_reply_no}" onclick="editReply(${cCreply.c_reply_no})" class="btn btn-outline-primary mb-0" style="font-size:13px; padding:3px 5px">수정</button>
		                                    <button style="display:none;font-size:13px; padding:3px 5px" class="btn btn-outline-primary mb-0" id="do_reply_edit${cCreply.c_reply_no}" onclick="doEditReply(${cCreply.c_reply_no})">저장</button>
		                                    <button style="display:none;font-size:13px; padding:3px 5px" class="btn btn-outline-primary mb-0" id="cancel_reply_edit${cCreply.c_reply_no}" onclick="cancelEditReply(${cCreply.c_reply_no})">취소</button>
		                                    <button id="delete_reply_btn${cCreply.c_reply_no}" onclick="deleteReply(${cCreply.c_reply_no})" class="btn btn-outline-primary mb-0" style="font-size:13px; padding:3px 5px">삭제</button>
	                                    </div>
                                    </c:if>
                                    <div class="mb-2" style="color:#191a1f">
                                        <p id="reply_content${cCreply.c_reply_no}">${cCreply.c_reply_content}</p>
                                        <textarea class="form-control" style="display:none; resize: none;" id="edit_cCreply_content${cCreply.c_reply_no}">${cCreply.c_reply_content}</textarea>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        </div>
                        <!-- 댓글 끝 -->
                        <!-- 댓글 작성 시작 -->
                        <div>
                         <c:if test="${loginMember != null}"> 
                            <h3 class="mice">Leave a reply</h3>
                            <form class="row g-3 mt-1" action="${path}/cCreply" method="post">
                            	<input type="hidden" name="cardCutNo" value="${cardCut.cardCutNo}"/> 
    							<input type="hidden" name="c_writer_no" value="${loginMember.user_no}"/> 
                                <div class="col-12">
                                    <textarea name="c_reply_content" class="form-control" rows="3" style="resize: none; border-radius: 5px;"></textarea>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary" id="btn-insert">Post comment</button>
                                </div>
                            </form>
                            </c:if>
                        </div>
                        <!-- 댓글 작성 끝 -->
                        
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
		    <script>
			// 댓글 삭제
	$(document).on("click", ".delete_c_reply_btn", function(e){
		e.preventDefault();
		let c_reply_no = $(this).attr("href");
		
		$.ajax({
			data : {
				c_reply_no : c_reply_no,
				c_board_no : "${cardcut.cardCutNo}"
			},
			url : "/cCreplydel",
			type : "POST",
			success : function(result){
				alert("댓글이 삭제되었습니다.");
			}
		});
	});
	
	function editReply(idx){
		console.log(idx);
		$("#cCreply_content"+idx).hide();
		$("#edit_cCreply_content"+idx).show();
		
		$("#cCreply_edit"+idx).hide();
		$("#do_cCreply_edit"+idx).show();
		$("#cancel_cCreply_edit"+idx).show();
	}
	
	function cancelEditReply(idx){
		console.log("cancel Edit Reply");
		
		$("#edit_reply_content"+idx).val($("#reply_content"+idx).text()); //내용 원복
		
		$("#reply_content"+idx).show();
		$("#edit_reply_content"+idx).hide();
		
		$("#reply_edit"+idx).show();
		$("#do_reply_edit"+idx).hide();
		$("#cancel_reply_edit"+idx).hide();
	}
	
	function doEditReply(idx){
		$.ajax({
			data : JSON.stringify({
				reply_no : idx,
				board_no : "${cardcut.cardCutNo}",
				reply_content:$("#edit_reply_content"+idx).val()
			}),
			url : "/realfinal/board/replyedit",
			type : "POST",
			contentType: 'application/json',
			success : function(result){
				alert("댓글이 수정되었습니다.");
				
				$("#reply_content"+idx).text($("#edit_reply_content"+idx).val());
				
				$("#reply_content"+idx).show();
				$("#edit_reply_content"+idx).hide();
				
				$("#reply_edit"+idx).show();
				$("#do_reply_edit"+idx).hide();
				$("#cancel_reply_edit"+idx).hide();
			}
		});
	}
	
	function deleteReply(idx){
		$.ajax({
			data : JSON.stringify({
				reply_no : idx,
				board_no : "${board.board_no}",
				reply_content:$("#edit_reply_content"+idx).val()
			}),
			url : "/realfinal/board/replydel",
			type : "POST",
			contentType: 'application/json',
			success : function(result){
				alert("댓글이 삭제되었습니다.");

				$("#reply"+idx).remove();
				
				var last_reply = $(".reply").last();
				
				last_reply.removeClass("border-bottom border-1 mb-1");
			}
		});
	}
	</script>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>
