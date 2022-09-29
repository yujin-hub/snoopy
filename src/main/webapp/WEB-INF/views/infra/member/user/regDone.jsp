<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">
	<head>		
	<meta charset="utf-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="format-detection" content="telephone=no">
	
	<meta property="og:type" content="website">

	<meta property="og:title" content="올리브영 공식 온라인몰">
	<meta property="og:description" content="대한민국 NO.1 헬스&뷰티 스토어 OLIVEYOUNG" >

	<title>회원가입</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2405cb6e30cd78e7478b78325118dec&libraries=services"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.oliveyoung.co.kr/pc-static-root/css/style.css?dumm=202207250001">
    <link rel="shortcut icon" type="image/x-icon" href="https://cdn.icon-icons.com/icons2/236/PNG/256/Fruit_Olive_Green_26369.png"> 
    
   	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">    
    <!-- user css -->
    <link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" /> 
    
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
	<!-- 헤더  -->
	<div style="background-color: #66865B;">
		<br>
		<div class= "container" id="wid">
			<div class="row">
				<div class="col-2">
					<img src="../../resources/images/cjone.jpg"> 
				</div>
				<div class="col-2 top">
					<img src="../../resources/images/young.jpg">
				</div>
			</div>
			<span class="oy">대한민국을 대표하는 HEALTH & BEAUTY STORE</span>
			<h1 class="oy2"><a href="../item/itemList"><img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png"></a></h1>
		</div>
	</div> 
	<br>
	<br>
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
	<!-- #Footer -->
	<div id="footer" style="background-color: #66865B;">
		<li>
			<p>대표이사 차인혁(CHA IN HYOK) 주소 04323 서울시 용산구 한강대로 366 트윈시티 10층 CJ ONE 고객센터 1577-8888 사업자 등록번호</p>
			<p>104-81-36565</p>
			<p>호스팅사업자 CJ올리브네트웍스 통신판매업신고번호 2017-서울용산-0451</p>
		</li>
		<br>
		<p><img src="../../resources/images/net.jpg"> Copyright (c)2016 CJ OLIVENETWORKS. All Rights Reserved</p>
		<br>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>