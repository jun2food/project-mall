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

	.btn_sel_del, .btn_sel_order, .btn_del_bag, .btn_bag, .btn_sel, .updateCnt {
    background-color: white;
    color: black;
    border: 2px solid #555555;
    width: 80px;
    margin: 5px;
	}
	.btn_sel_del:hover, .btn_sel_order:hover, .btn_del_bag:hover, .btn_bag:hover, .btn_sel:hover ,.updateCnt:hover{
		background-color: #d6d6d6;
	}	
	table{text-align: center;}
	.btn_del_bag{width: 150px;}
	.updateCnt{width: 50px;}
	.updateCntInput{width:50px;}
	.btn_bag, .btn_sel{width: 200px;height: 30px;}
	tfoot>tr>td:nth-child(1){text-align: left;}
	tfoot>tr>td:nth-child(2){text-align: right;}
	.tbody_bagList tr td {vertical-align: middle; }
	.tbody_bagList tr td *{height: 1000px;}
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
							<td><input id="sel_box_All" type="checkbox" name=""/></td><td>IMAGE</td><td>PRODUCT INFORMATION </td><td>PRICE</td><td>AMOUNT</td><td>DELIVERY PRICE</td><td>TOTAL PRICE</td><td>SELECT</td>
						</tr>
					</thead>
					<tbody id="tbody_bagList">
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4"><button id="remove_btn" class="btn_del_bag" type="button">선택상품 삭제</button></td>
							<td colspan="4"><button id="total_remove_btn" class="btn_del_bag" type="button">장바구니 비우기</button></td>
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
			<button id="total_order_btn" class="btn_bag" type="button">전체상품주문</button>
			<button id="sel_order_btn" class="btn_bag" type="button">선택상품주문</button>
			<button  id="home" class="btn_bag" type="button">쇼핑계속하기</button>
		</div>
		<!-- 코드 종료 -->
		<footer>
			<%@ include file="../include/bottom.jsp"%>
		</footer>
	</div>
	
	<script>
		//  처음 로딩될떄 뿌려주는 것
		$(document).ready(function(){
			loadBagList({"pageNum":1});
		});
		// 리스트 뿌리긔~
		
		var loadBagList = function (sendData){
			$("#tbody_bagList").empty();
			$.ajax({
				url: "${pageContext.request.contextPath}/myBag/myBagList.do",
				type: "post",
				data: sendData,
				dateType:"json",
				success : function(result){
					result = JSON.parse(result);
					var priceSum = 0;
					var deliverySum = 0;
					var totalPrice = 0;
					var deliveryPrice = 3000;
					if(result.length>0){
						for(var i=0;i<result.length;i++){
							var sumPrice = result[i].bCnt*result[i].pPrice;
							priceSum += sumPrice;
							deliverySum += deliveryPrice;
							totalPrice += sumPrice+deliveryPrice;
							var tableAdd = "";
							tableAdd += "<tr>";
							tableAdd += "<td><input id='sel_box"+result[i].bNo+"' type='checkbox' name='"+result[i].bNo+"'/></td>";
							tableAdd += "<td><img id='sel_img"+result[i].bNo+"' src='${pageContext.request.contextPath}/upload/"+result[i].pPath+"/"+result[i].pReal+"' width='80' height='106' /></td>";
							tableAdd += "<td><div id='sel_name"+result[i].bNo+"'>"+result[i].pName+"</div></td>";
							tableAdd += "<td><div id='sel_price"+result[i].bNo+"'>"+numberWithCommas(result[i].pPrice)+"</div></td>";
							tableAdd += "<td><input class='updateCntInput' type='number' min='1' value='"+result[i].bCnt+"'/><br><button class='updateCnt' type='button'>변경</button></td>";
							tableAdd += "<td><div id='sel_delivery"+result[i].bNo+"'>"+numberWithCommas(deliveryPrice)+"</div></td>";
							tableAdd += "<td><div id='sel_sumSub"+result[i].bNo+"'>"+numberWithCommas(sumPrice+deliveryPrice)+"</div></td>";
							tableAdd += "<td><button class='btn_sel_order' type='button'>주문하기</button><br>";
							tableAdd += "<button id='btn_sel_del_"+result[i].bNo+"' class='btn_sel_del' type='button'>×삭제</button></td>";
							tableAdd += "</tr>";
							$("#tbody_bagList").append(tableAdd);
						}
						// 버튼 이벤트 설정 함수 호출
						delBtn();
						// 체크박스 이벤트 설정 호출
						checkBoxChange();
						// Cnt수정 이벤트 설정 호출
						updateCnt()
					}else{
						var tableAdd = "";
						tableAdd += "<tr>";
						tableAdd += "<td colspan='8' align='center'>없습니다.</td>";
						tableAdd += "</tr>";
						$("#tbody_bagList").append(tableAdd);
					}
					$("#priceSum").html(numberWithCommas(priceSum));
					$("#deliverySum").html(numberWithCommas(deliverySum));
					$("#totalPrice").html(numberWithCommas(totalPrice));
					$("#tbody_bagList tr td").css("vertical-align","middle");
				},
				error: function(errorMsg){
				}
			});	
		};
		// 숫자를 돈단위로 ---- 숫자를 3자리수로 끊어서 ","붙히고 앞에 ￦ 붙히는 함수
		function numberWithCommas(price) {
		    return "￦"+price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		// 전체체크 박스 눌렀을때 하위 체크박스 선택/해제 함수
		$("#sel_box_All").on("change",function(){
			$("#tbody_bagList [id^=sel_box]").each(function(){
				this.checked = $("#sel_box_All").is(":checked")
			})
		});
		// 체크박스가 모두 체크/체크해제 되었을 경우 전체체크박스 바꾸기
		function checkBoxChange(){
			var $checkBoxChange =  $("#tbody_bagList [id^=sel_box]");
			$checkBoxChange.on("change",function(){
				console.log($checkBoxChange.length);
				console.log($checkBoxChange.parent().find(":checked"));				
				console.log($checkBoxChange.parent().find(":checked").length);
				var pCntTotal = $checkBoxChange.length;
				var pCnt = $checkBoxChange.parent().find(":checked").length;
				if(pCnt == 0){
					$("#sel_box_All").attr("checked",false);	
				}else if(pCnt == pCntTotal){
					$("#sel_box_All").attr("checked",true);
				}
			});
		};
		// Cnt수정 이벤트  함수
		function updateCnt(){
			$(".updateCntInput").css({"text-align":"right"});
			$(".updateCnt").on("click",function(){
				var sendData = {
					"bNo" : $(this).parent().siblings().find("[id^=sel_box]").attr("name"),
					"bCnt" : $(this).siblings(".updateCntInput").val()
				}
				console.log(sendData);
				$.ajax({
					url: "${pageContext.request.contextPath}/myBag/myBagCntUpdate.do",
					type: "post",
					data: sendData,
					success: function(e){
						console.log("가라!!!")
						loadBagList({"pageNum":1});
					},
					error: function(e){
						console.log("삭제실패!!!");
					}
				});
			});
		};
		// 전체상품주문
		$("#total_order_btn").on("click",function(){
			
		});
		// 선택상품주문
		$("#sel_order_btn").on("click",function(){
			
		});
		// 전체삭제버튼
		$("#total_remove_btn").on("click",function(){
			//데이터 베이스 보내기
			$.ajax({
				url: "${pageContext.request.contextPath}/myBag/myBagAllDelete.do",
				type: "post",
				success: function(e){
					console.log("가라!!!")
					loadBagList({"pageNum":1});
				},
				error: function(e){
					console.log("삭제실패!!!");
				}
			});
		});
		// 선택상품삭제(체크박스)
		$("#remove_btn").on("click",function(){
			var bNoArr = [];
			$("#tbody_bagList :checked").each(function(){
				bNoArr.push(this.name);
			})
					
			if(bNoArr.length>0){
				$deleteAjax(bNoArr);
			}else{
				alert("상품을 선택하여 주십시오.")
			}
		});
		// 선택상품삭제(삼풍정보버튼)
		function delBtn(){
			$(".btn_sel_del").on("click",function(){
				var bNoArr = [];
				bNoArr.push($(this).parent().siblings().find("[name]").attr("name"));
				$deleteAjax(bNoArr);
			});
		};
		// 삭제 ajax 함수
		var $deleteAjax = function(bNoArr){
			var bNo = JSON.stringify(bNoArr);
			//데이터 베이스 보내기
			$.ajax({
				url: "${pageContext.request.contextPath}/myBag/myBagDelete.do",
				type: "post",
				contentType: 'application/json',
				data: bNo,
				dataTaype: "json",
				success: function(e){
					loadBagList({"pageNum":1});
				},
				error: function(e){
					console.log("삭제실패!!!");
				}
			});
		}
		// 쇼핑계속하기
		$("#home").on("click",function(){
			location.href = "${pageContext.request.contextPath}/";
		});
			
	</script>
</body>
</html>
