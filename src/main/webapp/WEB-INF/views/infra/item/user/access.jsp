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

	<title>Olive Young!</title>
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
					<br>
					<h5 class="card-title mid">USER</h5>
					<br>
					<br>
					<br>
					  <img src="../../resources/images/main.jpg" class="card-img-top">
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
					<br>
					<h5 class="card-title mid">ADMIN</h5>
					<br>
					<br>
					<br>
					  <img src="../../resources/images/dmin.jpg" class="card-img-top">
					  <div class="card-body">
					  	<br>
					  	<br>
						<p class="card-text">코드그룹 / 코드 / 회원 / 상품관리</p>
						<br>
						<br>
					    <a href="/item/itemListDmin" class="btn btn1">바로가기</a>
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

<script type="text/javascript">
	
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>