<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main>
        <section class="overflow-hidden">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 text-center mx-auto my-0 my-md-5 py-0 py-lg-5 position-relative z-index-9">
                        <!-- SVG shape START -->
                        <figure class="position-absolute top-50 start-50 translate-middle opacity-7 z-index-n9">
                            <svg width="650" height="379" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 510 297">
					            <g>
					            <path class="fill-primary opacity-1" d="M121,147.4c0,6-4.8,10.8-10.8,10.8H47.6c-6,0-10.8-4.8-10.8-10.8v-11.5c0-6,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V147.4z"/>
					            <path class="fill-primary opacity-1" d="M179.4,90.2c0,6-4.8,10.8-10.8,10.8h-62.6c-6,0-10.8-4.8-10.8-10.8V78.7c0-6,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V90.2z"/>
					            <path class="fill-primary opacity-1" d="M459.1,26.3c0,6-4.8,10.8-10.8,10.8h-62.6c-6,0-10.8-4.8-10.8-10.8V14.8c0-6,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V26.3z"/>
					            <path class="fill-primary opacity-1" d="M422.1,66.9c0,6-4.8,10.8-10.8,10.8h-62.6c-6,0-10.8-4.8-10.8-10.8V55.3c0-6,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V66.9z"/>
					            <path class="fill-primary opacity-1" d="M275.8,282.6c0,5.9-4.8,10.8-10.8,10.8h-62.6c-6,0-10.8-4.8-10.8-10.8v-11.5c0-6,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V282.6z"/>
					            <path class="fill-primary opacity-1" d="M87.7,42.9c0,5.9-4.8,10.8-10.8,10.8H14.3c-6,0-10.8-4.8-10.8-10.8V31.4c0-6,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V42.9z"/>
					            <path class="fill-primary opacity-1" d="M505.9,123.4c0,6-4.8,10.8-10.8,10.8h-62.6c-6,0-10.8-4.8-10.8-10.8v-11.5c0-6,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V123.4z"/>
					            <path class="fill-primary opacity-1" d="M482.5,204.9c0,5.9-4.8,10.8-10.8,10.8h-62.6c-6,0-10.8-4.8-10.8-10.8v-11.5c0-6,4.8-10.8,10.8-10.8h62.6c5.9,0,10.8,4.8,10.8,10.8V204.9z"/>
					            <path class="fill-primary opacity-1" d="M408.3,258.8c0,5.9-4.8,10.8-10.8,10.8H335c-6,0-10.8-4.8-10.8-10.8v-11.5c0-6,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V258.8z"/>
					            <path class="fill-primary opacity-1" d="M147,252.5c0,5.9-4.8,10.8-10.8,10.8H73.6c-6,0-10.8-4.8-10.8-10.8V241c0-5.9,4.8-10.8,10.8-10.8h62.6c6,0,10.8,4.8,10.8,10.8V252.5z"/>
					            </g>
				           </svg>
                        </figure>
                        <!-- SVG shape START -->
                        <!-- Content -->
                        <h1 class="display-1 text-primary">404</h1>
                        <h2>Page Not Found!</h2>
                        <p>문제가 발생했거나 이 페이지가 더 이상 존재하지 않습니다. 이럴수가!</p>
                        <a href="${path}/main.do" class="btn btn-danger-soft mt-3"><i class="fas fa-long-arrow-alt-left me-3"></i>Back to home page</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>