<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<%@include file="/WEB-INF/views/common/header.jsp" %> 
  



<head>
    <title>FinTouch | RealEstate | Detail</title>
</head>
<form  action="${path}/RealEstate/list" >

    <!-- **************** MAIN CONTENT START **************** -->

    <!-- ======================= 섹션1: 청약조회 시작 =========================-->
    <section class="position-relative overflow-hidden" style="background-image:url('${path}/resources/resources1b/images/03_realEstate/501b249c45892.jpg'); background-position: center; background-size: cover;">
        <div class="bg-overlay bg-transparent opacity-5"></div>
        <!-- SVG decoration for curve -->
        <figure class="position-absolute bottom-0 left-0 w-100 d-md-block mb-n3 z-index-9">
            <svg class="fill-white" width="100%" height="150" viewBox="0 0 500 150" preserveAspectRatio="none">
                <path d="M0,150 L0,40 Q250,150 500,40 L580,150 Z"></path>
            </svg>
        </figure>

        <div class="container z-index-9 position-relative mice">
            <div class="row py-0 align-items-center text-center text-sm-start">
                <div class="col-sm-12 all-text-white mt-md-0">
                    <div class="py-0 py-md-5 my-2 mt-0">
                        <!-- Badge with content -->
                        <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                        <!-- Title -->
                        <h1 class="text-white display-5 mice">청약조회</h1>
                        <p class="text-white" style="font-size:20px">조건에 맞는 검색으로 청약 상세 정보들을 확인해보세요</p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ======================= 섹션1 끝 =========================-->

    <!-- ======================= 섹션2: 청약 검색목록 시작 =========================-->
    <section class="py-4 mb-lg-5">
        <div class="container">
            <div class="row g-5">
                <!------------- Title ------------->
                <div class="mb-1">
                </div>
                <!------------- 검색 엔진 ------------->
                <aside class="col-xl-4 col-xxl-3 mt-0">
                    <!------------- body start ------------->
                    <div class="offcanvas-xl offcanvas-end" tabindex="-1" id="offcanvasSidebar" aria-labelledby="offcanvasSidebarLabel">
                        <div class="offcanvas-header bg-light">
                            <h5 class="offcanvas-title" id="offcanvasSidebarLabel">Advance Filter</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body flex-column p-3 p-xl-0">
                            <div class="border rounded-2">
                                <!-- Availability START -->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-3">검색 목록</h6>
                                    <!-- Availability group -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" value="전체" id="flexRadioDefault1" checked>
                                        <label class="form-check-label" for="flexRadioDefault1">전체</label>
                                    </div>
                                </div>
                                <!-- Availability END -->
                                <hr class="my-0">
                                <!-- Divider -->

                                <!------------- filter 1 START ------------->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-2">지역선택</h6>
                                    <!-- Amenities group -->
                                    <div class="col-12">
                                        <!-- Checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType1" value="전국">
                                            <label class="form-check-label" for="amenitiesType1">전국</label>
                                        </div>
                                        <!-- Checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType2" value="서울">
                                            <label class="form-check-label" for="amenitiesType2">서울</label>
                                        </div>
                                        <!-- Checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType3" value="부산">
                                            <label class="form-check-label" for="amenitiesType3">부산</label>
                                        </div>
                                        <!-- Checkbox -->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType4" value="대구">
                                            <label class="form-check-label" for="amenitiesType4">대구</label>
                                        </div>
                                        <!-- Collapse body -->
                                        <div class="multi-collapse collapse" id="amenitiesCollapes">
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType5" value="인천">
                                                <label class="form-check-label" for="amenitiesType5">인천</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType6" value="광주">
                                                <label class="form-check-label" for="amenitiesType6">광주</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType7" value="대전">
                                                <label class="form-check-label" for="amenitiesType7">대전</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType8" value="울산">
                                                <label class="form-check-label" for="amenitiesType8">울산</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType9" value="세종">
                                                <label class="form-check-label" for="amenitiesType9">세종</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType10" value="경기">
                                                <label class="form-check-label" for="amenitiesType10">경기</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType11" value="강원">
                                                <label class="form-check-label" for="amenitiesType11">강원</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType12" value="충청">
                                                <label class="form-check-label" for="amenitiesType12">충청</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType14" value="전라">
                                                <label class="form-check-label" for="amenitiesType14">전라</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType16" value="경상">
                                                <label class="form-check-label" for="amenitiesType16">경상</label>
                                            </div>
                                            <!-- Checkbox -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="locationType" id="amenitiesType17" value="제주">
                                                <label class="form-check-label" for="amenitiesType17">제주</label>
                                            </div>
                                        </div>
                                        <!-- Collapse button -->
                                        <a class="p-0 mb-0 mt-2 btn-more d-flex align-items-center collapsed" data-bs-toggle="collapse" href="#amenitiesCollapes" role="button" aria-expanded="false" aria-controls="amenitiesCollapes">
                                                See <span class="see-more ms-1">more</span><span class="see-less ms-1">less</span><i class="fas fa-angle-down ms-2"></i>
                                            </a>
                                    </div>
                                </div>
                                <!------------- filter 1 END ------------->

                                <hr class="my-0">
                                <!-- Divider -->
                                <!------------- filter 2 START ------------->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-3">주택구분</h6>

                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="houseType" id="amenitiesType20" value="APT">
                                        <label class="form-check-label" for="amenitiesType20">APT</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="houseType" id="amenitiesType21" value="도시형/오피스텔/민간임대">
                                        <label class="form-check-label" for="amenitiesType21">도시형/오피스텔/민간임대</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="houseType" id="amenitiesType22" value="무순위/잔여세대">
                                        <label class="form-check-label" for="amenitiesType22">무순위/잔여세대</label>
                                    </div>
                                </div>
                                <!------------- filter 2 END ------------->
                                <hr class="my-0">
                                <!-- Divider -->

                                <!------------- filter 3 START ------------->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-3">아파트분양종류</h6>

                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="APTsupplyType" id="amenitiesType18" value="민영">
                                        <label class="form-check-label" for="amenitiesType18">민영</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="APTsupplyType" id="amenitiesType19" value="국민">
                                        <label class="form-check-label" for="amenitiesType19">국민</label>
                                    </div>
                                </div>
                                <!------------- filter 3 END ------------->

                                <hr class="my-0">
                                <!-- Divider -->

                                <!------------- filter 4 START ------------->
                                <div class="card card-body">
                                    <!-- Title -->
                                    <h6 class="mb-3">청약일정</h6>

                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenitiesType23" name="scheType" value="분양중">
                                        <label class="form-check-label" for="amenitiesType23">분양중</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenitiesType24" name="scheType" value="분양예정">
                                        <label class="form-check-label" for="amenitiesType24">분양예정</label>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenitiesType25" name="scheType" value="분양완료">
                                        <label class="form-check-label" for="amenitiesType25">분양완료</label>
                                    </div>
                                </div>
                                <!------------- filter 4 END ------------->

                                <hr class="my-0">
                                <!-- Divider -->

                                <!-- Form End -->
                        <!-- Buttons -->
                        <div class="d-flex justify-content-between p-2 p-xl-0 mt-xl-3">
                            <button onclick="deselect()" type="button" class="btn btn-link p-0 mb-0">초기화</button>
                            <button class="btn btn-primary mb-0" type="submit">검색</button>
                            <script>
                                function deselect() {
                                    $('.form-check-input').prop('checked', false);
                                }
                            </script>
                        </div>
                </div><!-- </form> -->
                        </div>
                    </div>
                    <!-- Responsive offcanvas body END -->
                </aside>
                <!------------- 검색 엔진 END ------------->

                <!------------- Main part START ------------->
                <div class="col-xl-9 mt-0">
                    <h2 class="m-0 mice">청약 전체보기</h2>
                    <!-- Product START -->
                    <div class="row g-4 pt-3">
                        <!-- 공지사항 START -->
                        <div class="col-12 ">
                            <!-- Blog list table START -->
                            <!-- Card header END -->
                            <!-- Card body START -->
                            <div class="card-body mb-5">
                                <!-- Search filter START -->
                                <div class="row g-2 g-xl-4 mb-4">
                                	<!-- Select -->
                                    <div class="col-md-4 col-xl-4">
                                        <select id="searchType" name ="searchType" class="form-select" aria-label="Default select example">
                                            <option selected disabled>검색필터</option>
                                            <option value="content" <c:if test="${param.searchType == 'content'}"> selected </c:if>>주택명</option>
                                            <option value="localName" <c:if test="${param.searchType == 'localName'}"> selected </c:if>>지역명</option>
                                        </select>
                                    </div>
                                    <!-- Search -->
                                    <div class="col-xl-8">
                                        <div class="rounded position-relative">
                                            <input class="form-control pe-5" type="text" id="searchValue" name="searchValue" value="${param.searchValue}" placeholder="검색어를 입력하세요!" aria-label="Search">
                                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="bi bi-search fs-5"> </i></button>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-xl-3 d-grid d-xl-none">
                                        <!-- Filter offcanvas button -->
                                        <button class="btn btn-primary-soft btn-primary-check mb-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
                                            <i class="fas fa-sliders-h me-1"></i> Show filter
                                        </button>
                                    </div>
                                </div>
                                <!-- Search filter END -->
                                <!-- Blog list table START -->
                                <div class="table-responsive border-0 ">
                                    <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                        <!-- Table head -->
                                        <!-- 테이블 너비 지정 -->
                                        <colgroup>
                                        	<col width="10%">
                                        	<col width="10%">
                                        	<col width="45%">
                                        	<col width="20%">
                                        	<col width="15%">
                                        </colgroup>
                                        <thead class="table-dark text-center">
                                            <tr>
                                                <th scope="col" class="border-0 rounded-start">번호</th>
                                                <th scope="col" class="border-0">지역</th>
                                                <th scope="col" class="border-0">주택명</th>
                                                <th scope="col" class="border-0">주택구분</th>
                                                <th scope="col" class="border-0 rounded-end">모집공고일</th>
                                            </tr>
                                        </thead>
                                        <!------------- 청약 전체보기 list ------------->
                                        <tbody class="border-top-0 text-center">
                                        
                                        <c:if test="${empty reallist}">
											<tr>
												<td colspan="6">조회된 글이 없습니다.</td>
											</tr>
										</c:if>
										<c:if test="${!empty reallist}">
											<c:forEach var="RealEstateList" items="${reallist}" varStatus="status">
												<tr>
													<td>
														${status.count + (pageInfo.currentPage - 1) * 20}
													</td>
													<td>
														<c:out value="${RealEstateList.subscrpt_area_code_nm}"/>
													</td>
													<td>
														<a href="${path}/RealEstate/detail?type=${RealEstateList.type}&no=${RealEstateList.house_manage_no}" style="color:black"><c:out value="${RealEstateList.house_nm}"/></a>
													</td>
													<td>
														<c:out value="${RealEstateList.house_secd_nm}"/>
													</td>
													<td>
														<c:out value="${RealEstateList.rcrit_pblanc_de}"/>
													</td>
												</tr>
											</c:forEach>
										</c:if>
                                        </tbody>
                                        <!------------- 청약 전체보기 list END ------------->
                                    </table>
                                </div>
                                <!-- Blog list table END -->

                                <!-- Pagination START -->
                                <div class="justify-content-between align-items-center mt-3 mt-sm-3 ">
                                    <!-- Content -->

                                    <!-- 페이지넘버 시작 -->
                                    <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                                            <li class="page-item">
                                                <a class="page-link" onclick="movePage('${path}/RealEstate/list?page=${pageInfo.prevPage}');">Prev</a>
                                            </li>
                                            
                                            
                                            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                            	<c:if test="${pageInfo.currentPage == status.current}">
		                                            <li class="page-item active">
		                                            	<a class="page-link">${status.current}</a>
		                                            </li>                                    		
                                            	</c:if>
                                            	
                                            	<c:if test="${pageInfo.currentPage != status.current}">
		                                            <li class="page-item">
		                                            	<a class="page-link" onclick="movePage('${path}/RealEstate/list?page=${status.current}');">
			                                            	${status.current}
		                                            	</a>
		                                            </li>                                            	
                                            	</c:if>                                         
                                            </c:forEach>
                                            
                                            <li class="page-item">
                                                <a class="page-link" onclick="movePage('${path}/RealEstate/list?page=${pageInfo.nextPage}');">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                    <!-- 페이지넘버 끝 -->
                                </div>
                                <!-- Pagination END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ======================= 섹션2: 청약 검색목록 끝 =========================-->
    <!-- **************** MAIN CONTENT END **************** -->

<script type="text/javascript">
            function movePage(pageUrl){
                var searchValue = document.getElementById("searchValue");
                var searchTypes = document.getElementById("searchType");
                var searchTypeValue = searchTypes.options[searchTypes.selectedIndex].value;
					pageUrl = pageUrl + '&searchValue=' + searchValue.value + '&searchType=' + searchTypeValue; 
        		
                // 자바스크립트 location.href 로 페이지 이동 방법
            	//  location.href = "이동할 페이지 주소";
                location.href = encodeURI(pageUrl);
            }
</script>


    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </form>
    </body>

</html>