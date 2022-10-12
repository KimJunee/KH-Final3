<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<html>
<body>
    <footer class="bg-dark pt-3 ">
        <div class="container ">
            <!-- About and Newsletter START -->
            <div class="row pt-3 pb-1 ">
                <div class="col-md-3 ">
                    <img src="${path}/resources/resources1b/images/01_main/logo_white.png " alt="footer logo ">
                </div>
                <div class="col-md-5 ">
                    <p class="text-muted ">그 누구보다도 정치경제소식에 신속하게 닿을 수 있는 곳. <br> FinTouch는 늘 고급 정보를 여러분께 전달하기 위해 노력합니다.</p>
                </div>
                <div class="col-md-4 ">
                    <!-- Form -->
                    <form class="row row-cols-lg-auto g-2 align-items-center justify-content-end ">
                        <div class="col-12 ">
                            <input type="email " class="form-control " placeholder="Enter your email address ">
                        </div>
                        <div class="col-12 ">
                            <button type="submit " class="btn btn-primary m-0 ">Subscribe</button>
                        </div>

                    </form>
                </div>
            </div>
            <!-- Divider -->
            <hr>
            <!-- Widgets START -->
            <div class="row pt-1 ">
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-white ">Recent post</h5>
                    <!-- Item -->
                    <div class="mb-4 position-relative ">
                        <div>
                            <a href="# " class="badge text-bg-danger mb-2 ">
                                <i class="fas fa-circle me-2 small fw-bold "></i>Finance</a>
                        </div>
                        <a href="post-single-3.html " class="btn-link text-white fw-normal ">10조로 커진 액티브 ETF…금리연동·채권형 대세로</a>
                        <div>
                        </div>
                        <!-- <a href="post-single-3.html " class="btn-link text-white fw-normal ">지속가능한 부동산 산업의 미래</a> -->
                    </div>
                </div>
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-white ">Sponsor</h5>
                    <div class="row ">
                        <div class="col-6 ">
                            <ul class="nav flex-column text-primary-hover ">
                                <li class="nav-item "><a class="nav-link " href="# ">대한민국 국회</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독원</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독위원회 </a></li>
                                <!-- <li class="nav-item "><a class="nav-link " href="# ">한국예탁결제원</a></li> -->
                            </ul>
                        </div>
                        <div class="col-6 ">
                            <ul class="nav flex-column text-primary-hover ">
                                <li class="nav-item "><a class="nav-link " href="# ">기획재정부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">국토교통부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">주택도시기금</a></li>
                                <!-- <li class="nav-item "><a class="nav-link " href="# ">매일경제</a></li> -->
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-white ">Get Regular Updates</h5>
                    <ul class="nav flex-column text-primary-hover ">
                        <li class="nav-item "><a class="nav-link pt-0 " href="# "><i class="fab fa-whatsapp fa-fw me-2 "></i>WhatsApp</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="fab fa-youtube fa-fw me-2 "></i>YouTube</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="far fa-bell fa-fw me-2 "></i>Website Notifications</a></li>
                    </ul>
                </div>

                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-white ">Our Mobile App</h5>
                    <p class="text-muted ">FinTouch의 앱을 다운로드하여 최신 속보를 가장 빠르게 확인해보세요! </p>
                    <div class="row g-2 ">
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="${path}/resources/resources1b/images/01_main/app-store.svg " alt="app-store "></a>
                        </div>
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="${path}/resources/resources1b/images/01_main/google-play.svg " alt="google-play "></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Widgets END -->
    </footer>
    <!-- =======================푸터 끝 =======================-->


    <!-- Back to top -->
    <div class="back-top "><i class="bi bi-arrow-up-short "></i></div>

    <!-- =======================
JS libraries, plugins and custom scripts -->

    <!--그래프 관련1 -지수- - 그래프 관련script 순서 맞춘겁니다 이 위치에 두세요 절대 건들지마세요- -->
    <script src="assets/vendor/apexcharts/js/apexcharts.min.js "></script>

    <!-- 그래프 관련2 -지수- - 그래프 관련script 순서 맞춘겁니다 이 위치에 두세요 절대 건들지마세요- -->
    <script src="https://apexcharts.com/samples/assets/stock-prices.js "></script>

    <!-- Bootstrap JS -->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js "></script>

    <!-- Vendors -->
    <script src="assets/vendor/tiny-slider/tiny-slider.js "></script>
    <script src="assets/vendor/sticky-js/sticky.min.js "></script>
    <script src="assets/vendor/glightbox/js/glightbox.js "></script>
    <script src="assets/vendor/plyr/plyr.js "></script>

    <!-- Template Functions -->
    <script src="assets/js/functions.js "></script>

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.4.1.js "></script>

    <!--그래프 관련3 - 그래프 관련script 순서 맞춘겁니다 이 위치에 두세요 절대 건들지마세요- -->
    <script src="assets/js/demo.apex-area.js "></script>
    <script src="assets/js/demo.apex-area2.js "></script>
    <script src="assets/js/demo.apex-area3.js "></script>
    <script src="assets/js/demo.apex-area4.js "></script>
    <script src="assets/js/demo.crm-dashboard.js "></script>
    <script src="assets/js/vendor.min.js "></script>

    <!-- 그래프 관련4 - 그래프 관련script 순서 맞춘겁니다 이 위치에 두세요 절대 건들지마세요- -->
    <script src="https://apexcharts.com/samples/assets/series1000.js "></script>
    <script src="https://apexcharts.com/samples/assets/github-data.js "></script>
    <script src="https://apexcharts.com/samples/assets/irregular-data-series.js "></script>

</body>

</html>