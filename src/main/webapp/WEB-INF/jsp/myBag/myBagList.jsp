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
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	<div class="container">
		<!-- 코드시작 -->
		(아이콘)장바구니
		<hr>
		<div class="row">
			<div class="col-md-12">
			진행 이미지 산입 
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" >
					<thead>
						<tr>
							<td><input type="checkbox" name=""/></td><td>이미지</td><td>상품정보</td><td>판매가</td><td>수량</td><td>적립금</td><td>배송구분</td><td>배송비</td><td>합계</td><td>선택</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>체크박스</td><td>이미지</td><td>상품정보</td><td>판매가</td><td>수량</td><td>적립금</td><td>배송구분</td><td>배송비</td><td>합계</td><td>선택</td>
						</tr>
						<tr>
							<td>체크박스</td><td>이미지</td><td>상품정보</td><td>판매가</td><td>수량</td><td>적립금</td><td>배송구분</td><td>배송비</td><td>합계</td><td>선택</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">[기본배송]</td><td colspan="7">상품구매금액<span id="product_price">1</span>+배송비<span id="delivery">1</span>=합계:</td><td><span id="sum_price">0</span></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
		<!-- 코드 종료 -->
		<footer>
			<%@ include file="../include/bottom.jsp"%>
		</footer>
	</div>
</body>
</html>