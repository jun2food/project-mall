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
<style>
	.total_place div th, .btn_bag{
		text-align: center;
	}
	.btn_div{margin: 0 10px 0 10px;text-align: center;}
	.btn_bag{
	    position: relative;
	    background-color: 9A9A9A;
	    border: none;
	    font-size: 12px;
	    padding: 10px;
	    width: 150px;
	    text-align: center;
	    -webkit-transition-duration: 0.4s; /* Safari */
	    transition-duration: 0.4s;
	    text-decoration: none;
	    overflow: hidden;
	    cursor: pointer;
	    margin: 0 10px 0 10px;
	}
	.btn_bag:after,.btn_sel:after {
	    content: "";
	    background: black;
	    display: block;
	    position: absolute;
	    padding-top: 300%;
	    padding-left: 350%;
	    margin-left: -20px !important;
	    margin-top: -120%;
	    opacity: 0;
	    transition: all 0.8s
	}
	.btn_bag:active:after,.btn_sel:active:after {
	    padding: 0;
	    margin: 0;
	    opacity: 1;
	    transition: 0s
	}
	.btn_sel_del, .btn_sel_order  {
	position: relative;
    background-color: white;
    color: black;
    border: 2px solid #555555;
    width: 80px;
    margin: 5px;
     overflow: hidden;
}
</style>
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
		<div class="row list_bag">
			<div class="col-md-12">
				<table class="table table-hover" >
					<thead>
						<tr>
							<td><input id="sel_box_All" type="checkbox" name=""/></td><td>이미지</td><td>상품정보</td><td>판매가</td><td>수량</td><td>배송비</td><td>합계</td><td>선택</td>
						</tr>
					</thead>
					<tbody id="tbody_bagList">
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">[기본배송]</td><td colspan="7">상품구매금액<span id="product_price">1</span>+배송비<span id="delivery">1</span>=합계:</td><td><span id="sum_price">0</span></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
		<div class="row total_place">
			<div class="col-md-12">
				<table class="table table-hover" >
					<thead>
						<tr>
							<th>총 상품금액</th><th>총 배송비</th><th>결제예정금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th id="priceSum">￦0</th><th id="deliverySum">￦0</th><th id="totalPrice">￦0</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_div">
			<button class="btn_bag" type="button">전체상품주문</button>
			<button class="btn_bag" type="button">선택상품주문</button>
			<button class="btn_bag" type="button">쇼핑계속하기</button>
		</div>
		<!-- 코드 종료 -->
		<footer>
			<%@ include file="../include/bottom.jsp"%>
		</footer>
	</div>
	<script>
		
		$(document).ready(function(){
			loadBagList({"pageNum":1});
		});
		// 리스트 뿌리긔~
		var deliveryPrice = 3000;
		var loadBagList = function (sendData){
			$.ajax({
				url: "${pageContext.request.contextPath}/myBag/myBagList.do",
				type: "post",
				data: sendData,
				dateType:"json",
				success : function(result){
					console.log("result ::: ")
					console.log(result)
					console.log(typeof(result))
					result = JSON.parse(result);
					console.log(typeof(result))
					console.log(result)
					console.log(result.length)
					if(result.length>0){
						var priceSum = 0;
						var deliverySum = 0;
						var totalPrice = 0;
						for(var i=0;i<result.length;i++){
							var sumPrice = result[i].bCnt*result[i].pPrice;
							priceSum += sumPrice;
							deliverySum += deliveryPrice;
							totalPrice += sumPrice+deliveryPrice;
							var tableAdd = "";
							tableAdd += "<tr>";
							tableAdd += "<td><input id='sel_box"+i+"' type='checkbox' name='sel_box'/></td>";
							tableAdd += "<td><img id='sel_img"+i+"' src='${pageContext.request.contextPath}/upload/"+result[i].pPath+"/"+result[i].pReal+"' width='80' height='106' /></td>";
							tableAdd += "<td><div id='sel_name"+i+"'>"+result[i].pName+"</div></td>";
							tableAdd += "<td><div id='sel_price"+i+"'>￦"+numberWithCommas(result[i].pPrice)+"</div></td>";
							tableAdd += "<td>"+result[i].bCnt+"</td>";
							tableAdd += "<td><div id='sel_delivery"+i+"'>￦"+numberWithCommas(deliveryPrice)+"</div></td>";
							tableAdd += "<td><div id='sel_sumSub"+i+"'>￦"+numberWithCommas(sumPrice+deliveryPrice)+"</div></td>";
							tableAdd += "<td><button class='btn_sel_order' type='button'>주문하기</button><br>";
							tableAdd += "<button class='btn_sel_del' type='button'>×삭제</button></td>";
							tableAdd += "</tr>";
							$("#tbody_bagList").append(tableAdd);
						}
						$("#priceSum").html("￦"+numberWithCommas(priceSum));
						$("#deliverySum").html("￦"+numberWithCommas(deliverySum));
						$("#totalPrice").html("￦"+numberWithCommas(totalPrice));
					}else{
						var tableAdd = "";
						tableAdd += "<tr>";
						tableAdd += "<td colspan='8' align='center'>없습니다.</td>";
						tableAdd += "</tr>";
						$("#tbody_bagList").append(tableAdd);
					}
				},
				error: function(errorMsg){
					console.log("errorMsg ::: ",errorMsg);
					console.log("실패~~~~~상품정보~~")
				}
			});	
		};
		function numberWithCommas(price) {
		    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		$("#sel_box_All").on("change",function(){
			$("#tbody_bagList [id^=sel_box]").each(function(){
				this.checked = $("#sel_box_All").is(":checked")
			})
		});
		
			
	</script>
</body>
</html>
