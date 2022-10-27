<%@page import="com.kh.realfinal.member.model.vo.Member" %>
<%@page import="com.kh.realfinal.board.model.vo.Board" %>
<%@page import="com.kh.realfinal.board.model.vo.Reply" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<c:set var="postType" value="${param.postType}"/>
<c:if test="${empty postType}">
	<c:set var="postType" value="${'title'}"/>
</c:if>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | Community | Post</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${path}/resources/resources1b/vendor/quill/css/quill.snow.css">
	<script src="${path}/resources/resources4h/assets2/vendor/jquery/jquery.min.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/common/headerWhite.jsp" %>
<script src="${path}/resources/resources1b/vendor/quill/js/quill.min.js"></script>
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section style="background-image:url('${path}/resources/resources1b/images/avatar/fintouch/communityImg.png'); background-position: center; height:570px; width:99%;"></section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- ======================= Main contain START -->
        <section class="py-4">
            <div class="container">
                <div class="row pb-4" style="margin-top:-100px;">
                    <div class="col-12">
                        <!-- Title -->
                        <h1 class="mb-0 h2">Create a post</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <!-- Chart START -->
                        <div class="card border">
                            <!-- Card body -->
                            <div class="card-body">
                                <!-- Form START -->
                                <form action="${path}/board/Post" method="post" enctype="multipart/form-data">
                                    <!-- Main form -->
                                    <div class="row">
                                        <div class="col-12">
                                            <!-- 제목 -->
                                            <div class="mb-3">
                                                <label class="form-label">Post Title</label>
                                                <input required id="con-name" name="board_title" type="text" class="form-control" placeholder="제목을 입력해주세요.">
                                            </div>
                                        </div>
                                        <!-- 카테고리 선택 (게시판 구분) -->
                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label class="form-label">Categories</label>
                                                <div class="d-flex flex-wrap gap-3">
                                                    <!-- 자유 -->
                                                    <div class="flex-fill">
                                                    <c:if test="${postType == '4'}">
                                                        <input type="radio" class="btn-check" name="board_list_no" id="option4" value="4" checked>
                                                    </c:if>  
                                                    <c:if test="${postType != '4'}">
                                                        <input type="radio" class="btn-check" name="board_list_no" id="option4" value="4">
                                                    </c:if>  
                                                        <label class="btn btn-outline-success w-100" for="option4">
															<i class="bi bi-balloon fs-1"></i>
															<span class="d-block"> Free </span>
														</label>
                                                    </div>
                                                    <!-- 정치 -->
                                                    <div class="flex-fill">
                                                    <c:if test="${postType == '1'}">
                                                        <input type="radio" class="btn-check" name="board_list_no" id="option" value="1" checked>
                                                    </c:if>    
                                                    <c:if test="${postType != '1'}">
                                                        <input type="radio" class="btn-check" name="board_list_no" id="option" value="1">
                                                    </c:if>
                                                        <label class="btn btn-outline-primary w-100" for="option">
                          									<i i class="bi bi-bank2 fs-1"></i>
                          									<span class="d-block"> Politics </span>
                        								</label>
                                                    </div>
                                                    <!-- 부동산 -->
                                                    <div class="flex-fill">
                                                    <c:if test="${postType == '2'}">
                                                        <input type="radio" class="btn-check" name="board_list_no" id="option2" value="2" checked>
                                                    </c:if>
                                                    <c:if test="${postType != '2'}">
                                                        <input type="radio" class="btn-check" name="board_list_no" id="option2" value="2">
                                                    </c:if>    
                                                        <label class="btn btn-outline-warning w-100" for="option2">
															<i class="bi bi-building fs-1"></i>
															<span class="d-block"> Real Estate </span>
														</label>
                                                    </div>
                                                    <!-- 금융 -->
                                                    <div class="flex-fill">
                                                    <c:if test="${postType == '3'}">
                                                        <input type="radio" class="btn-check" name="board_list_no" id="option3" value="3" checked>
                                                    </c:if>
                                                    <c:if test="${postType != '3'}">
                                                        <input type="radio" class="btn-check" name="board_list_no" id="option3" value="3">
                                                    </c:if>
                                                        <label class="btn btn-outline-danger w-100" for="option3">
															<i class="bi bi-coin fs-1"></i>
															<span class="d-block"> Finance </span>
														</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Post type END -->
                                        <!-- Main toolbar -->
                                        <div class="col-md-12">
                                            <!-- Subject -->
                                            <div class="mb-3">
                                                <label class="form-label">Post body</label>
                                                <div class="rounded-top">
                                                	<textarea class="bg-body border" name="board_content" id="board_content" style="height: 500px; width: 100%; resize: none; border-radius: 5px;"></textarea>
                                            	</div>
                                        	</div>
                                        </div>
                                        <div class="col-12">
                                            <div class="mb-3">
                                                <!-- Image -->
                                                <div class="position-relative">
                                                    <h6 class="my-2">Upload post image here, or<a href="#!" class="text-primary"> Browse</a></h6>
                                                    <label class="w-100" style="cursor:pointer;">
														<span> 
															<input class="form-control stretched-link" type="file" name="upfile">
														</span>
													</label>
                                                </div>
                                                <p class="small mb-0 mt-2"><b>Note:</b> JPG, JPEG, PNG만 가능합니다. 600px * 450px 사이즈를 권장합니다. 큰 이미지는 썸네일/프리뷰에 맞게 4:3으로 자릅니다.</p>
                                            </div>
                                        </div>
                                        <!-- Create post button -->
                                        <div class="col-md-12 text-start">
                                            <button class="btn btn-primary w-100" type="submit" id="btn_submit">Create post</button>
                                        </div>
                                    </div>
                                </form>
                                <!-- Form END -->
                            </div>
                        </div>
                        <!-- Chart END -->
                    </div>
                </div>
            </div>
        </section>
    </main>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </body>
</html>
