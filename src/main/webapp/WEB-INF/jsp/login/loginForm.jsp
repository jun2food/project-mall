<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:fb="http://ogp.me/ns/fb#">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.0.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
/* .imhere {margin-top: 20px;margin-bottom: 20px;} */
.body_in_modal div {
	height: 34px;
	line-height: 34px;
}
</style>
</head>
<body>
	<!-- 모달 소환 버튼 -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#loginForm">LOGIN</button>
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#signUpForm">SIGN UP</button>
	<button id="fb_sign" type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#signUpForm">FACE BOOK</button>
	<div class="fb-login-button" data-max-rows="1" data-size="medium" data-show-faces="false" data-auto-logout-link="true"></div>
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
				<form id='loginForm_submit' action="login.do" method="post">
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
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">CLOSE</button>
						<button id="btn_in_join" type="button" class="btn btn-primary">SIGN UP</button>
						<button id="btn_login" class="btn btn-primary">LOGIN</button>
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
				<form id="signUp_submit" action="signUp.do" method="post">
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
		// 로그인에서 회원가입으로 전환
		$('#btn_in_join').click(function() {
			$('#loginForm').modal('hide')
			$('#joinForm').modal('show')
		});
		// 로그인시 아이디 및 비밀번호 확인후 submit 제한걸기.
		$('#loginForm_submit').submit(function() {
			var loginFlag = false;
			var login_id = $('#loginForm #id_text').val();
			var login_pw = $('#loginForm #pw_text').val();
			$.ajax({
				url : 'idCheck.do',
				type : 'post',
				data : {
					'id' : login_id
				},
				async: false,
				dataType : 'json',
				success : function(result) {
					if (result.pw == login_pw) {
						loginFlag = true;
					}else{
						alert("비밀번호를 잘못 입력하였습니다.")
					}
				},
				error: function(errorMsg) {
					alert('아이디 및 비밀번호를 잘못 입력하였습니다.');	
				}
			});
			return loginFlag;
		});
		// 임시
// 		$('#loginForm input[name=id]').keyup(function(e) {
// 			var idTag = $(this);
// 			if (idTag.val() == "") {
// 				$('#login_id_test').html('')
// 			} else {
// 				$('#login_id_test').html('ID가 사용가능합니다.').css('color', 'blue')
// 				emailCheck(idTag.val());
// 				ajaxID(idTag.val());
// 			}
// 		})
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
				url : 'idCheck.do',
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
// 			var signUpFlag = false;
			var emailSub = $('#signUpForm input[name=id]').val();
			if(emailCheck(emailSub)==false){
				console.log(11111,emailCheck(emailSub));
				return false;
			}
			if( pwCheck() == false){
				console.log(22222,pwCheck());
				return false;
			}
			return true;
		});
				
		// 아이디 존재여부.(ajax성공시)
		function idCheck(member) {
			if (member != "") {
				$('#id_result').html('ID가 중복됩니다.').css('color', 'red')
			}
		}
		
		// 회원가입 비밀번호 체크 함수
		function pwCheck() {
			if ($('#pwCon_text').val() != $('#signUpForm input[name=pw]').val()) {
				$('#pw_result').html('비밀번호를 다시 확인하여 주십시오.').css('color', 'red')
				return false;
			} else {
				$('#pw_result').html('비밀번호 사용 가능.').css('color', 'blue')
				return true;
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
// -------------------------------- 페이스북 부분
		$('#fb_sign').click(function(){
		});
		window.fbAsyncInit = function() {
			//초기화
			FB.init({
				appId : '182896322138570', // App ID
				status : true, // check login status
				cookie : true, // enable cookies to allow the server to access the session
				xfbml : true	// parse XFBML
			});

			//페이지 로드 했을시 호출 
			FB.getLoginStatus(function(response) {
				if (response.status === 'connected') {
					FB.api('/me', {
						fields : [ 'email', 'id', 'name', 'first_name',
								'last_name', 'age_range', 'link', 'gender',
								'locale', 'picture', 'timezone',
								'updated_time', 'verified' ]
					}, function(user) {
						console.log(user);
						if (user) {
							// 이미지 출력방법
// 							var image = document.getElementById('image');
// 							image.src = 'http://graph.facebook.com/' + user.id
// 									+ '/picture';
							// user 정보
// 							email:"daehan.ji@gmail.com"
// 							first_name:"DaeHan"
// 							gender:"male"
// 							id:"534107710117165"
// 							last_name:"Ji"
// 							link:"https://www.facebook.com/app_scoped_user_id/534107710117165/"
// 							locale:"ko_KR"
// 							name:"DaeHan Ji"
// 							picture:
// 							timezone:9
// 							updated_time:"2016-09-16T06:31:18+0000"

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
			});

			//로그인 되는 순간 호출
			FB.Event.subscribe('auth.login', function(response) {
// 				alert("로그인 되는 순간 호출");
				console.log("로그인 되는 순간 호출");
				// 				document.location.reload();
			});
			//로그아웃 되는 순간 호출
			FB.Event.subscribe('auth.logout', function(response) {
				alert("로그아웃 되는 순간 호출");
				document.location.reload();
			});
		};
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
</body>
</html>