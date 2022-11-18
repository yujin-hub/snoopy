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
       
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script> 
    
    <style type ="text/css">
		.back{
			background-image:url(../../resources/images/cosmetic.jpg);
			background-size: cover;
			background-attachment: fixed;
		}
		
		.aa{
			background-color: rgba(255, 255, 255, 0.5);
		}
		
		.mid{
			margin: auto;
		}
		
		.top{
			margin-top: 150px;
		}
		
		.wid{
			width: 1500px;
			margin: auto;
		}
		
		.card-title{
			font-size: 30px;
		}
		
		.btn1{
			background-color: #9DCC30;
			color: white;
			font-weight: bold;
			font-size: 18px;
		}

		.card-body{
			text-align: center;
		}
		
		.card{
			--bs-card-border-color: #e5e5e5;
			border-top-color: #9DCC30;
			border-top-width: 5px;
		}
		
		.card-text{
			font-size: 17px;
		}
	</style>
</head>
    
<body>
	<div class="back">
		<div class="aa">
			<div>
				<center><img src="../../resources/images/logo.jpg" class="top"></center>
			</div>
			<br>
			<br>
			<br>
			<div class="row wid">
				<div class="col-6">
					<div class="card mid">
					<br>
					<br>
					<h5 class="card-title mid">USER</h5>
					<br>
					<br>
					<br>
					  <img src="../../resources/images/main.jpg" class="card-img-top">
					  	<br>
						<br>
						<br>
					  <div class="card-body">
					  	<br>
					  	<br>
						<p class="card-text">홈 / 로그인 / 상품상세 / 주문 / 결제</p>
						<br>
						<br>
					    <a href="/item/itemList" class="btn btn1">바로가기</a>
					    <br>
						<br>
						<br>
					  </div>
					</div>
				</div>
				<div class="col-6">
					<div class="card mid">
					<br>
					<br>
					<h5 class="card-title mid">ADMIN</h5>
					<br>
					<br>
					<br>
					  <img src="../../resources/images/dmin.jpg" class="card-img-top">
					  	<br>
						<br>
						<br>
					  <div class="card-body">
					  	<br>
					  	<br>
						<p class="card-text">코드그룹 / 코드 / 회원 / 상품관리</p>
						<br>
						<br>
					    <a href="/member/loginDmin" class="btn btn1">바로가기</a>
					    <br>
						<br>
						<br>
					  </div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>
	</div>

</body>
</html>