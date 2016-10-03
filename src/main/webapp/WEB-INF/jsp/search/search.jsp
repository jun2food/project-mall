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
	#inputSPage {
	width: 1025px;
	margin: auto;
}

#inputSPage > div {
	vertical-align: top;
	width: 255px;
	height: 450px;
/* 	float: left; */
	display: inline-block;
	text-align: center;
/* 	margin: auto; */
}
</style>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	<div class="container">
		<!-- 코드시작 -->
		<div ><h2>상품검색</h2></div>
		
		<div id=searchBox>t                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
			<div id=search>
				<div>
				상품분류
					<select id="pCate">
						<option value="1-0">아우터</option>
						<option value="1-11">아우터 > 코트</option>
						<option value="1-12">아우터 > 재킷</option>
						<option value="1-13">아우터 > 카디건</option>
						<option value="2-0">상의</option>
						<option value="2-11">상의 > 니트</option>
						<option value="2-12">상의 > 티셔츠</option>
						<option value="2-13">상의 > 셔츠</option>
						<option value="3-0">하의</option>
						<option value="3-11">하의 > 슬랙스</option>
						<option value="3-12">하의 > 캐주얼팬츠</option>
						<option value="4-0">신발</option>
						<option value="4-11">신발 > 스니커즈</option>
						<option value="4-12">신발 > 레이스업 슈즈</option>
					</select>
				</div>
				<div>
					상품명
					<input id="searchName1" type="text" name="searchName1"/>
				</div>
				<div>
					판매 가격대
					<input id="price1" type="text" name="price1">~
					<input id="price2" type="text" name="price2">
				</div>
				<input type="submit" id="searchBtn">검색</input>
			</div>
		</div>
		<div id="inputSPage"></div>
		
		<!-- 코드 종료 -->
		<footer>
			<%@ include file="../include/bottom.jsp"%>
		</footer>
	</div>
	<script>
		$("#searchBtn").on("click",function(){
			var pCategory1;
			var pCategory2;
			var pCateArr = $("#pCate option:selected").val().split("-");
			
			console.log("씨발"+pCateArr[0]+"/"+pCateArr);
			pCategory1=pCateArr[0];
			console.log("pCategory1"+pCategory1);
			if(pCateArr[1]== "0"){
				console.log("씨부랄 0일때")
				pCategory2="";
			}else{
				pCategory2=pCateArr[1]
			} 
			var pName = $("#searchName1").val();
			var price1 = $("#price1").val();
			var price2 = $("#price2").val();
			
			console.log("드렁왔니0")
			$.ajax({
				url : "searchPage.json",
				data : {
					"pName" : pName,
					"price1" : price1,
					"price2" : price2,
					"pCategory1": pCategory1,
					"pCategory2": pCategory2
				},
				dataType : "json"
				
			})
			.done(makeSearchPage);
		});
		
		// 화면에 결과값 뿌려주는 부분
		function makeSearchPage(result) {
			console.log("result 값" + result)
			var html = "";
			var pCount = 0;
			
			for (var i = 0; i < result.length; i++) {
			console.log("드렁왔니2")
				pCount++;
				var search = result[i];
				if (pCount % 5 == 0) {
// 					$("#product" + product.pNo).css("clear", "both");
				html+= "<br>"
					
				}
				html += "<div id='search" + search.pNo + "'>";
<<<<<<< HEAD
				html += "<a href='${pageContext.request.contextPath}/detail/detailList.do?pNo="+search.pNo+"'>";
=======

>>>>>>> d4e1ef708a6df85f351e9bfd110722808d15b6fe
				html += "<img width=248px height=309px  src = '${pageContext.request.contextPath}/down?path="
						+ search.pPath
						+ "&realName="
						+ search.pReal
						+ "&draw=Y'>"
				html += "<div>" + search.pName + "</div>";
				html += "<div>" + search.pPrice + "</div>";
<<<<<<< HEAD
				html += "</a>";
=======
>>>>>>> d4e1ef708a6df85f351e9bfd110722808d15b6fe
				html += "</div>";
			}
			console.log(2)
			if (result.length == 0) {
			console.log(3)
				html += "<div>게시물이 존재하지 않습니다.</div>";
			}
			console.log(4)
			$("#inputSPage").html(html);
		}
		
		
	</script>
</body>
</html>