<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row top_one">
	<div class="col-md-4"><img class="top_logo" src="image/topLog/mr3.png">
</div>
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<a href="#"> LOG IN </a> or <a href="#"> SIGN UP </a> | <a href="#">
			MY BAG </a> | <a href="#"> MY ORDER </a>
	</div>
</div>
<div class="row top_two">
	<div class="col-md-3"></div>
	<div class="col-md-6 top_title"><a href="#" id="top_title_a">MR.PARK</a></div>
	<div class="col-md-3">검색</div>
</div>
<div class="row top_menu">
	<div class="col-md-12 top_div">
		<ul>
			<li><div class='top_main_manu'><a href="#">menu1</a></div>
				<ul>
					<li><a href="#">1111</a></li>
					<li><a href="#">2222</a></li>
					<li><a href="#">3333</a></li>
					<li><a href="#">4444</a></li>
				</ul></li>
			<li><div class='top_main_manu'><a href="#">menu2</a></div>
				<ul>
					<li><a href="#">21111</a></li>
					<li><a href="#">2222</a></li>
					<li><a href="#">3333</a></li>
					<li><a href="#">4444</a></li>
				</ul></li>
			<li><div class='top_main_manu'><a href="#">menu3</a></div>
				<ul>
					<li><a href="#">31111</a></li>
					<li><a href="#">2222</a></li>
					<li><a href="#">3333</a></li>
					<li><a href="#">4444</a></li>
				</ul></li>
				
			<li><div class='top_main_manu'><a href="#">menu4</a></div>
				<ul>
					<li><a href="#">41111</a></li>
					<li><a href="#">2222</a></li>
					<li><a href="#">3333</a></li>
					<li><a href="#">4444</a></li>
				</ul></li>
				
			<li><div class='top_main_manu'><a href="#">menu5</a></div>
				<ul>
					<li><a href="#">51111</a></li>
					<li><a href="#">2222</a></li>
					<li><a href="#">3333</a></li>
					<li><a href="#">4444</a></li>
				</ul></li>
				
			<li><div class='top_main_manu'><a href="#">menu6</a></div>
				<ul>
					<li><a href="#">61111</a></li>
					<li><a href="#">2222</a></li>
					<li><a href="#">3333</a></li>
					<li><a href="#">4444</a></li>
				</ul></li>
		</ul>



	</div>
</div>
<script>
	$(".top_div ul li").mouseenter(function() {
// 		$(this).find('ul').css('display', 'block')
		$(this).find('ul').slideDown()
					
	});
	$(".top_div ul li").mouseleave(function() {
// 		$(this).find('ul').css('display', 'none');
		$(this).find('ul').slideUp()
		
	});
	
</script>
