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
		}
			
		.wid2{
			width: 13%;
			text-align: center;
		}
		
		.wid3{
			width: 7%;
			text-align: center;
		}
		
		#num{
			font-size: 45px;
			font-weight: bold;
		}
		
		#num2{
			font-size: 45px;
			color: #9DCC30;
			font-weight: bold;
		}
		
		#size{
			font-size: 23px;
		}
		
		.mid{
			margin-left: 30px;
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
		
	</style>
</head>
    
<body>

	<!-- 헤더  -->
	<div id="Header">
		<div class="top_util">
			<ul class="menu_list" id="menu_list_header">
				<li class="login">
					<c:if test="${sessSeq eq null}">
		        		<!-- 로그인전 -->
		            	<div class="before">
		            		<a href="/member/regForm" data-attr='공통^헤더^회원가입' title="회원가입">회원가입</a>
		            		&nbsp; | &nbsp; 
		                	<a href="/member/login" data-attr='공통^헤더^로그인' title="로그인">로그인</a>
		            	</div>
		        	</c:if>
		            <c:if test="${sessSeq ne null}">
			           	<div class="after">
							<a href="/item/itemList" data-attr='공통^헤더^로그인'><c:out value="${sessId }"/>님, 반갑습니다</a>
							&nbsp; | &nbsp; 
							<a href="/member/mypage"data-attr='공통^헤더^장바구니'>마이페이지<span id="cartToCnt"></span></a>
							&nbsp; | &nbsp; 
							<a href="/member/logoutProc" data-attr='공통^헤더^로그아웃' title="로그아웃" type="button" id="btnLogout">로그아웃</a>
			            </div>
		            </c:if>
				</li>
			</ul>
		</div>
		
		<form autocomplete="off">
			<div class="header_inner" >
	            <h1><a href="../item/itemList"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>
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

	<div class= "container" id="wid">
		<br>
		<br>
		<div class="row">
			<div class="col-2 text">
				<span>마이페이지</span>
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
						<span><c:out value="${my.userGrade }"/> &nbsp;&nbsp;<c:out value="${my.nickname }"/>님 반갑습니다.</span>
					</div>
					<div class="col-2 profile">
						<span class="cursor font7"><a href="/member/mypageProfile">나의 프로필 &nbsp;&nbsp;&nbsp;></a></span>
					</div>
					<div class="row left">
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
		<br>
		<div class="row">
			<div class="col-2">
			</div>
			<div class="col-10">
				<span class="font3">주문/배송</span>
				&nbsp;&nbsp;
				<span class="font4">(최근&nbsp;1개월)</span>
				<br>
				<br>
				<div class="mydiv">
					<br>
					<br>
					<div class="row mid">
						<div class="col-1 wid2">
							<span id="num">0</span>
							<br>
							<span>주문접수</span>
						</div>
						<div class="col-1 wid3">
							<span id="size"><i class="fa-solid fa-angle-right"></i></span>
						</div>
						<div class="col-1 wid2">
							<span id="num">1</span>
							<br>
							<span>결제완료</span>
						</div>
						<div class="col-1 wid3">
							<span id="size"><i class="fa-solid fa-angle-right"></i></span>
						</div>
						<div class="col-1 wid2">
							<span id="num">0</span>
							<br>
							<span>상품준비중</span>
						</div>
						<div class="col-1 wid3">
							<span id="size"><i class="fa-solid fa-angle-right"></i></span>
						</div>
						<div class="col-1 wid2">
							<span id="num">0</span>
							<br>
							<span>배송중</span>
						</div>
						<div class="col-1 wid3">
							<span id="size"><i class="fa-solid fa-angle-right"></i></span>
						</div>
						<div class="col-1 wid2">
							<span id="num2">1</span>
							<br>
							<span>배송완료</span>
						</div>
					</div>
					<br>
					<br>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<div class="col-2">
			</div>
			<div class="col-10">
				<span class="font3">좋아요</span>
				<hr>
				<br>
				<br>
				<br>
				<div class="font5">
					<i class="fa-solid fa-circle-exclamation"></i>
				</div>
				<br>
				<div class="font6">
					<span>좋아요한 상품이 없습니다.</span>
				</div>
				<br>
				<br>				
			</div>
		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<div class="col-2">
			</div>
			<div class="col-10">
				<div class="row">
					<div class="col-6">
						<span class="font3">1 : 1 문의내역</span>
						<hr class="hr2">
						<div class="font6">
							<br>
							<br>
							<br>
							<span>최근 1개월간 문의하신 내용이 없습니다.</span>
							<br>
							<br>
							<br>
						</div>
					</div>
					<div class="col-6">
						<span class="font3">상품 Q&A 내역</span>
						<hr class="hr2">
						<div class="font6">
							<br>
							<br>
							<br>
							<span>최근 1개월간 문의하신 내용이 없습니다.</span>
							<br>
							<br>
							<br>
						</div>
					</div>
				</div>
				<br>
				<br>
				<br>
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
	 
	 
		$("#btnLogout").on("click", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/logoutProc"
				,data: {}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/member/login";
					} else {
						alert("다시 시도해주세요.")
					}
				}
			});
		});
	 
	 
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>