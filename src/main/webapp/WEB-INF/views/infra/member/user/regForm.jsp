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
    	
    	h5 {
    		margin-left: 20px;
    	}
    	
    	hr {
    		border: 1px solid; 
    		display: block !important;
    		width: 100% !important;
    	}
    	
    	#hr2 {
    		border: 1px solid; 
    		display: block !important;
    		width: 100px !important;
    	}
    	
    	#mydiv {
	        height: 200px;
	        overflow: scroll;
	        background-color: #fcfcfc;
	    }
	    
	    #mydiv2 {
	    	background-color: #fcfcfc;
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
					<a href="/item/itemList"><img src="../../resources/images/young.jpg"></a>
				</div>
			</div>
			<span class="oy">대한민국을 대표하는 HEALTH & BEAUTY STORE</span>
			<h1 class="oy2"><a href="/item/itemList"><img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png"></a></h1>
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
	<center><img src="../../resources/images/icon.jpg"></center>
	<br>
	<br>
	<div class= "container" id="wid2">
		<hr>
		<h5>[필수] 약관의 효력 및 개정</h5>
		<hr>
		<div id="mydiv">
				제1조(목적) <br>
				&nbsp;&nbsp;이 약관은 업체 회사(전자상거래 사업자)가 운영하는 업체 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․ <br>
				&nbsp;&nbsp;의무 및 책임사항을 규정함을 목적으로 합니다.<br>
  				&nbsp;&nbsp;※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」<br><br>
				제2조(정의) <br>
 				&nbsp;&nbsp;① “몰”이란 업체 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, <br>
 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다. <br>
			 	&nbsp;&nbsp;② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br> 
			  	&nbsp;&nbsp;③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다. <br>
			 	&nbsp;&nbsp;④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다. <br><br>
				제3조 (약관 등의 명시와 설명 및 개정) <br>
			 	&nbsp;&nbsp;① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, <br>
			 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다. <br>
			  	&nbsp;&nbsp;② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 <br>
			  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제공하여 이용자의 확인을 구하여야 합니다. <br>
			  	&nbsp;&nbsp;③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 <br>
			  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;정보 보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 
			  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. <br>
			  	&nbsp;&nbsp;④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관 <br>
			  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다.  이 경우 "몰“은 개정 전 내용과 
			  	개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. <br>
			  	&nbsp;&nbsp;⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. <br>
			  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 
			  	“몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다. <br> 
			  	&nbsp;&nbsp;⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 「전자상거래 등에서의 <br>
			  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소비자 보호지침」및 관계법령 또는 상관례에 따릅니다. <br><br>
				제4조(서비스의 제공 및 변경) <br>
 			 	&nbsp;&nbsp;① “몰”은 다음과 같은 업무를 수행합니다. <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결 <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 구매계약이 체결된 재화 또는 용역의 배송 <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 기타 “몰”이 정하는 업무 <br>
			  	&nbsp;&nbsp;② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 <br>
			 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다. <br>
			 	&nbsp;&nbsp;③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다. <br>
			 	&nbsp;&nbsp;④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다. <br><br>
				제5조(서비스의 중단) <br>
				&nbsp;&nbsp;① “몰”은 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. <br>
				&nbsp;&nbsp;② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;그러하지 아니합니다. <br>
				&nbsp;&nbsp;③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소비자에게 보상합니다. 다만, “몰”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 
				통용되는 통화가치에 상응하는 현물 또는 현금으로 <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이용자에게 지급합니다. <br>
		</div>
 		<hr>
 		<div class="form-check" style="margin-left: 950px;">
		 	<input class="form-check-input" type="radio" name="agree">
			<label class="form-check-label" for="flexRadioDefault1">동의합니다.</label>
		</div>
 		<hr>
 		<br>
		<!-- <hr>
		<h5>[선택] 정보동의 수신 여부</h5>
		<hr>
		<div id="mydiv2">
			※ 광고성 정보 수신에 동의합니다.<br><br>
			<div class="form-check form-check-inline">
			  	<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
			  	<label class="form-check-label" for="inlineCheckbox1">이메일</label>
			</div>
			<div class="form-check form-check-inline">
			  	<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
			  	<label class="form-check-label" for="inlineCheckbox2">SMS</label>
			</div>
			<div class="form-check form-check-inline">
			  	<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option3">
			  	<label class="form-check-label" for="inlineCheckbox1">우편(DM)</label>
			</div>
			<div class="form-check form-check-inline">
			  	<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option4">
			  	<label class="form-check-label" for="inlineCheckbox2">전화(TM)</label>
			</div>
		</div>
		<hr>
		<div class="form-check" style="margin-left: 900px;">
			<input class="form-check-input" type="radio" name="flexRadioDefaul2t" id="flexRadioDefault2">
			<label class="form-check-label" for="flexRadioDefault2">수신하지 않겠습니다.</label>
		</div>
		<hr>
		<br> -->
		<br>
		<a href="/member/regForm2">
			<button type="button" class="btn btn-secondary" style="float: right;" id="btn">다음 <i class="fa-solid fa-angle-right"></i></button>
		</a>
	</div>
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


	<script type="text/javascript">
		$("#btn").on("click", function(){
			if($(':radio[name="agree"]:checked').length < 1){
			    alert('필수 약관에 동의해주세요.'); 
			    return false;
			}
		}); 
		
	</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>