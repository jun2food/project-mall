<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row top_one">
	<div class="col-md-4">
		<a href="${pageContext.request.contextPath}/"><img class="top_logo" src="${pageContext.request.contextPath}/image/topLog/mr3.png"></a>
	</div>
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<c:choose>
			<c:when test="${empty sessionScope.user}">
				<a href="#" data-toggle="modal"	data-target="#loginForm">LOG IN </a> or 
				<a href="#" data-toggle="modal" data-target="#signUpForm"> SIGN UP </a> | 
			</c:when>
			<c:otherwise>
				<a href="#" id="logout"> LOGOUT </a> | 
			</c:otherwise>
		</c:choose>
		<a href="${pageContext.request.contextPath}/myBag/myBagList.do"> MY BAG </a> | 
		<a href="#"> MY ORDER </a>
	</div>
</div>
<div class="row top_two">
	<div class="col-md-3"></div>
	<div class="col-md-6 top_title">
		<a href="${pageContext.request.contextPath}/" id="top_title_a">MR.PARK</a>
	</div>
	<div class="col-md-3">검색</div>
</div>
<div class="row top_menu">
	<div class="col-md-12 top_div">
		<ul>
			<li><div class='top_main_menu'>
					<a href="${pageContext.request.contextPath}/product/productOuter.do">OUTER</a>
				</div>
				<ul>
					<li><a href="#">코트</a></li>
					<li><a href="#">재킷</a></li>
					<li><a href="#">카디건</a></li>
					
				</ul></li>
			<li><div class='top_main_menu'>
					<a href="${pageContext.request.contextPath}/product/productTop.do">TOP</a>
				</div>
				<ul>
					<li><a href="#">니트/맨투맨</a></li>
					<li><a href="#">티셔츠</a></li>
					<li><a href="#">셔츠</a></li>
				</ul></li>
			<li><div class='top_main_menu'>
					<a href="#">PANTS</a>
				</div>
				<ul>
					<li><a href="#">슬랙스</a></li>
					<li><a href="#">캐주얼팬츠</a></li>
					
				</ul></li>

			<li><div class='top_main_menu'>
					<a href="#">SHOES</a>
				</div>
				<ul>
					<li><a href="#">스니커즈</a></li>
					<li><a href="#">레이업슈즈</a></li>
					
				</ul></li>

		</ul>
	</div>
</div>
<!-- 로그인 모달 시작부분 -->
<div id="loginForm" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<!-- 모달 사이즈 css 임의 설정 .modal-size -->
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<!-- 머리 -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">LOGIN</h4>
			</div>
			<!-- 내용 -->
			<form id='loginForm_submit' action="${pageContext.request.contextPath}/login/login.do" method="post">
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row body_in_modal">
							<div class="col-xs-1 col-sm-1 col-md-1"></div>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<!-- 공백 -->

							</div>
							<div class="col-xs-1 col-sm-1 col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<input id='id_text' class="form-control imhere" type="text"
									name="id" placeholder="ID" />
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div id='login_id_test' class="col-md-9">
								<!-- 공백 -->

							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<input id='pw_text' class="form-control imhere" type="password"
									name="pw" placeholder="PASSWORD" />
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<!-- 공백 -->

							</div>
							<div class="col-md-1"></div>
						</div>

					</div>
				</div>
				<!-- 끝단 -->
				<div class="modal-footer modal_button_group">
					<button id="btn_login" class="btn btn-primary login_button">LOGIN</button><br>
					<button id="btn_in_fb" type="button" class="btn btn-primary login_button">FACE BOOK LOGIN</button><br>
					<button type="button" class="btn btn-default login_button" data-dismiss="modal">CLOSE</button><br>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 로그인 모달 끝 부분 -->
<!-- 회원가입(일반) 모달 시작부분 -->
<div id="signUpForm" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<!-- 모달 사이즈 css 임의 설정 .modal-size -->
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<!-- 머리 -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">SIGN UP</h4>
			</div>
			<!-- 내용 -->
			<form id="signUp_submit" action="${pageContext.request.contextPath}/login/signUp.do" method="post">
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row body_in_modal">
							<div class="col-xs-1 col-sm-1 col-md-1"></div>
							<div class="col-xs-9 col-sm-9 col-md-9">
								<!-- 공백 -->
							</div>
							<div class="col-xs-1 col-sm-1 col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<input id='id_text' class="form-control imhere" type="text"
									name="id" placeholder="ID:EMAIL" />
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9" id='id_result'>
								<!-- 공백 -->
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<input id='pw_text' class="form-control imhere" type="password"
									name="pw" placeholder="PASSWORD" />
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div id='pw_result' class="col-md-9">
								<!-- 공백 -->
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<input id='pwCon_text' class="form-control imhere"
									type="password" name="pwConfirm" placeholder="REPASSWORD" />
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<!-- 공백 -->
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<input id='name_text' class="form-control imhere" type="text"
									name="name" placeholder="NAME" />
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row body_in_modal">
							<div class="col-md-1"></div>
							<div class="col-md-9">
								<!-- 공백 -->
							</div>
							<div class="col-md-1"></div>
						</div>

					</div>
				</div>
				<!-- 끝단 -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">CLOSE</button>
					<button class="btn btn-primary">SIGN UP</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!--  회원가입 모달 끝 부분 -->
<script>
	// 메뉴단 춤추기.
	$(".top_div ul li").mouseenter(function() {
		$(this).find('ul').slideDown()
	});
	$(".top_div ul li").mouseleave(function() {
		$(this).find('ul').slideUp()
	});
	// 로그인시 아이디 및 비밀번호 확인후 submit 제한걸기.
	$('#loginForm_submit').submit(function() {
		var loginFlag = false;
		var login_id = $('#loginForm #id_text').val();
		var login_pw = $('#loginForm #pw_text').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/login/idCheck.do',
			type : 'post',
			data : {
				'id' : login_id
			},
			async: false,
			dataType : 'json',
			success : function(result) {
				console.log(result.pw,login_pw);
				if (result.pw == login_pw) {
					loginFlag = true;
				}else{
					alert("비밀번호를 잘못 입력하였습니다.")
				}
			},
			error: function(errorMsg) {
				loginFlag = false;
				alert('아이디 및 비밀번호를 잘못 입력하였습니다.');	
			}
		});
		return loginFlag;
	});
	// 회원가입 아이디 keyup event
	$('#signUpForm input[name=id]').keyup(function(e) {
		var idTag = $(this);
		if (idTag.val() == "") {
			$('#id_result').html('')
		} else {
			$('#id_result').html('ID가 사용가능합니다.').css('color', 'blue')
			emailCheck(idTag.val());
			ajaxID(idTag.val());
		}
	})
	function ajaxID(id) {
		$.ajax({
			url : '${pageContext.request.contextPath}/login/idCheck.do',
			type : 'post',
			data : {
				'id' : id
			},
			dataType : 'json',
			success : idCheck
		})

	}
	// 회원가입 비밀번호 keyup event
	$('#signUpForm input[name=pw], input[name=pwConfirm]').keyup(
			function(e) {
				// 			console.log($('#joinForm input[name=pw]').val(),$('input[name=pwConfirm]').val())
				if ($('#signUpForm input[name=pw]').val() != ""
						&& $('input[name=pwConfirm]').val() != "") {
					pwCheck();
				} else {
					$('#pw_result').html('')
				}
			});
	// 회원가입 submit event
	$('#signUp_submit').submit(function(){
		var signUpFlag = false;
		
		var emailSub = $('#signUpForm input[name=id]').val();
		ajaxID(emailSub);
		if(emailCheck(emailSub)==false){
			console.log('1mail',emailCheck(emailSub));
			return false;
		}
			console.log('2mail',emailCheck(emailSub));
		if( pwCheck() == false){
			console.log('1pw',pwCheck());
			return false;
		}
			console.log('2pw',pwCheck());
		$.ajax({
			url : '${pageContext.request.contextPath}/login/idCheck.do',
			type : 'post',
			data : {
				'id' : emailSub
			},
			async: false,
			dataType : 'json',
			
			success : function(resultMsg){
				console.log(11);
				if(resultMsg != "" ){
				console.log(22);
					signUpFlag = false;
				}
			},
			error: function(errorMsg){
				console.log(33);
				signUpFlag = true;
			}
			
		})
		console.log('flag',signUpFlag);
		if(signUpFlag==true){
			alert("메일을 확인하여 인증하십시오.")
		}
		return signUpFlag;
	});
			
	// 아이디 존재여부.(ajax성공시)
	function idCheck(member) {
		if (member != "") {
			$('#id_result').html('ID가 중복됩니다.').css('color', 'red')
		}
	}
	
	// 회원가입 비밀번호 체크 함수
	function pwCheck() {
		if($('#pwCon_text').val().length > 4 && $('#signUpForm input[name=pw]').val().length >4){
			if ( $('#pwCon_text').val() != $('#signUpForm input[name=pw]').val()) {
				$('#pw_result').html('비밀번호를 다시 확인하여 주십시오.').css('color', 'red')
				return false;
			} else {
				$('#pw_result').html('비밀번호 사용 가능.').css('color', 'blue')
				return true;
			}
		}else{
			return false;
		}
	};
	
	// 이메일 형식 확인 함수
	function emailCheck(mail) {
		console.log(mail);
		var email = mail;
		var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		if (regex.test(email) === false) {
			$('#id_result').html("잘못된 이메일 형식입니다.").css('color', 'red');
			return false;
		} else {
			return true;
		}
	}
//-------------------------------- 페이스북 부분
	var user;
	// 유저 객체 생성
	var member = new Object();
	$('#btn_in_fb').click(function(){
		if(user){
			// user >> member 로 객체 전환.
			member.id = user.email;
			console.log("user.email ::::" + user.email);
			console.log("member.id ::::" + member.id);
			console.log("==================");
			member.name = user.name;
			console.log("user.name ::::" + user.name);
			console.log("member.name ::::" + member.name);
			console.log("==================");
			member.flag = "fb";
			console.log("fb ::::" + "fb");
			console.log("member.flag ::::" + member.flag);
			console.log("==================");
			member.gender = user.gender;
			console.log("user.gender ::::" + user.gender);
			console.log("member.gender ::::" + member.gender);
			console.log("==================");
			member.fId = user.id;
			console.log("user.id ::::" + user.id);
			console.log("member.fId ::::" + member.fId);
			console.log("==================");
			member.signFlag = "Y";
			console.log("Y ::::" + "Y");
			console.log("member.signFlag ::::" + member.signFlag);
			console.log("==================");
			// 나의 DB에 정보가 있으면 로그인.
			// ------------------
			// 아이디가 있는지 확인
//				var fb_login_flag;
			$.ajax({
				url:"${pageContext.request.contextPath}/login/fbCheck.do",
				type:"post",
				data:member,
				dateType:"json",
//					async: false,
				success : function(resultMsg){
					console.log("성공~~~~페이스북~~")
					location.reload();
//						$("#loginForm").modal('hide');
					// 로그인 가능 - 로그인
				},
				error: function(errorMsg){
					console.log("실패~~~~~페이스북~~")
					// 로그인 불가 - 회원가입
				}
			})
			// 없으면 회원가입후 로그인.
		}else{
			FB.login();	
		}
	});
	// 페이스 북 로그인 함수(DB)
// 	function fbLogin(){
		
// 	};
	// 로그아웃
	$('#logout').click(function(){
		// 페이스북 로그아웃
		FB.logout();
		// 홈페이지 로그아웃
		location.replace("${pageContext.request.contextPath}/login/logout.do");
	});
	window.fbAsyncInit = function() {
		//초기화
		FB.init({
			appId : '182896322138570', // App ID
			status : true, // check login status
			cookie : true, // enable cookies to allow the server to access the session
			xfbml : true	// parse XFBML
		});
		//로그인 되는 순간 호출
		FB.Event.subscribe('auth.login', function(response) {
//				alert("로그인 되는 순간 호출");
			console.log("로그인 되는 순간 호출",response);
			fLoginStatus(response);
			// 				document.location.reload();
		});
		//로그아웃 되는 순간 호출
		FB.Event.subscribe('auth.logout', function(response) {
			alert("로그아웃 되는 순간 호출");
			document.location.reload();
		});
	};
	function fLoginStatus(response) {
		if (response.status === 'connected') {
			FB.api('/me', {
				fields : [ 'email', 'id', 'name', 'first_name',
						'last_name', 'age_range', 'link', 'gender',
						'locale', 'picture', 'timezone',
						'updated_time', 'verified' ]
			}, function(user1) {
				console.log(user1);
				user = user1
				if (user1) {
					
				// 유저정보를 보내고 Controller에서 가입이 되있으면 로그인으로
				// 안되어 있으면 가입하고 로그인하게 설정해야함.
				
				}
			});
			var uid = response.authResponse.userID;
			var accessToken = response.authResponse.accessToken;
			console.log(accessToken);

		} else if (response.status === 'not_authorized') {
			// the user is logged in to Facebook, 
			// but has not authenticated your app
		} else {
			// the user isn't logged in to Facebook.
		}
	}
	// Load the SDK Asynchronously
	(function(d) {
		var js, id = 'facebook-jssdk', ref = d
				.getElementsByTagName('script')[0];
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement('script');
		js.id = id;
		js.async = true;
		js.src = "//connect.facebook.net/ko_KR/all.js";
		ref.parentNode.insertBefore(js, ref);
	}(document));
	//end Load the SDK Asynchronously
</script>
