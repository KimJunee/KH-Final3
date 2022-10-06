<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>   

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>FinTouch | Sign In</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- Theme mode-->
    <script>
        let mode = window.localStorage.getItem('mode'),
            root = document.getElementsByTagName('html')[0];
        if (mode !== undefined && mode === 'dark') {
            root.classList.add('dark-mode');
        } else {
            root.classList.remove('dark-mode');
        }
    </script>

    <!-- Import Google Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="resources/resources2a/assets/css/theme.min.css">
</head>
<!-- Body-->

<body>
    <!-- Page wrapper-->
    <main class="page-wrapper">
        <!-- Page content-->
        <div class="d-lg-flex position-relative h-100">
            <!-- Home button--><a class="text-nav btn btn-icon bg-light border rounded-circle position-absolute top-0 end-0 p-0 mt-3 me-3 mt-sm-4 me-sm-4" href="index.html" data-bs-toggle="tooltip" data-bs-placement="left" title="Back to home"><i class="ai-home"></i></a>
            <!-- Sign in form-->
            <div class="d-flex flex-column align-items-center w-lg-50 h-100 px-3 px-lg-5 pt-5">
                <div class="w-100 mt-auto" style="max-width: 526px; font-family: 'MICEGothic Bold';">
                    <h1>Sign in</h1>
                    <p class="pb-3 mb-3 mb-lg-4">아직 계정이 없으세요?&nbsp;&nbsp;<a href='account-signup.html'>회원가입 하러가기</a></p>
                    <form class="needs-validation" novalidate>
                        <!-- ID -->
                        <div class="pb-3 mb-3">
                            <div class="position-relative"><i class="ai-mail fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                                <input class="form-control form-control-lg ps-5" type="text" placeholder="ID" required>
                            </div>
                        </div>
                        <!-- 비밀번호 -->
                        <div class="mb-4">
                            <div class="position-relative"><i class="ai-lock-closed fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                                <div class="password-toggle">
                                    <input class="form-control form-control-lg ps-5" type="password" placeholder="Password" required>
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                        <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <!-- 아이디 저장 -->
                        <div class="d-flex flex-wrap align-items-center justify-content-between pb-4">
                            <form-check class="my-1">
                                <input class="form-check-input" type="checkbox" id="keep-signedin">
                                <label class="form-check-label ms-1" for="keep-signedin">아이디 저장</label>
                            </form-check><a class="fs-sm fw-semibold text-decoration-none my-1" href="account-password-recovery.html">비밀번호를 잊었어요.</a>
                        </div>
                        <!-- 회원가입 버튼 -->
                        <button class="btn btn-lg btn-primary w-100 mb-2" type="submit">Sign up</button>
                        <h2 class="h6 text-center pt-3 pt-lg-4 mb-4">Or sign in with your social account</h2>
                        <div class="row row-cols-1 row-cols-sm-2 gy-3">
                            <button class="btn btn-lg btn-kakao w-100" style="background-color: #FEE500; border-color: #FEE500; border-radius: 12px;" type="submit" id="kakaologin"><img src="resources/resources2a/assets/img/account/kakao_logo01.png" width: 50%; height: 50%;>&nbsp Login with Kakao</button>
                        </div>
                    </form>
                </div>
                <!-- Copyright-->
                <p class="w-100 fs-sm pt-5 mt-auto mb-5" style="max-width: 526px;"><span class="text-muted"></span>
                    <a class="nav-link d-inline-block p-0 ms-1" href="https://createx.studio/" target="_blank" rel="noopener"></a>
                </p>
            </div>
            <!-- Cover image-->
            <div class="w-50 bg-size-cover bg-repeat-0 bg-position-center" style="background-image: url(resources/resources2a/assets/img/account/login02.png);"></div>
        </div>
    </main>
    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="resources/resources2a/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/resources2a/assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="resources/resources2a/assets/js/theme.min.js"></script>
</body>

</html>