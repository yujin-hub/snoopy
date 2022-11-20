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
		
		.bg{
			background-color: #f17d9e;
			height: 55px;
			margin-left: 10px;
			width: 840px;
		}
		
		.cursor{
			cursor: pointer;
		}
		
		.user{
			font-size: 35px;
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
			margin-left: 80px;
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
			font-size: 12px;
		}
		
		.font5{
			font-size: 100px;
			color: #DFDFDF;
			text-align: center;
		}
		
		.font6{
			font-size: 15px;
			text-align: center;
		}
		
		a{
			color: white;
		}
		
		a:hover {
			color: white;
		}
		
		.left{
			margin-left: 100px;
		}	
		
		.mydiv{
			background-color: #F9F9F9;
			width: 840px;
			text-align: center;
		}
			
		.wid2{
			text-align: center;
		}
		
		.wid3{
			width: 7%;
			text-align: center;
		}
		
		hr{
			border: 1px solid; 
    		display: block !important;
    		width: 840px !important;
		}
		
		.hr2{
			border: 1px solid; 
    		display: block !important;
    		width: 400px !important;
		}
		
		.mid{
			margin: auto;
		}
		
		.top{
			margin-top: 10px;
		}
		
		.btn1{
			background-color: #9DCC30;
			color: white;
			border-width: 1.5px;	
			font-weight: bold;
		}
		
	</style>
</head>
    
<body>

	<%@include file="../../../common/xdmin/include/header.jsp"%>

	<div class= "container" id="wid">
		<br>
		<br>
		<div class="row">
			<div class="col-2 text">
				<span class="cursor">마이페이지</span>
				<br>
				<br>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link ab" href="../member/mypageOrder">주문/배송 조회</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="../member/mypageSecession">회원 탈퇴</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="../member/changePW">비밀번호 변경</a>
					</li>
				</ul>
			</div>
			<br>
			<br>
			<div class="col-10 bg">
				<div class="row">
					<div class="col-1 sort">
						<span class="user"><i class="fa-solid fa-circle-user"></i></span>
					</div>
					<div class="col-5 white">
						<span><c:out value="${ch.userGrade }"/> &nbsp;&nbsp;<c:out value="${ch.nickname }"/>님 반갑습니다.</span>
					</div>
					<div class="col-2 profile">
						<span class="cursor font7"><a href="/member/mypageProfile">나의 프로필 &nbsp;&nbsp;&nbsp;></a></span>
					</div>
					<div class="row mid left">
						<div class="col-4">
							<div class="font">
								<span>CJ ONE 포인트</span>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="font2">200 p</span>
							</div>
						</div>
						<div class="col-3">
							<div class="font">
								<span>쿠폰</span>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="font2">3 개</span>
							</div>
						</div>
						<div class="col-4">
							<div class="font">
								<span>예치금</span>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="font2">0 원</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">
			</div>
			<div class="col-10">
				<span class="font3">비밀번호 변경</span>
				&nbsp;&nbsp;
				<br>
				<br>
				<div class="mydiv">
					<br>
					<br>
					<div class="row left">
						<div class="col-4 top">
							현재 비밀번호	
						</div>
						<div class="col-6">
							<input type="text" class="form-control">
							<br>
						</div>
						<div class="col-4 top">
							새로운 비밀번호	
						</div>
						<div class="col-6">
							<input type="text" class="form-control" placeholder="8~16자의 대/소문자, 숫자, 특수문자 조합"> 
							<br>
						</div>
						<div class="col-4 top">
							새로운 비밀번호 확인	
						</div>
						<div class="col-6">
							<input type="text" class="form-control" placeholder="새로운 비밀번호를 한 번 더 입력해 주세요."> 
						</div>
					</div>
					<br>
					<br>
					<button type="button" class="btn btn1" style="margin: auto;">변경하기 </button>
					<br>
					<br>
					<br>
				</div>
			</div>
		</div>
		<br>
		<br>
	</div>

	<%@include file="../../../common/xdmin/include/footer.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
	 
	 
</script>

</body>
</html>