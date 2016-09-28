<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>MR.PARK</title>
<!--  부트스트랩  -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.1.0.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/top.css"
	rel="stylesheet">
<style type="text/css">
	#searchBox {height: 284px;}
	#fieldSet {}
</style>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	<div class="container">
		<!-- 코드시작 -->
		<div ><h2>상품검색</h2></div>
		<div id=searchBox>
			<div id=search>
				<div>
				<h5>상품분류</h5>
					<select>
						<option value="">아우터</option>
						<option value="">아우터 > 코트</option>
						<option value="">아우터 > 재킷</option>
						<option value="">아우터 > 카디건</option>
						<option value="">상의</option>
						<option value="">상의 > 니트</option>
						<option value="">상의 > 티셔츠</option>
						<option value="">상의 > 셔츠</option>
						<option value="">하의</option>
						<option value="">하의 > 슬랙스</option>
						<option value="">하의 > 캐주얼팬츠</option>
						<option value="">신발</option>
						<option value="">신발 > 스니커즈</option>
						<option value="">신발 > 레이스업 슈즈</option>
					</select>
				</div>
			</div>
		</div>
		<!-- 코드 종료 -->
		<footer>
			<%@ include file="../include/bottom.jsp"%>
		</footer>
	</div>
	<script>

		
		
	</script>
</body>
</html>