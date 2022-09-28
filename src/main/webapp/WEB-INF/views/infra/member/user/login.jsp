<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%-- <%@ page session="false" %> --%>

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

	<title>로그인</title>
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
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	
	<style type="text/css">
		h1 {
			text-align: center;
		}
		
		a:hover {
			color: #8bb011;
		}
	</style>


</head>
    
<body>

	<!-- 헤더  -->
	<div id="Header">
		<div class="top_util">
			<ul class="menu_list" id="menu_list_header">
				<li class="join"><a href="../member/regForm" data-attr='공통^헤더^회원가입'>회원가입</a></li>
				<li class="login"><a href="../member/login" data-attr='공통^헤더^로그인'>로그인</a></li>
				<li class="cart"><a href="../member/mypage"data-attr='공통^헤더^장바구니'>마이페이지<span id="cartToCnt"></span></a></li>
			</ul>
		</div>
		
		<form autocomplete="off">
			<div class="header_inner" >
	            <h1><a href="/item/itemList"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>
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

	<br>
	<br>
	<div class="container" style="background-color: #fcfcfc; border-radius:10px; padding-top: 2px; padding-bottom: 50px; width: 750px;">
		<div class= "container" style="width: 400px; margin: auto;">
			<br>
			<br>
			<br>
			<br>
			<h1>LOGIN</h1>
			<br>
			<div class="row gy-1">
				<label for="id" class="form-label">ID</label>
				<div class="input-group mb-3">
		 			 <input type="text" class="form-control" placeholder=" 아이디 입력" id="userID" name="userID">
				</div>
				<br>
				<label for="id" class="form-label">Password</label>
				<div class="input-group mb-3">
		 			 <input type="password" class="form-control" placeholder=" 비밀번호 입력 (8~12자 영문자 + 숫자 + 특수문자)" id="pw" name="pw">
				</div>
			</div>
		</div>
		<div class="form-check" style="margin-left: 155px;">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">자동 로그인</label>
		</div>
		<div class= "container" style="width: 400px; margin: auto;">
			<span style="float:right;"><a href="../member/findPW">비밀번호 찾기</a></span>
			<span style="float:right;">&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp; </span>
			<span style="float:right;"><a href="../member/findID">아이디 찾기</a></span>
			<br>
			<br>
			<br>
			sessSeq: <c:out value="${sessSeq }"/><br>
			sessId: <c:out value="${sessId }"/><br>
			<div class="d-grid gap-2" style="text-align: center;"> 
				 <button class="btn btn-dark btn-lg" type="button" style="font-size: 20px;" id="btnLogin">로그인</button>
			</div>
			<br>
			<br>
		</div>
		<div class= "container" style="width: 550px;">
			<hr style="border:1px solid; display: block !important; width: 100% !important;">
		</div>
		<div class= "container" style="width: 400px; margin: auto;">
			<br>
			<br>
			<div class="row gy-2">
			<div class="d-grid gap-2 btn-sm">
			  <button class="btn btn-warning" type="button"><i class="fa-solid fa-comments"></i> Kakao로 시작하기</button>
			</div>
			<div class="d-grid gap-2 btn-sm">
			  <button class="btn btn-success" type="button"><i class="fa-brands fa-neos"></i> Naver로 시작하기</button>
			</div>
			<div class="d-grid gap-2 btn-sm">
			  <button class="btn btn-danger" type="button"><i class="fa-brands fa-google"></i> Google로 시작하기</button>
			</div>
			<div class="d-grid gap-2 btn-sm">
			  <button class="btn btn-primary" type="button"><i class="fa-brands fa-facebook"></i> Facebook으로 시작하기</button>
			</div>
		</div>
			<br>
			<br>
			<br>
			<span style="float: left;">아직 회원이 아니신가요?&nbsp;&nbsp;&nbsp;</span>
			<span style="float: left; color: blue;"><a href="../member/regForm"><u>회원가입</u></a></span>
			<br>
			<br>
			<br>
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

<script type="text/javascript">
	$("#btnLogin").on("click", function(){
		if(validation() == false) return false;
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "userID" : $("#userID").val(), "pw" : $("#pw").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/item/itemList"; 
				} else {
					alert("아이디(로그인 전용 아이디) 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.");
				}
			}
		});
	});
	
	validation = function() {
		if(!checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해주세요")) return false;
		if(!checkNull($("#pw"), $.trim($("#pw").val()), "비밀번호를 입력해주세요")) return false;
	}  
	
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>

</body>
</html>