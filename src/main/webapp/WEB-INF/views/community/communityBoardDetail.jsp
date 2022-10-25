<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | Community | ${board.board_title}</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/common/headerWhite.jsp" %>
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section style="background-image:url('${path}/resources/resources1b/images/avatar/fintouch/community04.png'); background-position: center; height:570px; width:99%;"></section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- Divider -->
        <div class="border-primary border-1 opacity-1"></div>
        <!-- ======================= Inner intro START -->
        <section class="pb-3 pb-lg-5" style="margin-top:-120px;">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1 class="mice">${board.board_title}</h1>
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
                                    <img class="avatar-img rounded-circle" src="${path}/resources/resources1b/images/avatar_w1.png" alt="avatar">
                                </div>
                                <h5 class=" stretched-link mt-2 mb-0 d-block">${board.user_nickName}</h5>
                            </div>
                            <hr class="d-none d-lg-block">
                            <!-- 작성일 / 조회수 / 댓글수 -->
                            <ul class="list-inline list-unstyled">
                                <li class="list-inline-item d-lg-block my-lg-2"><fmt:formatDate type="both" value="${board.board_register}"/></li>
                                <li class="list-inline-item d-lg-block my-lg-2"><i class="far fa-eye me-1"></i> ${board.board_hit} Views</li>
                                <li class="list-inline-item d-lg-block my-lg-2"><i class="bi bi-chat-left-quote-fill me-1"></i> ${fn:length(replyList)} Commenets</li>
                            </ul>
                            <!-- 작성자가 본인일 때 수정 삭제 버튼 보이기 -->
                            <c:if test="${not empty loginMember && (loginMember.user_id == board.writer_id)}">
	                            <hr class="d-none d-lg-block">
	                            <div class="d-flex gap-2 mt-1" style="justify-content: center;">
	                                <a href="${path}/board/update?no=${board.board_no}" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit" style="margin-right: 7px;"><i class="bi bi-pencil-square"></i></a>
	                                <a href="${path}/board/delete?boardNo=${board.board_no}" id="delete_reply_btn" class="btn btn-light btn-round mb-0 delete_reply_btn" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
	                            </div>
                            </c:if>
                        </div>
                    </div>
                    <!-- 왼쪽 사이드바 끝 -->
                    <!-- 메인 컨텐츠 시작 -->
                    <div class="col-lg-7 mb-5">
                        <p>${board.board_content}</p>
                        <!-- 첨부파일 -->
                        <c:if test="${!empty board.board_renamedFileName}">
                        <figure class="figure mt-2">
	                        <a href="<c:out value="/filepath/${board.board_renamedFileName}"/>" data-glightbox="" data-gallery="image-popup">
	                            <img id="preview" class="rounded" src="<c:out value="/filepath/${board.board_renamedFileName}"/>" alt=""/>
                            </a>
                            <figcaption class="figure-caption text-center">${board.board_originalFileName}</figcaption>
                        </figure>
                        </c:if>
                        <c:if test="${empty board.board_renamedFileName}">
                        <figure class="figure mt-2" style="display: none;">
                            <img class="rounded" src="${board.board_renamedFileName}" alt="">
                            <figcaption class="figure-caption text-center">${board.board_originalFileName}</figcaption>
                        </figure>
                        </c:if>
                        <!-- 댓글 시작 -->
                        <div class="border-bottom border-top border-2 mb-3 pt-3" style="color:#a1a1a8">
                        <h3>${fn:length(replyList)} comments</h3>
                        <c:forEach var="reply" items="${replyList}" varStatus="status">
                        	<c:choose>
	                        	<c:when test="${!status.last}">
	                            	<div class="my-4 d-flex border-bottom border-1 mb-1 reply" id="reply${reply.reply_no}" style="color:#a1a1a8">
	                            </c:when>
	                            <c:otherwise>
	                            	<div class="my-4 d-flex reply" id="reply${reply.reply_no}">
	                            </c:otherwise>
                            </c:choose>
                                <img class="avatar avatar-md rounded-circle float-start me-3" src="${path}/resources/resources1b/images/avatar_w3.png" alt="avatar">
                        		<div style="width: 100%;">
                                <div style="flex-container: space-between;">
                                    <div class="mb-2" style="display:inline-block">
                                        <h6 class="m-0 mice">${reply.reply_writer_nickName}</h6>
                                        <span class="me-3 small"><fmt:formatDate type="both" value="${reply.reply_register}"/></span>
                                    </div>
                                    <c:if test="${not empty loginMember && (loginMember.user_id == reply.reply_writer_id)}">
	                                    <div style="display: inline-block; flex-container: space-between; float: right;">
		                                    <button id="reply_edit${reply.reply_no}" onclick="editReply(${reply.reply_no})" class="btn btn-outline-primary mb-0" style="font-size:13px; padding:3px 5px">수정</button>
		                                    <button style="display:none;font-size:13px; padding:3px 5px" class="btn btn-outline-primary mb-0" id="do_reply_edit${reply.reply_no}" onclick="doEditReply(${reply.reply_no})">저장</button>
		                                    <button style="display:none;font-size:13px; padding:3px 5px" class="btn btn-outline-primary mb-0" id="cancel_reply_edit${reply.reply_no}" onclick="cancelEditReply(${reply.reply_no})">취소</button>
		                                    <button id="delete_reply_btn${reply.reply_no}" onclick="deleteReply(${reply.reply_no})" class="btn btn-outline-primary mb-0" style="font-size:13px; padding:3px 5px">삭제</button>
	                                    </div>
                                    </c:if>
                                    <div class="mb-2" style="color:#191a1f">
                                        <p id="reply_content${reply.reply_no}">${reply.reply_content}</p>
                                        <textarea class="form-control" style="display:none; resize: none;" id="edit_reply_content${reply.reply_no}">${reply.reply_content}</textarea>
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
                            <form class="row g-3 mt-1" action="${path}/board/reply" method="post">
                            	<input type="hidden" name="board_no" value="${board.board_no}"/> 
    							<input type="hidden" name="reply_writer_id" value="${loginMember.user_id}"/> 
                                <div class="col-12">
                                    <textarea name="reply_content" class="form-control" rows="3" style="resize: none; border-radius: 5px;"></textarea>
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
        <!-- ======================= Main END -->
    </main>
    
    <script>
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
				reply_no : idx,
				board_no : "${board.board_no}",
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