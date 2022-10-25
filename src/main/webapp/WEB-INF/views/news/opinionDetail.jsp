<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<style>
    /* 카드컷 아이콘 내용*/   
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
    <title>FinTouch | Opinion | ${opinion.title}</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>

		<!-- **************** MAIN CONTENT START **************** -->
		<main>
		    <!-- ======================= Inner intro START -->
        <section class="pb-3 pb-lg-5" style="margin-top:50px;">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1 class="mice">${opinion.title}</h1>
                    </div>
                </div>
            </div>
        </section>
        <!-- ======================= Inner intro END -->
        <!-- ======================= Main START -->
        <section class="pt-0">
            <div class="container position-relative" data-sticky-container>
                <div class="row">
                    <!-- 왼쪽 사이드바 시작 -->
                    <div class="col-lg-2">
                        <div class="text-start text-lg-center mb-5" data-sticky data-margin-top="80" data-sticky-for="991">
                            <!-- 작성자 -->
                            <div class="position-relative">
                                <div class="avatar avatar-xl">
                                    <img class="avatar-img rounded-circle" src="${opinion.imageUrl}" alt="avatar">
                                </div>
                                <h5 class=" stretched-link mt-2 mb-0 d-block">${opinion.columnist}</h5>
                            </div>
                            <hr class="d-none d-lg-block">
                            <!-- 작성일 / 조회수 / 댓글수 -->
                            <ul class="list-inline list-unstyled">
                                <li class="list-inline-item d-lg-block my-lg-2"><fmt:formatDate type="both" value="${opinion.pubDate}"/></li>
                                <li class="list-inline-item d-lg-block my-lg-2"><i class="far fa-eye me-1"></i> ${opinion.hit} Views</li>
                                <li class="list-inline-item d-lg-block my-lg-2"><i class="bi bi-chat-left-quote-fill me-1"></i> ${fn:length(opinionReplyList)} Commenets</li>
                            </ul>
                        </div>
                    </div>
                    <!-- 왼쪽 사이드바 끝 -->
                    <!-- 메인 컨텐츠 시작 -->
                    <div class="col-lg-7 mb-5">
                        <p>${opinion.content}</p>
                        <!-- 댓글 시작 -->
                        <div class="border-bottom border-top border-2 mb-3 pt-3" style="color:#a1a1a8">
                        <h3>${fn:length(opinionReplyList)} comments</h3>
                        <c:forEach var="opinionReply" items="${opinionReplyList}" varStatus="status">
                        	<c:choose>
	                        	<c:when test="${!status.last}">
	                            	<div class="my-4 d-flex border-bottom border-1 mb-1 reply" id="reply${opinionReply.o_reply_no}" style="color:#a1a1a8">
	                            </c:when>
	                            <c:otherwise>
	                            	<div class="my-4 d-flex reply" id="OpinionReply${opinionReply.o_reply_no}">
	                            </c:otherwise>
                            </c:choose>
                                <img class="avatar avatar-md rounded-circle float-start me-3" src="${path}/resources/resources1b/images/avatar_w3.png" alt="avatar">
                        		<div style="width: 100%;">
                                <div style="flex-container: space-between;">
                                    <div class="mb-2" style="display:inline-block">
                                        <h6 class="m-0 mice">${opinionReply.o_reply_writer_nickName}</h6>
                                        <span class="me-3 small"><fmt:formatDate type="both" value="${opinionReply.o_reply_register}"/></span>
                                    </div>
                                    <c:if test="${not empty loginMember && (loginMember.user_id == opinionReply.o_reply_writer_id)}">
	                                    <div style="display: inline-block; flex-container: space-between; float: right;">
		                                    <button id="reply_edit${opinionReply.o_reply_no}" onclick="editReply(${opinionReply.o_reply_no})" class="btn btn-outline-primary mb-0" style="font-size:13px; padding:3px 5px">수정</button>
		                                    <button style="display:none;font-size:13px; padding:3px 5px" class="btn btn-outline-primary mb-0" id="do_reply_edit${opinionReply.o_reply_no}" onclick="doEditReply(${opinionReply.o_reply_no})">저장</button>
		                                    <button style="display:none;font-size:13px; padding:3px 5px" class="btn btn-outline-primary mb-0" id="cancel_reply_edit${opinionReply.o_reply_no}" onclick="cancelEditReply(${opinionReply.o_reply_no})">취소</button>
		                                    <button id="delete_reply_btn${opinionReply.o_reply_no}" onclick="deleteReply(${opinionReply.o_reply_no})" class="btn btn-outline-primary mb-0" style="font-size:13px; padding:3px 5px">삭제</button>
	                                    </div>
                                    </c:if>
                                    <div class="mb-2" style="color:#191a1f">
                                        <p id="reply_content${opinionReply.o_reply_no}">${opinionReply.o_reply_content}</p>
                                        <textarea class="form-control" style="display:none; resize: none;" id="edit_reply_content${opinionReply.o_reply_no}">${opinionReply.o_reply_content}</textarea>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </c:forEach>
                        </div>
                        <!-- 댓글 끝 -->
                        <!-- 댓글 작성 시작 -->
                        <div>
                            <h3 class="mice">Leave a reply</h3>
                            <form class="row g-3 mt-1" action="${path}/opinion/reply" method="post">
                            	<input type="hidden" name="opinionNo" value="${opinion.opinionNo}"/> 
    							<input type="hidden" name="o_reply_writer_id" value="${loginMember.user_id}"/> 
                                <div class="col-12">
                                    <textarea name="o_reply_content" class="form-control" rows="3" style="resize: none; border-radius: 5px;"></textarea>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary" id="btn-insert">Post comment</button>
                                </div>
                            </form>
                        </div>
                        <!-- 댓글 작성 끝 -->
                    </div>
                    <!-- Main Content END -->
                    <!-- 오른쪽 사이드바 시작 -->
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
                            <!-- 인기검색어 -->
                            <div class="row g-2 mt-5">
                                <h5>인기검색어</h5>
                                <div class="d-flex justify-content-between align-items-center bg-warning bg-opacity-15 rounded p-2 position-relative">
                                    <h6 class="m-0 text-warning">디지털 경쟁력</h6>
                                    <a href="#" class="badge bg-warning text-dark stretched-link">09</a>
                                </div>
                                <div class="d-flex justify-content-between align-items-center bg-info bg-opacity-10 rounded p-2 position-relative">
                                    <h6 class="m-0 text-info">소상공인 대출</h6>
                                    <a href="#" class="badge bg-info stretched-link">25</a>
                                </div>
                                <div class="d-flex justify-content-between align-items-center bg-danger bg-opacity-10 rounded p-2 position-relative">
                                    <h6 class="m-0 text-danger">전세피해지원센터</h6>
                                    <a href="#" class="badge bg-danger stretched-link">75</a>
                                </div>
                                <div class="d-flex justify-content-between align-items-center bg-primary bg-opacity-10 rounded p-2 position-relative">
                                    <h6 class="m-0 text-primary">세계 전기차 점유율</h6>
                                    <a href="#" class="badge bg-primary stretched-link">19</a>
                                </div>
                                <div class="d-flex justify-content-between align-items-center bg-success bg-opacity-10 rounded p-2 position-relative">
                                    <h6 class="m-0 text-success">복지멤버십</h6>
                                    <a href="#" class="badge bg-success stretched-link">35</a>
                                </div>
                            </div>
                            <!-- 실시간 커뮤니티 인기글 -->
                            <div>
                            <c:if test="${empty sideList}">
								<div class="d-flex position-relative mb-3">
									<h6>조회된 글이 없습니다.</h6>
								</div>
							</c:if>
							<c:if test="${not empty sideList}">
                                <h5 class="mt-5 mb-3">실시간<span style="color:#2163E8">커뮤니티</span>인기글</h5>
									<c:forEach var="board" items="${sideList}" varStatus="status">
	                                <div class="d-flex position-relative mb-3">
	                                    <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5">
	                                    <fmt:formatNumber type="number" pattern="##" minIntegerDigits="2" value="${board.rownum}"/></span>
	                                    <h6><a href="${path}/board/BoardDetail?board_no=${board.board_no}" class="stretched-link text-reset btn-link"><c:out value="${board.board_title}"/></a></h6>
	                                </div>
                                	</c:forEach>
                               </c:if>
                            </div>
                        </div>
                    </div>
                    <!-- 오른쪽 사이드바 끝 -->
                </div>
		        </div>
		    </section>
		</main>
		
		<script>
			//댓글 내용 작성하는 textarea 보이게 그냥 읽을수만있는거 안보이게
			function editReply(idx){
				console.log(idx);
				$("#reply_content"+idx).hide();
				$("#edit_reply_content"+idx).show();
				
				$("#reply_edit"+idx).hide();
				$("#do_reply_edit"+idx).show();
				$("#cancel_reply_edit"+idx).show();
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
						o_reply_no : idx,
						opinionNo : "${opinion.opinionNo}",
						o_reply_content:$("#edit_reply_content"+idx).val()
					}),
					url : "/realfinal/opinion/replyedit",
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
						o_reply_no : idx,
						opinionNo : "${opinion.opinionNo}",
						o_reply_content:$("#edit_reply_content"+idx).val()
					}),
					url : "/realfinal/opinion/replydel",
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
