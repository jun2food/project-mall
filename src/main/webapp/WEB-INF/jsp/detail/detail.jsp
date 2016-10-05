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
<script src="${pageContext.request.contextPath}/js/util.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/top.css"
	rel="stylesheet">
<style type="text/css">
#container{display: block;}
#detailForm{width: 1020px; margin: auto; margin-top: 30px;}
 #pImage {float: left;} 
#pInfo{width: 450px; height: 600px; float: left; margin-left: 30px;}

#btnArea{width: 468px; height: 52px;}
table {width: 450px; height: 195px; border-collapse: collapse;}
tr {width: 450px; height: 29px;}
th{ width: 120px; height: 29px;}
td{width: 330px;height: 29px;}
#size {width: 450px; height: 42px; border-collapse: collapse;} 
#size2 {width: 450px; height: 76px; border-collapse: collapse;} 
#btnArea{width: 468px; height: 107px;}

#detailImage{clear: both;   margin: 0 auto; display: block; text-align:center; margin-top: 30px;   }
#detailImage > div{ margin: 0 auto; display: block;  margin-top: 30px;}

  footer {clear: both; }  
</style>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	
	<div class="container">
	<div>
	
		<!-- 코드시작 -->
		<div id = detailForm>
		<div id= pImage>
		<img width=500px height=600px  src = "${pageContext.request.contextPath}/down?path=
						${detailPage.pPath}&realName=${detailPage.pReal}&draw=Y">
		</div>
		<div id=pInfo>
		<h3>${detailPage.pName}</h3><br><br>
		<table>
			<tbody>
				<tr>
					<th>상품명</th>
					<td>${detailPage.pName}</td>
				</tr>
				<tr>
					<th>판매가</th>
					<td id="viewPrice"></td>
				</tr>
				<tr>
					<th>배송비</th>
					<td>￦3,000</td>
				</tr>
			</tbody>
		</table>
	 	<table id=size>
	 		<tbody>
	 			<tr>
	 				<th>사이즈</th>
	 				<td>
	 					<select class="form-control" id = size1>
	 						<option  selected="selected" value="*">[필수]옵션을 선택해주세요</option>
	 						<option id = optionEnd  value="**">-------------------</option>
	 						
	 					</select>
	 				</td>
	 			</tr>
	 		</tbody>
	 	</table>
	 	<table id=size2>
	 		<tbody>
	 			<tr>
	 				<th>총 결제금액</th>
	 				<td id= sumPrice></td>
	 			</tr>
	 		</tbody>
	 	</table>
		
		<br><br>
		<div id=btnArea>
		<a href="#">바로구매</a>
		<form id = "mybag" method="post" action="${pageContext.request.contextPath}/myBag/myBagInsert.do">
		
		
		<input type="hidden" name = "pNo" value="${detailPage.pNo}"/>	
			
<%-- 		<input type="hidden" name = "mNo" value="${user.mNo}"/>		 --%>
				
		<button id="submitBag" type="submit">장바구니</button>
		</form>
		</div>
		</div>
		</div>
		
		
		<div id =detailImage>
		<c:forEach var="dImage" items="${detailImage}">
			<div>
				<img width=700px height=800px src="${pageContext.request.contextPath}/upload/${dImage.ifReal}">
			</div>
		
		</c:forEach>
		
		</div>
		</div><br>
		<!-- 코드 종료 -->
		</div>
	</div>
		<footer style="position: relative">
			<%@ include file="../include/bottom.jsp"%>
		</footer>
	<script>
	
		var html="";
		var html1="";
		// db에서 카테고리에 맞는 사이즈 가져오기
		var cate=${categorySize};
	
		for(var i = 0 ; i<cate.length;i++){
			
			html+= "<option value="+cate[i]+">"+cate[i]+"</option>";
		}
		
		$("#size1").append(html);
		
		$("#viewPrice").html(numberWithCommas("${detailPage.pPrice}"));
		$("#sumPrice").html(numberWithCommas("${detailPage.pPrice}"));
		
		$("#submitBag").click(function(e){
			var html1 = "";
			if($("#size1 option:selected").val()!="*" && $("#size1 option:selected").val()!="**" ){
				alert('${detailPage.pNo}');
				alert($("#size1 option:selected").val());
				html1 += "<input type='hidden' name = 'bSize' value="+$("#size1 option:selected").val()+ "></input>";
				$("#mybag").append(html1);
			}else {
				alert("옵션을 선택해주세요");
				$("size1").focus();
				e.preventDefault();
			}
			
		});
		
		
		
		
	</script>
</body>
</html>