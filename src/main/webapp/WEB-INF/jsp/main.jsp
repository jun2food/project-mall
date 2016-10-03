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
<link href="${pageContext.request.contextPath}/css/top.css" rel="stylesheet">
<style>
@import url(http://fonts.googleapis.com/css?family=Anaheim);

*{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
	box-sizing: border-box;
}
*:before,
*:after{
	box-sizing: border-box;
}
html,
body{
	min-height: 100%;
}
body{
	background-image: radial-gradient(mintcream 0%, lightgray 100%);
}
h1{
	display: table;
	margin: 5% auto 0;
	text-transform: uppercase;
	font-family: 'Anaheim', sans-serif;
	font-size: 4em;
	font-weight: 400;
	text-shadow: 0 1px white, 0 2px black;
}
.container{
	margin: 4% auto;
	width: 210px;
	height: 140px;
	position: relative;
	perspective: 1000px;
}
#carousel{
	width: 100%;
	height: 100%;
	position: absolute;
	transform-style: preserve-3d;
	animation: rotation 20s infinite linear;
}
#carousel:hover{
	animation-play-state: paused;
}
#carousel figure{
	display: block;
	position: absolute;
	width: 186px;
	height: 116px;
	left: 10px;
	top: 10px;
	background: black;
	overflow: hidden;
	border: solid 5px black;
}
#carousel figure:nth-child(1){transform: rotateY(0deg) translateZ(288px);}
#carousel figure:nth-child(2) { transform: rotateY(40deg) translateZ(288px);}
#carousel figure:nth-child(3) { transform: rotateY(80deg) translateZ(288px);}
#carousel figure:nth-child(4) { transform: rotateY(120deg) translateZ(288px);}
#carousel figure:nth-child(5) { transform: rotateY(160deg) translateZ(288px);}
#carousel figure:nth-child(6) { transform: rotateY(200deg) translateZ(288px);}
#carousel figure:nth-child(7) { transform: rotateY(240deg) translateZ(288px);}
#carousel figure:nth-child(8) { transform: rotateY(280deg) translateZ(288px);}
#carousel figure:nth-child(9) { transform: rotateY(320deg) translateZ(288px);}

img{
	-webkit-filter: grayscale(1);
	cursor: pointer;
	transition: all .5s ease;
}
img:hover{
	-webkit-filter: grayscale(0);
  transform: scale(1.2,1.2);
}

@keyframes rotation{
	from{
		transform: rotateY(0deg);
	}
	to{
		transform: rotateY(360deg);
	}
}
</style>
</head>
<body>
	<%@ include file="include/top.jsp"%>
	<div class="container">
		<!-- 코드시작 -->
		<a href = "${pageContext.request.contextPath}/order/orderForm.do">주문하긔</a><br>
		
		<div id="carousel">
			<figure><img src="http://lorempixel.com/186/116/nature/1" alt=""></figure>
			<figure><img src="http://lorempixel.com/186/116/nature/2" alt=""></figure>
			<figure><img src="http://lorempixel.com/186/116/nature/3" alt=""></figure>
			<figure><img src="http://lorempixel.com/186/116/nature/4" alt=""></figure>
			<figure><img src="http://lorempixel.com/186/116/nature/5" alt=""></figure>
			<figure><img src="http://lorempixel.com/186/116/nature/6" alt=""></figure>
			<figure><img src="http://lorempixel.com/186/116/nature/7" alt=""></figure>
			<figure><img src="http://lorempixel.com/186/116/nature/8" alt=""></figure>
			<figure><img src="http://lorempixel.com/186/116/people/9" alt=""></figure>
		</div>
	</div>
		<!-- 코드 종료 -->
		<footer>
			<%@ include file="include/bottom.jsp"%>
		</footer>
		
</body>
</html>
