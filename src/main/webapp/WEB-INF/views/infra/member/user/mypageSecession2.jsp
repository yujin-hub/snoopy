<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">
<head>		
	
	<%@include file="../../../common/xdmin/include/head.jsp"%>
    
    <style type ="text/css">
		.back-to-top-css {
		    position: fixed;
		    bottom: 20px;
		    right: 20px;
		}

		#wid{
			width: 1050px;
		}
		
		.text{
			font-size: 25px;
			font-weight: bold;
		}
		
		.nav{
			font-size: 16px;
		}
		
		.nav-link{
			color: #353535;
		}
		
		.ab:hover{
			color: #ce63be !important;
		}
		
		.cursor{
			cursor: pointer;
		}
		
		.bg{
			background-color: #f17d9e;
			height: 55px;
			margin-left: 10px;
			width: 840px;
		}
		
		.sort{
			margin-top: 10px;
			margin-left: 40px;
			color: #595959;
		}
		
		.white{
			margin-top: 19px;
			font-size: 18px;
			font-weight: bold;
			color: white;
		}
		
		.profile{
			font-size: 16px;
			color: white;
			margin-top: 18px;
			margin-left: 230px;
		}
		
		.font{
			font-size: 17px;
			margin-top: 30px;
		}
		
		.font2{
			font-size: 17px;
			font-weight: bold;
			color: #C23434;
			margin-top: 30px;
		}
		
		.font3{
			font-size: 20px;
			font-weight: bold;
		}
		
		.font4{
			font-size: 15px;
			font-weight: bold;
		}
		
		.font5{
			font-size: 17px;
		}
		
		.font6{
			font-size: 22px;
		}
		
		.left{
			margin-left: 95px;
		}
		
		.user{
			font-size: 35px;
		}
		
		hr{
			border: 1px solid; 
    		display: block !important;
    		width: 840px !important;
		}
		
		.border{
			border: 1px solid gray;
			width: 840px;
			border-radius: 5px;
		}
		
		p{
			margin-left: 15px; 
		}
		
		.btn1{
			background-color: #9DCC30;
			color: white;
			border-width: 1.5px;	
			font-size: 18px;
			font-weight: bold;
		}
		
		#btn {
			text-align: center;
		}
		
		.back{
			background-color: #F9F9F9;
			width: 840px;
		}
		
		a:hover{
			color: #93961F;
		}
	</style>
</head>
    
<body>

	<%@include file="../../../common/xdmin/include/header.jsp"%>	

	<div class="container" id="wid">
		<br>
		<br>
		<div class="row">
			<div class="col-2 text">
				<span class="cursor">마이페이지</span>
				<br>
				<br>
				<ul class="nav flex-column">
					<!-- <li class="nav-item">
						<a class="nav-link ab" href="mypageOrder">주문/배송 조회</a>
					</li> -->
					<li class="nav-item">
						<a class="nav-link ab" href="mypageSecession">회원 탈퇴</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="../member/changePW">비밀번호 변경</a>
					</li>
				</ul>
			</div>
			<div class="col-10">
				<span class="font3">회원 탈퇴</span>
				<br>
				<hr>
				<div class="back">
					<br>
					<br>
					<center><img src="../../resources/images/dele.jpg"></center>
					<br>
					<center><span class="font6">그 동안 서비스를 이용해주셔서 감사합니다.</span></center>
					<br>
					<center><span>회원님들의 개인정보를 보호하기 위함이오니 적극적인 참여 부탁 드립니다.</span></center>
					<center>모든 CJ ONE 제휴 브랜드로부터 회원 탈퇴가 되었으며 30일 이후에 다시 가입하실 수 있습니다.</center>
					<br>
					<br>
					<br>
				</div>
				<br>
				<div id="btn">	
					<a href="/item/itemList">
						<button type="button" class="btn btn1 btn-lg">홈으로</button>
					</a>
				</div>
				<br>
				<br>
			</div>
		</div>
	</div>
	<%@include file="../../../common/xdmin/include/footer.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2405cb6e30cd78e7478b78325118dec&libraries=services"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>

<script type="text/javascript">
	 $(document).ready(function () {
	        $(window).scroll(function () {
	            if ($(this).scrollTop() > 50) {
	                $('#back-to-top').fadeIn();
	            } else {
	                $('#back-to-top').fadeOut();
	            }
	        });
	        // scroll body to 0px on click
	        $('#back-to-top').click(function () {
	            $('#back-to-top').tooltip('hide');
	            $('body,html').animate({
	                scrollTop: 0
	            }, 800);
	            return false;
	        });

	        $('#back-to-top').tooltip('show');

	    });
	 
	 $("#btnLogout").on("click", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/logoutProc"
				,data: {}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/member/login";
					} else {
						alert("다시 시도해주세요.")
					}
				}
			});
		});
</script>
	 
</body>
</html>