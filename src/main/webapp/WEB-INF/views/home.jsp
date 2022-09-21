<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>    
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	헬로리방구리!!
</h1>

<h2><a href="${path}/financialterm/insert.do">금융용어 DB INSERT</a></h2>

<h2><a href="${path}/stockprice/insert.do">주식시세 DB INSERT</a></h2>

<h2><a href="${path}/indexprice/insert1">코스피 지수시세 DB INSERT</a></h2>

<h2><a href="${path}/indexprice/insert2">코스닥 지수시세 DB INSERT</a></h2>

<h2><a href="${path}/ExchangeRate/insert.do">환율정보 DB INSERT</a></h2>

<h2><a href="${path}/fixdeposit/insert.do">금융감독원-정기예금API DB INSERT</a></h2>

<h2><a href="${path}/installmentSavings/insert.do">금융감독원-적금API DB INSERT</a></h2>

<h2><a href="${path}/leaseloan/insert.do">금융감독원-전세자금대출API DB INSERT</a></h2>

<h2><a href="${path}/creditloan/insert.do">금융감독원-개인신용대출API DB INSERT</a></h2>

<h2><a href="${path}/publicService/insert.do">공공 서비스 API DB INSERT</a></h2>

<h2><a href="${path}/landterm/insert.do">부동산용어 DB INSERT</a></h2>

<h2><a href="${path}/UrbtyOfctlLttotPblancDetail/insert.do">청약 도시형/오피스텔/민간임대 DB INSERT</a></h2>


<iframe id="ytplayer" type="text/html" width="720" height="405"
src="https://www.youtube.com/embed/qZVTkn2NjS0/default"
frameborder="0" allowfullscreen></iframe>

<br><br><br>

</body>
</html>
