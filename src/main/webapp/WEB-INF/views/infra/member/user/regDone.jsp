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
    	p {
    		color: white;
    		text-align: center;
    	}
		
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
		
		#footer {
		    position: relative;
		    left: 0;
		    bottom: 0;
		    width: 100%;
			padding: 15px 0;
			text-align: center;
		}
		
    	#hr2 {
    		border: 2px solid; 
    		display: block !important;
    		width: 100px !important;
    		color: #03281A;
    	}
    </style>
</head>
    
<body>
	<%@include file="../../../common/xdmin/include/headerReg.jsp"%>
	
	<div class= "container" id="wid2">
		<h1 style="display: inline;">신규 회원 가입</h1> 
		<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CJ ONE 회원 가입을 환영합니다. 신규 가입 시 가입 축하 쿠폰 3종을 드립니다.</span>
		<hr id="hr2">
	</div>
	<br>
	<br>
	<br>
	<center><img src="../../resources/images//icon3.jpg"></center>
	<br>
	<br>
	<center><img src="../../resources/images/icon4.jpg"></center>	
	<br>
	<br>
	<br>
	<div style="text-align: center;">
		<a href="../member/login">
			<button type="button" class="btn btn-dark btn-lg">올리브영 로그인 바로가기</button>
		</a>
	</div>
	<br>
	<br>
	<br>
	<%@include file="../../../common/xdmin/include/footerReg.jsp"%>
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2405cb6e30cd78e7478b78325118dec&libraries=services"></script>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>