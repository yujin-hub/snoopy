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

	<title>마이페이지</title>
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
		
		.pic{
			border: 1px solid #C2C2C2;
			border-radius: 15px;
			height: 285px;
		}
		
		#pic{
			border-radius: 100%;
		}
	
		hr{
			border: 1px solid; 
    		display: block !important;
    		width: 200px !important;
		}
		
		.hr1{
			border: 1px solid; 
    		display: block !important;
    		width: 620px !important;
    		margin-left: 15px;
		}

		.btn1{
			background-color: white;
			--bs-btn-hover-border-color: white; 
		}
		
		.nick{
			margin-left: 62px;
			font-size: 17px;
		}
		
		.font{
			margin-top: 10px;
		}
		
		.font1{
			font-size: 20px;
			font-weight: bold;
			margin-left: 15px;
		}
		
		.font2{
			font-size: 16px;
			font-weight: bold;
			margin-left: 15px;
		}
		
		.font3{
			font-size: 16px;
			margin-left: 15px;
		}
		
		.font4{
			font-size: 12px;
		}

		.left{
			margin-left: 16px;
			font-size: 13px;
		}

		.left1{
			margin-left: 25px;
		}
		
		.btn2{
			margin-top: 13px;
			--bs-btn-border-color: #e8e8e8;
			--bs-btn-hover-color: #9DCC30;
			--bs-btn-hover-border-color: #9DCC30; 
		}
		
		.btn3{
			margin-top: 13px;
			color: #9DCC30 (--bs-btn-active-color);
   			--bs-btn-active-border-color: #9DCC30;
   			--bs-btn-active-color: #9DCC30;
		}

		.btn-space{
		    margin-right: 5px;
		}
		
		.btn4{
			margin-top: 13px;
			--bs-btn-border-color: #e8e8e8;
			--bs-btn-hover-color: #9DCC30;
			--bs-btn-hover-border-color: #9DCC30; 
		}
		
		.btn5{
			margin-top: 13px;
			color: #9DCC30 (--bs-btn-active-color);
   			--bs-btn-active-border-color: #9DCC30;
   			--bs-btn-active-color: #9DCC30;
		}
		
		.mid{
			text-align: center;
		}
		
	</style>
</head>
    
<body>

	<!-- 헤더  -->
	<div id="Header">
		<div class="top_util">
			<ul class="menu_list" id="menu_list_header">
				<li class="join"><a href="/member/regForm" data-attr='공통^헤더^회원가입'>회원가입</a></li>
				<li class="login"><a href="/member/login" data-attr='공통^헤더^로그인'>로그인</a></li>
				<li class="cart"><a href="/member/mypage"data-attr='공통^헤더^장바구니'>마이페이지<span id="cartToCnt"></span></a></li>
			</ul>
		</div>
		
		<form autocomplete="off">
			<div class="header_inner" >
	            <h1><a href="../../item/itemList"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>
				<div class="search_box" id="w_search_box">
					<input type="hidden" name="chkButton" id="chkButton">		
					<input type="text" id="query" class="inp_placeholder">
					<button id="searchSubmit">검색</button>
					<div class="search_layer">
						<div class="layer_inner"></div>
					</div>
				</div>
				<ul class="mymenu_area">
					<li class="store ">
						<a href="#" class="mymenu_layer" title="관심 매장소식 자세히보기 열기/닫기">관심 매장소식</a>
					</li>
					<li class="recent">
						<a href="javascript:;" class="mymenu_layer" title="최근 본 상품 자세히보기 열기/닫기">최근 본 상품</a>
					</li>
				</ul>
			</div>
		</form>
	</div>

	<div id="Gnb" class="main gen1">
		<div id="gnbWrap">
			<a href="#" id="btnGnbOpen">카테고리</a>
			<!-- 전체 카테고리 레이어 -->
			<div class="layer_all_menu" id="gnbAllMenu">
				<ul class="all_menu_wrap">
					<li>
						<h2>뷰티</h2>
						<div class="sub_menu_box">
						</div>
					</li>
				</ul>
				<button id="btnGnbClose">전체 카테고리 창 닫기</button>
			</div>	
			<!--// 전체 카테고리 레이어 -->

			<ul class="gnb_menu_list">
					<li>
						<a href="https://www.oliveyoung.co.kr/store/main/getHotdealList.do"
						   data-ref-linkUrl="main/getHotdealList.do" 
						   data-attr="공통^GNB^오특"><span>오특</span>
						</a>
					</li>
					<li>
						<a href="https://www.oliveyoung.co.kr/store/main/getNewList.do"
						   data-ref-linkUrl="main/getNewList.do" 
						   data-attr="공통^GNB^신상"><span>신상</span>
						</a>
					</li>
					<li>
						<a href="https://www.oliveyoung.co.kr/store/main/getBestList.do"
						   data-ref-linkUrl="main/getBestList.do" 
						   data-attr="공통^GNB^랭킹"><span>랭킹</span>
						</a>
					</li>
					<li>
						<a href="https://www.oliveyoung.co.kr/store/planshop/getSpcShopDetail.do?dispCatNo=500000200080001"
						   data-ref-linkUrl="planshop/getSpcShopDetail.do?dispCatNo=500000200080001" 
						   data-attr="공통^GNB^프리미엄관"><span>프리미엄관</span>
						</a>
					</li>
					<li>
						<a href="https://www.oliveyoung.co.kr/store/main/getPlanShopList.do"
						   data-ref-linkUrl="main/getPlanShopList.do" 
						   data-attr="공통^GNB^기획전"><span>기획전</span>
						</a>
					</li>
					<li>
						<a href="https://www.oliveyoung.co.kr/store/main/getSaleList.do"
						   data-ref-linkUrl="main/getSaleList.do" 
						   data-attr="공통^GNB^세일"><span>세일</span>
						</a>
					</li>
					<li>
						<a href="https://www.oliveyoung.co.kr/store/giftCardGuide/getGiftCardGuide.do"
						   data-ref-linkUrl="giftCardGuide/getGiftCardGuide.do" 
						   data-attr="공통^GNB^기프트카드"><span>기프트카드</span>
						</a>
					</li>
					<li>
						<a href="https://www.oliveyoung.co.kr/store/main/getMembership.do"
						   data-ref-linkUrl="main/getMembership.do" 
						   data-attr="공통^GNB^멤버십/쿠폰"><span>멤버십/쿠폰</span>
						</a>
					</li>
					<li>
						<a href="https://www.oliveyoung.co.kr/store/main/getEventList.do"
						   data-ref-linkUrl="main/getEventList.do" 
						   data-attr="공통^GNB^이벤트"><span>이벤트</span>
						</a>
					</li>
				</ul>
				<script type="text/javascript">
					$('.gnb_menu_list').click(function() {
						localStorage.removeItem("prdSort");
					});
				</script>
			</ul>
		</div>
	</div>

	<div class="container" id="wid">
		<br>
		<br>
		<div class="row">
			<div class="col-2 text">
				<span class="cursor" href="/member/mypage">마이페이지</span>
				<br>
				<br>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link ab" href="/member/mypageOrder">주문/배송 조회</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="/member/mypageSecession">회원 탈퇴</a>
					</li>
				</ul>
			</div>
			<div class="col-10">
				<div class="row">
					<div class="col-3 pic">
						<br>
						<br>
						<center><img src="../../resources/images/pro.jpg" id="pic"></center>
						<br>
						<span class="nick">cuj0405
						<a href="/member/mypageMod" class="ab">
							<button type="button" class="btn btn1"><i class="fa-solid fa-gear"></i></button></span>
						</a>
						<br>
						<hr>
						<div class="row mid">
							<div class="col-4">
								<span>리뷰</span>
								<br>
								<span>0</span>
							</div>
							<div class="col-4">
								<span>도움</span>
								<br>
								<span>0</span>
							</div>
							<div class="col-4">
								<span>랭킹</span>
								<br>
								<span>0</span>
							</div>
						</div>
					</div>
					<div class="col-9 font">
						<span class="font1">기본 프로필</span>
						<hr class="hr1">
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>이름</span>
							</div>
							<div class="col-9 font3">
								<span>최유진</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>성별</span>
							</div>
							<div class="col-9 font3">
								<span>여성</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>생년월일</span>
							</div>
							<div class="col-9 font3">
								<span>1999.04.05</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>휴대폰</span>
							</div>
							<div class="col-9 font3">
								<span>010-1111-1111</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>주소</span>
							</div>
							<div class="col-9 font3">
								<span>06611</span>
								<br>
								<span>서울특별시 서초구 서초대로77길 55 에이프로스퀘어 3층</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>이메일</span>
							</div>
							<div class="col-9 font3">
								<span>cuj0405@naver.com</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>닉네임</span>
							</div>
							<div class="col-9 font3">
								<span>유진</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>자기소개</span>
							</div>
							<div class="col-9 font3">
								<span>뷰티에 관심이 많은 20대입니다~!</span>
							</div>
						</div>
						<br>
						<hr class="hr1">
						<br>
						<span class="font1">나의 피부 컨디션 & 관심 카테고리</span>
						<br>
						<span class="left">나와 비슷한 피부 컨디션을 가진 고객의 리뷰와 나에게 딱 맞는 상품을 모아볼 수 있어요</span>
						<div class="row">
							<div class="col-2 left1">
								<br>
								<span>피부 타입</span>
							</div>
							<div class="col-9">
								<button type="button" class="btn btn3 btn-space active">지성</button>
								<button type="button" class="btn btn2 btn-space">건성</button>
								<button type="button" class="btn btn2 btn-space">복합성</button>
								<button type="button" class="btn btn2 btn-space">민감성</button>
								<button type="button" class="btn btn2 btn-space">약건성</button>
								<button type="button" class="btn btn2 btn-space">트러블성</button>
								<button type="button" class="btn btn2 btn-space">중성</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 left1">
								<br>
								<span>피부 톤</span>
							</div>
							<div class="col-9">
								<button type="button" class="btn btn2 btn-space">쿨톤</button>
								<button type="button" class="btn btn2 btn-space">웜톤</button>
								<button type="button" class="btn btn2 btn-space">봄웜톤</button>
								<button type="button" class="btn btn2 btn-space">여름쿨톤</button>
								<button type="button" class="btn btn3 btn-space active">가을웜톤</button>
								<button type="button" class="btn btn2 btn-space">겨울쿨톤</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 left1">
								<br>
								<span>피부 고민</span>
								<br>
								<span class="font4">(복수 선택 가능)</span>
							</div>
							<div class="col-9">
								<button type="button" class="btn btn5 btn-space active">잡티</button>
								<button type="button" class="btn btn4 btn-space">미백</button>
								<button type="button" class="btn btn4 btn-space">주름</button>
								<button type="button" class="btn btn4 btn-space">각질</button>
								<button type="button" class="btn btn5 btn-space active">트러블</button>
								<button type="button" class="btn btn5 btn-space active">블랙헤드</button>
								<button type="button" class="btn btn4 btn-space">피지과다</button>
								<button type="button" class="btn btn5 btn-space active">민감성</button>
								<button type="button" class="btn btn5 btn-space active">모공</button>
								<button type="button" class="btn btn4 btn-space">탄력</button>
								<button type="button" class="btn btn4 btn-space">홍조</button>
								<button type="button" class="btn btn4 btn-space">아토피</button>
								<button type="button" class="btn btn4 btn-space">다크서클</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 left1">
								<br>
								<span>관심 카테고리</span>
								<br>
								<span class="font4">(복수 선택 가능)</span>
							</div>
							<div class="col-9">
								<button type="button" class="btn btn5 btn-space active">스킨케어</button>
								<button type="button" class="btn btn4 btn-space">마스크팩</button>
								<button type="button" class="btn btn4 btn-space">클렌징</button>
								<button type="button" class="btn btn4 btn-space">선케어</button>
								<button type="button" class="btn btn5 btn-space active">더모 코스메틱</button>
								<button type="button" class="btn btn5 btn-space active">메이크업</button>
								<button type="button" class="btn btn5 btn-space active">네일</button>
								<button type="button" class="btn btn4 btn-space">바디케어</button>
								<button type="button" class="btn btn5 btn-space active">헤어케어</button>
								<button type="button" class="btn btn4 btn-space">향수/디퓨저</button>
								<button type="button" class="btn btn5 btn-space active">미용소품</button>
								<button type="button" class="btn btn4 btn-space">남성</button>
								<button type="button" class="btn btn4 btn-space">건강/위생용품</button>
								<button type="button" class="btn btn4 btn-space">건강식품</button>
								<button type="button" class="btn btn4 btn-space">푸드</button>
								<button type="button" class="btn btn4 btn-space">라이프/홈</button>
								<button type="button" class="btn btn4 btn-space">반려동물</button>
								<button type="button" class="btn btn4 btn-space">베이비</button>
							</div>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- #Footer -->
	<div id="Footer" class="m2105">
		<div class="twoConts">
			<div class="conts">
				<ul class="list-area">
					<li>
						<p class="logo"><a href="javascript:common.link.moveMainHome();"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/footer/foot_logo.png" alt="OLIVEYOUNG"></a></p>
						<h2>씨제이올리브영 주식회사</h2>
						<p>대표이사 : 구창근 | 사업자등록번호 : 809-81-01574</p>
						<p>주소 : (04323) 서울특별시 용산구 한강대로 372, 24층 <br>(동자동, KDB타워)</p>
						<p>호스팅사업자 : CJ 올리브네트웍스</p>
						<p>통신판매업신고번호 : 2019-서울용산-1428</p>
						<p><a href="mailto:oliveweb@cj.net" class="email_addr">이메일 : oliveweb@cj.net</a></p>
					</li>
					<li>
						<ul class="list-link">
							<li><a href="javascript:common.link.moveTermsPage();">이용약관</a><a href="javascript:common.link.moveLegalPage();">법적고지</a></li>
							<li><a href="javascript:common.link.movePrivacyPage();">개인정보처리방침</a></li>
							<li><a href="javascript:common.link.moveYouthProtectionPage();">청소년보호방침</a></li>
							<li><a href="javascript:common.link.moveMultimediaPage();">영상정보처리기기 운영/관리 방침</a></li>
							<li><a href="javascript:common.link.moveDenyEmailPage();">이메일무단수집거부</a></li>
						</ul>
					</li>
					<li>
						<h2>하나은행 구매안전 서비스</h2>
						<p>
						올리브영은 현금 결제한 금액에 대해<br>
						하나은행과 채무지급보증 계약을체결<br>
						하여 안전한 거래를 보장하고 있습니다<br>
						</p>
					</li>
				</ul>
			</div>
		</div>
		<div class="fourConts">
			<div class="conts">
				<ol>
					<li class="isms">정보보호 관리체계 ISMS 인증획득
						<span class="bar">인증범위 : 온라인 쇼핑몰 운영(CJ올리브영)</span>
						<span class="bar">유효기간 : 2020.12.02 - 2023.12.01</span>
					</li>
					<li class="ncsi">2017~2021 국가고객만족도(NCSI) 헬스앤뷰티전문점 업계 최초 5년 연속 1위​</li>
				</ol>
			</div>
		</div>
	</div>

	<a id="back-to-top" href="#" class="btn btn-outline-dark back-to-top-css" role="button" title="Move Top" data-toggle="tooltip" data-placement="left">
	<span class="glyphicon glyphicon-chevron-up"><i class="fa-solid fa-angles-up"></i><br>TOP</span>
	</a>

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
	 
	 
	 function my()
		{
		     location.href = "mypage.html";
		}
	 
	 function mod()
		{
		     location.href = "mypageMod.html";
		}
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>