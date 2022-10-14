<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
    
<!DOCTYPE html>
<html lang="ko">

<style>
    /* 레이아웃분할css 시작 */
    div.left {
        width: 70%;
        float: left;
        box-sizing: border-box;
    }
    
    div.right {
        width: 28.5%;
        float: right;
        box-sizing: border-box;
    }
    /* 레이아웃분할css 끝 */
    /* 스크롤바 css 시작 */
    #scroll-bar {
        width: 200px;
        height: 400px;
        overflow: auto;
    }
    
    #scroll-bar::-webkit-scrollbar {
        width: 5px;
        /*스크롤바의 너비*/
    }
    
    #scroll-bar::-webkit-scrollbar-thumb {
        background-color: #2163E8;
        /*스크롤바의 색상*/
    }
    
    #scroll-bar::-webkit-scrollbar-track {
        background-color: #F7F8F9;
        /*스크롤바 트랙 색상*/
    }
    /* 스크롤바 css 끝 */
</style>

<head>
    <title>FinTouch | Community | Free</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/common/headerWhite.jsp" %>
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section style="background-image:url('${path}/resources/resources1b/images/avatar/fintouch/community04.png'); background-position: center; height:652px; width:99%;"></section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- ======================= 커뮤니티 메인 시작 -->
        <section class="py-4">
            <div class="container">
                <div class="row g-4" style="margin-top:-150px;">
                    <a href="#" class="badge text-bg-success" style="width: 100px; margin-left: 15px;"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                    <h1>자유 <span style="color:#0CBC87;">광장</span></h1>
                    <div class="col-12">
                        <!-- Counter START -->
                        <div class="row g-4">
                            <div class="col-12">
                                <!-- Blog list table START -->
                                <div class="card border bg-transparent rounded-3">
                                    <!-- Card body START -->
                                    <div class="card-body">
                                        <!-- Search and select START -->
                                        <div class="row g-3 align-items-center justify-content-between mb-3">
                                            <!-- Search -->
                                            <div class="col-md-8">
                                                <form class="rounded position-relative">
                                                    <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                                    <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                                </form>
                                            </div>
                                            <!-- Select option -->
                                            <div class="col-md-3">
                                                <!-- Short by filter -->
                                                <form>
                                                    <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
										                <option value="">Sort by</option>
										                <option>Free</option>
										                <option>Newest</option>
										                <option>Oldest</option>
									                </select>
                                                </form>
                                            </div>
                                        </div>
                                        <!-- Search and select END -->
                                        <!-- Blog list table START -->
                                        <div class="table-responsive border-0">
                                            <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                                <!-- Table head -->
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th scope="col" class="border-0 text-center rounded-start">No</th>
                                                        <th scope="col" class="border-0 ">Title</th>
                                                        <th scope="col" class="border-0 text-center">Writer</th>
                                                        <th scope="col" class="border-0 text-center">Posting date</th>
                                                        <th scope="col" class="border-0 text-center">Hits</th>
                                                        <th scope="col" class="border-0 text-center rounded-end">Comments</th>
                                                    </tr>
                                                </thead>
                                                <!-- Table body START -->
                                                <tbody class="border-top-0">
                                                    <!-- 글 1 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3325</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영숙 헤어졌는데</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">영숙</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 2 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3324</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">반응형말고 고정으로 해야게땅</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">제목 글자수 넘어가면 잘리게 하궁</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 3 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3323</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">■ 영광커플 지금 조용히 잘 만나고 있다는 증거 ■</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">한국의 장만옥 = 9옥순</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 4 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3322</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">샤넬백이 난리네~! 난리야~~!! 난리~~~!!!</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 5 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3321</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">나도 조섹츤은 불호지만 학벌 직업 아줌마들 망상 싸움보단 나음</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 6 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3320</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">9현숙이 영숙 올려치기</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 7 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3319</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">광수는 순자랑 얘기할때보다</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 8 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3318</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">차라리 조선시대 신분제 사회가 더 나은거 같다..</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 9 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3317</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영숙이 표정이 안좋네</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 10 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3316</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">둘이 어울리긴 한다.</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 11 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3315</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영호는 동성한테만 인기있을 타입이지</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 12 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3314</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">조섹츤엔터에서 이태원 땅 샀네 ㄷㄷㄷㄷ</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 13 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3313</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">사내에서 썸도 타고 좋을때다</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 14 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3312</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">상남자타령하면서 사랑에 자존심 질투 이런거는 치욕이냐?</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 15 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3311</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">영숙 닮은 아이돌 진짜 있음</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 16 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3310</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">손만 잡고 잘께</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 17 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3309</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">이두희 슈퍼카 보유 임금 미지급</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 18 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3308</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">정치정치조정치</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 19 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3307</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">인스타 협찬으로 돈벌이 하는애</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                    <!-- 글 20 -->
                                                    <tr>
                                                        <!-- No -->
                                                        <td class="text-center">3306</td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">아니 이 프로는 예능이에요</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">213</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>
                                                </tbody>
                                                <!-- Table body END -->
                                            </table>
                                        </div>
                                        <!-- Blog list table END -->
                                        <!-- 페이지넘버 시작 -->
                                        <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                            <ul class="pagination pagination-sm pagination-bordered mb-0">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Prev</a>
                                                </li>
                                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                <li class="page-item"><a class="page-link" href="#">6</a></li>
                                                <li class="page-item"><a class="page-link" href="#">7</a></li>
                                                <li class="page-item"><a class="page-link" href="#">8</a></li>
                                                <li class="page-item"><a class="page-link" href="#">9</a></li>
                                                <li class="page-item"><a class="page-link" href="#">10</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">Next</a>
                                                </li>
                                            </ul>
                                        </nav>
                                        <!-- 페이지넘버 끝 -->
                                    </div>
                                </div>
                                <!-- Blog list table END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>