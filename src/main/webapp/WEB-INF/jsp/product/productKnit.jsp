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
#registProductCount {
	float: left;
}

#productregDate {
	float: right;
}

#productName {
	float: right;
}

#highPrice {
	float: right;
}

#lowPrice {
	float: right;
}

#inputProduct {
	width: 1025px;
	margin: auto;
}

#inputProduct>div {
	vertical-align: top;
	width: 255px;
	height: 450px;
/* 	float: left; */
	display: inline-block;
	text-align: center;
/* 	margin: auto; */
}

#pagingIcon {
	clear: both;
}

#pagingIcon>* {
	display: inline-block;
	text-align: center;
}

footer {
	clear: both;
}
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

		<div id=inputProduct></div>
		<div id=pagingIcon>
			<p>
				<img id=firstIcon
					src="${pageContext.request.contextPath}/image/pagingIcon/btn_page_first.gif" />
			</p>
			<p>
				<img id=prevIcon
					src="${pageContext.request.contextPath}/image/pagingIcon/btn_page_prev.gif" />
			</p>
			<ul id="inputPage">

			</ul>
			<p>
				<img id=nextIcon
					src="${pageContext.request.contextPath}/image/pagingIcon/btn_page_next.gif" />
			</p>
			<p>
				<img id=lastIcon
					src="${pageContext.request.contextPath}/image/pagingIcon/btn_page_last.gif" />
			</p>
		</div>
		<!-- 코드 종료 -->
		<footer>
			<%@ include file="../include/bottom.jsp"%>
		</footer>
	</div>
	<script>
		var pCategory1=2;
		var pCategory2=11;
		var page = 1;
		var totalCount;
		var countList = 8;
		var countPage = 5;
		var totalPage;
		var startPage;
		var endPage;
		var num = 0;

		// 처음 들어왔을때 db에 있는 상품수
		var countP = function() {
			$.ajax({
				url : "selectCount.json",
				data : 	{
					"pCategory1": pCategory1,
					"pCategory2": pCategory2
				},	
				dataType : "json"

			}).done(makeCountP)
		};
		countP();

		function makeCountP(result) {
			totalCount = Number(result);
			totalPage = parseInt(totalCount / countList);
			
			if ((parseInt(totalCount) % parseInt(countList)) > 0) {
				totalPage++;
			}
			
			if (totalPage < page) {
				page = totalPage;
			}
			startPage = (parseInt((page - 1) / countPage)) * countPage + 1;
			endPage = startPage + countPage - 1;
			if (endPage > totalPage) {
				endPage = totalPage;
			}
			$("#registProductCount").html("등록 제품" + result + "개")
			
			inputPage();
		};

		// 처음 들어왔을때 최신품 기준으로 나오는 첫화면 
		var productRDPage = function() {
			
			$.ajax({
				url : "selectPage.json",
				data : {
					"page" : page,
					"num" : num,
					"pCategory1": pCategory1,
					"pCategory2": pCategory2
				},
				dataType : "json"
			})

			.done(makeProductPage);

		};

		// 화면에 결과값 뿌려주는 부분
		function makeProductPage(result) {
		
			var html = "";
			var pCount = 0;
			console.log(1)
			for (var i = 0; i < result.length; i++) {
				pCount++;
				var product = result[i];
				if (pCount % 5 == 0) {
// 					$("#product" + product.pNo).css("clear", "both");
				html+= "<br>"
					
				}
				html += "<div id='product" + product.pNo + "'>";
				html += "<a href='${pageContext.request.contextPath}/detail/detailList.do?pNo="+product.pNo+"'>";
				html += "<img width=248px height=309px  src = '${pageContext.request.contextPath}/down?path="
						+ product.pPath
						+ "&realName="
						+ product.pReal
						+ "&draw=Y'>"
				html += "<div>" + product.pName + "</div>";
				html += "<div>" + product.pPrice + "</div>";
				html += "</a>";
				html += "</div>";
			}
			console.log(2)
			if (result.length == 0) {
			console.log(3)
				html += "<div>게시물이 존재하지 않습니다.</div>";
			}
			console.log(4)
			$("#inputProduct").html(html);
		}
		productRDPage();

		//first 아이콘 눌렀을때
		$("#firstIcon").on("click", function() {
			if (startPage >= 1) {
				page = 1;
				$.ajax({
					url : "selectPage.json",
					data : {
						"page" : page,
						"num" : num,
						"pCategory1": pCategory1,
						"pCategory2": pCategory2
					},
					dataType : "json"
				}).done(makeProductPage)

			}
			countP();
		});

		//last 아이콘 놀렀을때
		$("#lastIcon").on("click", function() {
			if (endPage <= totalPage) {
				alert("안뇽3");
				page = totalPage;
				$.ajax({
					url : "selectPage.json",
					data : {
						"page" : page,
						"num" : num,
						"pCategory1": pCategory1,
						"pCategory2": pCategory2
					},
					dataType : "json"
				})

				.done(makeProductPage)
			}
			countP();
		});

		// 이전 아이콘 눌렀을때
		$("#prevIcon").on("click", function() {
			
			
			if (page > 1) {
				page--;
				$.ajax({
					url : "selectPage.json",
					data : {
						"page" : page,
						"num" : num,
						"pCategory1": pCategory1,
						"pCategory2": pCategory2
					},
					dataType : "json"
				}).done(makeProductPage)
			}
				countP();
		});

		//다음 아이콘 눌렀을때
		$("#nextIcon").on("click", function() {
		
				
			if (page < totalPage) {
		
				page++;
				$.ajax({
					url : "selectPage.json",
					data : {
						"page" : page,
						"num" : num,
						"pCategory1": pCategory1,
						"pCategory2": pCategory2
					},
					dataType : "json"
				}).done(makeProductPage)
			}
				countP();
		});
		
		var inputPage= function (){
			
			var html="";
			for(var i = 1; i <= totalPage; i++){
			html+= "<span id='span"+i+"'>"+i+"</span> | "
			}
			
		$("#inputPage").html(html);
		$("#inputPage > span").click(function(e){
			var spanNum = $(e.target).html();
			console.log(spanNum);
			page = spanNum;
			console.log(page);

			
			$.ajax({
				url : "selectPage.json",
				data : {
					"page" : page,
					"num" : num,
					"pCategory1": pCategory1,
					"pCategory2": pCategory2
				},
				dataType : "json"
			})
			.done(makeProductPage);
		});
		};
		
		$("#lowPrice").click(function(){
			num=1;
			$.ajax({
				url : "selectPage.json",
				data : {
					"page" : page,
					"num" : num,
					"pCategory1": pCategory1,
					"pCategory2": pCategory2
				},
				dataType : "json"
			})

			.done(makeProductPage);
		});
		
		$("#highPrice").click(function(){
			num=2;
			$.ajax({
				url : "selectPage.json",
				data : {
					"page" : page,
					"num" : num,
					"pCategory1": pCategory1,
					"pCategory2": pCategory2
				},
				dataType : "json"
			})

			.done(makeProductPage);
		});
		$("#productName").click(function(){
			num=3;
			$.ajax({
				url : "selectPage.json",
				data : {
					"page" : page,
					"num" : num,
					"pCategory1": pCategory1,
					"pCategory2": pCategory2
				},
				dataType : "json"
			})

			.done(makeProductPage);
		});
		
		$("#productregDate").click(function(){
			num=0;
			productRDPage();
		});
		
		
		
		
	</script>
</body>
</html>