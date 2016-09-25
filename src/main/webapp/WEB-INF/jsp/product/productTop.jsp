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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.1.0.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/top.css" rel="stylesheet">

<style type="text/css">
	#registProductCount {float: left;}
	#productregDate {float: right;}
	#productName {float: right;}
	#highPrice {float: right;}
	#lowPrice {float: right;}
	#inputProduct{width: 1025px;}
	#inputProduct > div {width: 255px; height: 450px; float: left;}
	#pagingIcon{clear: both;}
	#pagingIcon > * {display: inline-block; text-align: center;}
	footer {clear: both;}
</style>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	<div class="container">
		<!-- 코드시작 -->
			<div id=registProductCount></div>
			<div id=productregDate>신상품</div>
			<div id=productName>상품명&nbsp;&nbsp;</div>
			<div id=highPrice>높은가격&nbsp;&nbsp;</div>
			<div id=lowPrice>낮은가격&nbsp;&nbsp;</div>
			<hr>
			
			<div id= inputProduct></div>
			<div id=pagingIcon>
				<p>
				<img id=firstIcon src="${pageContext.request.contextPath}/image/pagingIcon/btn_page_first.gif"/>
				</p>
				<p>
				<img id=prevIcon src="${pageContext.request.contextPath}/image/pagingIcon/btn_page_prev.gif"/>
				</p>
				<ul id="inputPage">
				
				</ul>
				<p>
				<img id=nextIcon src="${pageContext.request.contextPath}/image/pagingIcon/btn_page_next.gif"/>
				</p>
				<p >
				<img id=lastIcon src="${pageContext.request.contextPath}/image/pagingIcon/btn_page_last.gif"/>
				</p>
			</div>
		<!-- 코드 종료 -->
		<footer>
			<%@ include file="../include/bottom.jsp"%>
		</footer>
	</div>
			<script>
			var page=1;
			var totalCount;
			var countList
			var countPage;
			var totalPage;
			var startPage;
			var endPage;
			var num=0;
			
		
		
			var countP= function(){
				$.ajax({
					url: "selectCount.json",
					dataType: "json"
						
				})
				.done(makeCountP)
			};
			countP();
			
			function makeCountP (result){
				page=1;
				countPage=5;
				totalCount = Number(result);
				countList= 8;
			    totalPage = totalCount / countList;
			if (totalCount % countList > 0) {totalPage++;}
			if (totalPage < page) {page = totalPage;}
				startPage = ((page - 1) / countPage) * countPage + 1;
	    		endPage = startPage + countPage - 1;
			if (endPage > totalPage) {endPage = totalPage;}
				$("#registProductCount").html("등록 제품"+result+"개")
			};
						
			var productRDPage = function(page, num){
				alert(page);
				$.ajax({
					url: "selectPage.json",
					data : {"page" : page, "num" : num},
					dataType: "json"
				})
				.done(makeProductPage)
			};
			
			function makeProductPage(result){
				
				var html="";
				var pCount=0;
				for(var i = 0; i<result.length; i++){
					pCount++;
					var product = result[i];
					html += "<div id='product" + product.pNo + "'>";
					if(pCount%5 == 0){
						$("#product"+product.pNo).css("clear","both");
					}
					
					html += "<img  src = '${pageContext.request.contextPath}/down?path="+product.pPath+"&realName="+product.pReal+"&draw=Y'>"
					html += "<div>" + product.pName + "</div>";
					html += "<div>" + product.pPrice + "</div>";
					html += "</div>";
				}
				if (result.length == 0) {
					html += "<div>게시물이 존재하지 않습니다.</div>";
				}
				$("#inputProduct").html(html);
				}
			productRDPage(page,num);

			$("#firstIcon").on("click",function(page,num){
				if(startPage > 1){
				page=1;
				$.ajax({
					url: "selectPage.json",
					data : {"page" : page, "num" : num},
					dataType: "json"
				})
				.done(makeProductPage)
					
				}
			});
			$("#lastIcon").on("click",function(page,num){
				if(endPage < totalPage){
					page=totalPage;
					$.ajax({
						url: "selectPage.json",
						data : {"page" : page, "num" : num},
						dataType: "json"
					})
					.done(makeProductPage)
				}
			});
			$("#prevIcon").on("click",function(page,num){
				if(page > 1){
					page--;
					$.ajax({
						url: "selectPage.json",
						data : {"page" : page, "num" : num},
						dataType: "json"
					})
					.done(makeProductPage)
				}
			});
			$("#nextIcon").on("click",function(page,num){
				if(page < totalPage){
					page++;
					$.ajax({
						url: "selectPage.json",
						data : {"page" : page, "num" : num},
						dataType: "json"
					})
					.done(makeProductPage)
				}
			});
			
			</script>
</body>
</html>