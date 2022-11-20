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
	  	#wid {
			width: 1200px;
		}
		
		.top {
			margin-top: 7px;
		}
		
		.oy {
			color: white; 
			font-size: 15px; 
			float: right;
		}
		
		.oy2{
			margin-left: 1000px;
		}
		
		#wid2{
			width: 1100px;
		}
		
		#wid3{
			width: 1050px;
			background-color: #F6F6F6;
			text-align: center;
		}
		
		#footer{
		    position: relative;
		    left: 0;
		    bottom: 0;
		    width: 100%;
			padding: 15px 0;
			text-align: center;
			color: white;
		}
    	
    	#hr2{
    		border: 2px solid; 
    		display: block !important;
    		width: 100px !important;
    		color: #03281A;
    	}
    	
    	#hr3{
    		border: 1px solid; 
    		display: block !important;
    		width: 100% !important;
    	}

		#font{
			font-size: 17px;
		}
		
		#gray{
			color: #6B6B6B;
			font-size: 20px;
		}
		
		#red{
			color: #D12323;
			font-size: 20px;
		}
		
		#right {
			float: right;
		}
		
		.cursor{
			cursor: pointer;
		}
		
		.btn1{
			background-color: #353535;
			color: white;
			width: 200px;
			font-size: 18px;
			border-radius: 0px;
		}
		
		a:hover {
			color: #4c4c4c;
		}
		
    </style>
</head>
    
<body>

	<!-- 헤더  -->
	<%@include file="../../../common/xdmin/include/headerReg.jsp"%>
	
	<!-- 본문 -->
	<div class="container" id="wid2">
		<h1 style="display: inline;">아이디 찾기</h1> 
		<span id="font">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디가 기억나지 않으세요? 원하시는 방법을 선택해 아이디를 확인하실 수 있습니다.</span>
		<hr id="hr2">
		<span id="right">&nbsp; 아이디 찾기</span>
		<span id="right">&nbsp; ></span>
		<span id="right" class="cursor">&nbsp; 로그인</span>
		<span id="right">&nbsp; ></span>
		<span id="right" class="cursor"><i class="fa-solid fa-house"></i></span>
	</div>
	<br>
	<br>
	<br>
	<div class="container" id="wid3">
		<hr id="hr3">
		<br>
		<br>
		<br>
		<center><img src="../../resources/images/check.jpg"></center>
		<br>
		<span id="gray">고객님의 아이디는</span>
		<span id="red">&nbsp;&nbsp;cuj****</span>
		<span id="gray">&nbsp;&nbsp;입니다.</span>
		<br>
		<br>
		<br>
		<br>
		<a href="../member/login">
			<button type="button" class="btn btn1">> 로그인 바로가기</button>
		</a>
		<a href="../member/findPW">
			<button type="button" class="btn btn1">> 패스워드 찾기</button>
		</a>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>		
	<br>	
	<br>	
	<br>	
	<br>	
	<br>	

	<%@include file="../../../common/xdmin/include/footerReg.jsp"%>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>