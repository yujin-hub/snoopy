<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

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

	<title>아이디찾기</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
		}
		
		#wid4{
			width: 900px;
			background-color: #F6F6F6;
		}
		
		#wid5{
			width: 400px;
			background-color: #F6F6F6;
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
    	
    	#hr4{
    		border: 1px solid; 
    		display: block !important;
    		width: 0.1% !important;
    		height: 500px !important;
    	}
    	
		#font{
			font-size: 17px;
		}
		
		#gray{
			color: #6B6B6B;
			font-size: 16px;
		}
		
		#red{
			color: #D12323;
			font-size: 16px;
		}
		
		#right {
			float: right;
		}
		
		.form-control{
			width: 350px;
		}
		
		.btn2{
			background-color: #353535;
			color: white;
			width: 350px;
			font-size: 18px;
			border-radius: 0px;
		}
		
		.btn3{
			background-color: #353535;
			color: white;
			width: 150px;
			font-size: 18px;
			border-radius: 0px;
		}
		
		.cursor{
			cursor: pointer;
		}
		
		a:hover {
			color: #4c4c4c;
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
	<!-- 본문 -->
	<div class="container" id="wid2">
		<h1 style="display: inline;">아이디 찾기</h1> 
		<span id="font">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 아이디가 기억나지 않으세요? 원하시는 방법을 선택해 아이디를 확인하실 수 있습니다.</span>
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
		<div class="container" id="wid4">
			<div class="row">
				<div class="col-6">
					<h2>간편 찾기</h2>
					<br>
					<span id="gray">입력하신 정보는 아이디 찾기에만 사용되며</span><br>
					<span id="red">저장되지 않습니다.</span>
					<div class="container" id="wid5">
						<br>
 						<input type="text" class="form-control" placeholder="이름을 입력해주세요." aria-label="Username" aria-describedby="basic-addon1">
 						<br>
 						<input type="text" class="form-control" placeholder="법정생년월일 6자리를 입력해주세요." aria-label="dob" aria-describedby="basic-addon1">
 						<br>
 						<input type="text" class="form-control" placeholder="휴대전화번호 뒤 7~8자리를 입력해주세요. (01x 제외)" aria-label="tel" aria-describedby="basic-addon1">
						<br>
						<a href="../member/idSetDone">
							<button type="button" class="btn btn2">아이디 찾기</button>
						</a>
					</div>
				</div>
				<div class="col-6">
					<h2>인증기관을 통한 찾기</h2>
					<br>
					<span id="gray">본인인증 시 제공되는 정보는</span>
					<span id="red">해당 인증기관에서 직접 수집하며,</span><br>
					<span id="gray">인증 이외의 용도로 이용 또는 저장되지 않습니다.</span>
					<div class="container" id="wid5">
						<br>
						<br>
						<div class="row gx-5">
							<div class="col-6">
								<center><img src="../../resources/images/phone.jpg"></center>
							</div>
							<div class="col-6">
								<center><img src="../../resources/images/cert.jpg"></center>
							</div>
						</div>
						<br>
						<br>
						<div class="row gx-5">
							<div class="col-6">
								<center><button type="button" class="btn btn3">휴대전화 인증</button></center>
							</div>
							<div class="col-6">
								<center><button type="button" class="btn btn3">공인인증서 인증</button></center>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>
		</div>
		<br>
	</div>		
	<br>	
	<br>	
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