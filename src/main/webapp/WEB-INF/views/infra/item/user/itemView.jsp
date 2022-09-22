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

	<title>클리오 프로아이팔레트 MD</title>
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
    	@font-face {
		    font-family: 'MICEGothic Bold';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
		    font-weight: 700;
		    font-style: normal;
		} 
		
		@font-face {
		    font-family: 'Pretendard-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
		    font-weight: 400;
		    font-style: normal;
		}

    	#wid {
			width: 1050px;
		}	
		
		#pad {
			margin-left:50px;
		}	
		
		#before { 
			font-family: 'MICEGothic Bold';
			text-decoration-line: line-through;
			color: #7E7474;
			font-size: 20px;
			line-height: 2em
		}
		
		#sale {
			font-family: 'MICEGothic Bold';
			color: #C63B3B;
			font-size: 25px;
			line-height: 2em
		}
		
		.badge {
			float: left;
			font-size: 12px;
		}
		
		#ship {
			font-size: 16px;
			font-weight: bold;
			color: #747474;
			margin-left: 20px;
		}
		
		#ship2 {
			font-size: 16px;
			color: #939393;
		}
		
		#left {
			font-size: 16px;
			color: #939393;
			margin-left: 86px;
		}
		
		hr {
    		border: 1px solid; 
    		display: block !important;
    		width: 520px !important;
    		color: #A19B9B;
    	}

		.hr {
			border: 1px solid; 
    		display: block !important;
    		width: 960px !important;
    		color: #A19B9B;
		}
		
		.hr2 {
			border: 1px solid; 
    		display: block !important;
    		width: 100% !important;
		}
		 
		#num {
			border: 0;
			font-size: 17px;
		}
		
		#sum {
			font-weight: bold;
			font-size: 20px;
			color: #B93131;
		}
		
		#btn {
			margin-left: 150px;
		}
		
		.btn1{
			background-color: #93961F;
			color: white;
			border-width: 1.5px;	
			font-size: 20px;
			font-weight: bold;
			border-radius: 0px;
		}
		
		.btn2{
			background-color: #FFFFFF;
			border-color: #93961F;
			border-width: 1.5px;	
			font-size: 20px;
			font-weight: bold;
			color: #93961F;
			border-radius: 0px;
		}
			
		section {
			display: none;
			padding: 20px 0 0;
			border-top: 1px solid #ddd;
			width: 1000px;
		}
		
		input {
			display: none;
		} 
		
		label {
			display: inline-block;
			padding: 20px 95px;
			font-size: 20px;
			text-align: center;
			color: #bbb;
			border: 3px solid transparent;
		}
		
		label:hover {
		  color: #93961F;
		  cursor: pointer;
		}
		
		input:checked + label {
		  border: 3px solid #93961F;
		  border-top: 3px solid #93961F;
		  border-bottom: 3px solid #93961F;
		}
					
		#tab1:checked ~ #content1,
		#tab2:checked ~ #content2, 
		#tab3:checked ~ #content3, 
		#tab4:checked ~ #content4,
		#tab5:checked ~ #content5,
		#tab6:checked ~ #content6 {
  				display: block;
  		}
  
  		#pic {
  			width: 700px;
  		}
  		
  		.notice {
  			font-size: 15px;
  		}
  		
  		.btn-f {
			background-color: #a4c82c;
			font-size: 15px;	
			color: white;	
			font-weight: bold;
  		}
  		
  		.accordion {
  		    --bs-accordion-btn-focus-border-color: #ffffff; 
   	 		--bs-accordion-btn-focus-box-shadow: #ffffff;
		    --bs-accordion-active-color: #black; 
		    --bs-accordion-active-bg: #ffffff;
		    --bs-accordion-btn-padding-y: 2rem;
		}
  		
  		.accordion-body {
  			background-color: #F9F9F9;
  		}
  		
  		.accordion-button {
  			font-size: 16px;
			position: relative;
  		}
  		
  		.q {
			font-size: 40px;
			font-weight: bold;
			color: #b7b7b7;  		
  		}
 
 		.a {
 			font-size: 40px;
			font-weight: bold;
			color: #93961F;  	
 		} 		
 		
 		.ques{
 			font-size: 16px;
 			font-family: 'Pretendard-Regular';
 		}
 		
 		.answ{
 			font-size: 16px;
 			font-family: 'Pretendard-Regular';
 			line-height: 30px;
 		}
 
 		.nick {
 			position: absolute;
 			left: 80%;
 		}
 		
 		.active>.page-link, .page-link.active {
		    color: black;
		    background-color: #ffffff;
		    border-color: #bfbfbf (--bs-pagination-active-border-color);
			border-width: 2px;
		}
		
		.pagination {
		    --bs-pagination-color: none (--bs-link-color);
		    --bs-pagination-active-border-color: black;
		 }
		 
		.info {
		 	font-size: 21px;
		 	font-weight: bold;
		 	color: #93961F;
		 }
		 
		#cdiv {
    		background-color: #f7f7f7;
    		line-height: 35px;
    		margin-left: 10px;
		}
		
		.top {
			margin-top: 7px;
		}
		
		.back-to-top-css {
		    position: fixed;
		    bottom: 20px;
		    right: 20px;
		}
		
		#gray{
			color: #6B6B6B;
			font-weight: bold;
		}
		
		#red{
			color: #D12323;
			font-weight: bold;
		}
		
		a:hover{
			color: #93961F;
		}
		
    </style>
</head>
    
<body>

	<!-- 헤더  -->
	<div id="Header">
		<div class="top_util">
			<ul class="menu_list" id="menu_list_header">
				<li class="join"><a href="../member/regForm" data-attr='공통^헤더^회원가입'>회원가입</a></li>
				<li class="login"><a href="../member/loginForm" data-attr='공통^헤더^로그인'>로그인</a></li>
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
	<br>
	<div class= "container" id="wid">
		<div class="row">
			<div class="col-5">
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true" style="width: 450px; height: 450px;">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015771628ko.jpg?l=ko" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015771617ko.jpg?l=ko" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015771626ko.jpg?l=ko" class="d-block w-100" alt="...">
						</div>
					</div>
				</div>
			</div>
			<div class="col-6" id="pad">
				<span>클리오 > </span>
				<br>
				<br>
				<h3>클리오 프로아이팔레트 AD</h3>
				<span id="before">32,000원</span>
				<span id="sale">&nbsp;&nbsp;&nbsp;22,400원</span>
				<br>
				<span class="badge rounded-pill" style="background-color: #6C9FC3;">오늘드림</span>
				<span class="badge rounded-pill" style="background-color: #E85858;">세일</span>
				<br>
				<hr>
				<h5>배송정보 <i class="fa-solid fa-circle-info"></i></h5>
				<br>
				<span id="ship">일반배송 | </span>
				<span id="ship2">&nbsp;2,500원 (20,000원 이상 무료배송)<br></span>
				<span id="left">올리브영 배송 | 평균 3일 이내 배송</span>
				<br>
				<br>
				<span id="ship">오늘드림 | </span>
				<span id="ship2">&nbsp;2,500원 또는 5,000원<br></span>
				<hr>
				<h5>상품선택</h5>
				<br>
				<select class="form-select" aria-label="Default select example" style="width: 300px;">
					<option selected>옵션을 선택하세요.</option>
					<option value="1">011. 아늑한 골목산책</option>
					<option value="2">012. 서울숲 가을바람</option>
					<option value="3">014. 한남동 아뜰리에</option>
					<option value="4">015. 캔버스 위 봄햇살</option>
					<option value="5">013. 저녁노을 피크닉</option>
					<option value="6">008. 인 투 레이스</option>
				</select>
				<hr>
				<br>
				<br>
				<span id="sum">상품금액 합계</span>
				<span id="sum" style="float: right;">0원</span>
				<hr>
				<br>
				<div id="btn">
					<a href="/payment/payForm">
						<button type="button" class="btn btn1 btn-lg">바로구매</button>
					</a>
					<button type="button" class="btn btn2 btn-lg">장바구니</button>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<div class="main left2">
			<input id="tab1" type="radio" name="tabs" checked> 
			<label for="tab1">상품설명</label>
			
			<input id="tab2" type="radio" name="tabs">
			<label for="tab2">리뷰</label>
			
			<input id="tab3" type="radio" name="tabs">
			<label for="tab3">Q&A</label>
			
			<input id="tab4" type="radio" name="tabs">
			<label for="tab4">구매정보</label>
			
			<section id="content1">
				<center>
					<img src="../../resources/images/detail.jpg" id="pic">
					<img src="../../resources/images/detail2.jpg" id="pic">
				</center>
			</section>
			
			<section id="content2">
				<hr class="hr2">
			</section>
			
			<section id="content3">
				<div class="row">
					<div class="col-7">
	 				<span class="notice">★ 상품 문의사항이 아닌 반품/교환관련 문의는 고객센터 1:1 문의를 이용해주세요.</span>
	 				</div>
	 				<div class="col-5">
	 				<button type="button" class="btn btn-f" style="float: right; width: 120px;" onClick="qna()"><i class="fa-solid fa-pen-clip"></i> 상품문의</button>
	 				</div>
			 	</div>
			 	<br>
			 	<br>
				<div class="accordion accordion-flush" id="accordionFlushExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingOne">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
								<span class="badge rounded-pill" style="background-color: #a3a3a3;">답변대기</span> 
								&nbsp;&nbsp; 봄웜라 걸치고 있는 여쿨은 몇호가 어울릴까요?
							   	<span class="nick">c** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.08.07</span>
							</button>
						</h2>
						<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">봄웜라 걸치고 있는 여쿨은 몇호가 어울릴까요?</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTwo">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
								<span class="badge rounded-pill" style="background-color: #a3a3a3;">답변대기</span> 
								&nbsp;&nbsp; 워터프루프인가요?
						   		<span class="nick">d** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.07.30</span>
							</button>
						</h2>
						<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">워터프루프인가요?</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingThree">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
								<span class="badge rounded-pill" style="background-color: #E85858;">답변완료</span> 
								&nbsp;&nbsp; 지금 사면 언제쯤 배송완료 되나요..?
							   	<span class="nick">t** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.07.25</span>							</button>
						</h2>
						<div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">지금 사면 언제쯤 배송완료 되나요..?</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="a">A</span>
									</div>
									<div class="col-10">
										<p class="answ">
											안녕하세요. 클리오 담당자입니다.
											<br><br>해당게시판은 상품문의 게시판으로
											<br>주문,배송,오늘의 드림등은 답변 어려우세요. ㅠㅠ
											<br>번거로우시겠지만, 올리브영 온라인몰 1:1 게시판으로 문의 부탁드립니다.
											<br><br>감사합니다.
											<br><br>※ 답변 내용은 각 브랜드사에서 작성되며, 올리브영의 서비스/정책과 상이할 수 있는 점 안내드립니다.
											<br>
											<br>
										</p>
									</div>
								</div>							
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingFour">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
							  	<span class="badge rounded-pill" style="background-color: #E85858;">답변완료</span> 
								&nbsp;&nbsp; 일본산원료가 들어가나요
							   	<span class="nick">r** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.07.13</span>
							</button>
						</h2>
						<div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">일본산원료가 들어가나요</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="a">A</span>
									</div>
									<div class="col-10">
										<p class="answ">
											안녕하세요. 클리오 담당자입니다.
											<br><br>문의주신 제품은 국내원료가 대부분이지만,
											<br>일부 소량 일본산 원료가 함유되어 있습니다.
											<br>또한 식품의약품안전처 화장품 안전기준에 관한 기준을 준수하고,
											<br>국내 사용이 허가된 원재료를 사용하여 제품을 생산 하였습니다.
											<br>특히나 일본산 원료의 경우는 식약처에서도 더 엄격히 관리하고 있습니다.
											<br>안심하고 사용 부탁드립니다.
											<br><br>감사합니다.
											<br><br>※ 답변 내용은 각 브랜드사에서 작성되며, 올리브영의 서비스/정책과 상이할 수 있는 점 안내드립니다.
											<br>
											<br>
										</p>
									</div>
								</div>							
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingFive">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
							  	<span class="badge rounded-pill" style="background-color: #E85858;">답변완료</span> 
								&nbsp;&nbsp; 봄웜 여쿨 긴가민가한데 저녁노을이나 캔버스 인투레이스 중 뭐가 괜찮을까요?
							   	<span class="nick">y** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.07.11</span>
							</button>
						</h2>
						<div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">봄웜 여쿨 긴가민가한데 저녁노을이나 캔버스 인투레이스 중 뭐가 괜찮을까요?</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="a">A</span>
									</div>
									<div class="col-10">
										<p class="answ">
											안녕하세요. 클리오 담당자입니다.
											<br><br>퍼스널 컬러는 개인의 피부톤, 눈썹색, 머리카락 ,눈동자색등에
											<br>따라 달라질 수 있어 정확한 안내는 어려우나
											<br>봄웜에 가깝다면 15호 캔버스 위 봄 햇살
											<br>여쿨에 가깝다면 13호 또는 14호가 적당할 것 같습니다.
											<br>참고하여 구매부탁드리며 올리브영 매장에 해당제품 일부
											<br>테스트 가능하니 테스트 후 신중한 구매 부탁드립니다.
											<br><br>감사합니다.
											<br><br>※ 답변 내용은 각 브랜드사에서 작성되며, 올리브영의 서비스/정책과 상이할 수 있는 점 안내드립니다.
											<br>
											<br>
										</p>
									</div>
								</div>							
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingSix">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
							 	<span class="badge rounded-pill" style="background-color: #E85858;">답변완료</span> 
								&nbsp;&nbsp; 12호 언제 재입고 되나요ㅠㅠ
							   	<span class="nick">h** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.06.01</span>
							</button>
						</h2>
						<div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">12호 언제 재입고 되나요ㅠㅠ</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="a">A</span>
									</div>
									<div class="col-10">
										<p class="answ">
											반갑습니다
											<br>올리브영 온라인몰입니다.
											<br><br>문의하신 재입고 일정은 정확한 확인이 어려운 점 양해 부탁드립니다.
											<br><br>상품란에서 [재입고 알림신청]을 해두시면,
											<br>재입고 시 안내를 드리고 있습니다.
											<br><br>※ 품절 상품 재입고 신청 방법
											<br>- PC : 이메일
											<br>- APP : APP PUSH / 이메일 가능
											<br><br>감사합니다.
											<br>
										</p>
									</div>
								</div>							
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingSeven">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
							  	<span class="badge rounded-pill" style="background-color: #E85858;">답변완료</span> 
								&nbsp;&nbsp; 11호 아늑한 골목산책 글리터 습식인가요 건식인가요?
							   	<span class="nick">h** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.05.28</span>
							</button>
						</h2>
						<div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques"> 11호 아늑한 골목산책 글리터 습식인가요 건식인가요?</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="a">A</span>
									</div>
									<div class="col-10">
										<p class="answ">
											안녕하세요. 클리오 담당자입니다.
											<br><br>해당제품 매트타입으로 건식입니다
											<br>감사합니다
											<br><br>※ 답변 내용은 각 브랜드사에서 작성되며, 올리브영의 서비스/정책과 상이할 수 있는 점 안내드립니다.
											<br>
											<br>
										</p>
									</div>
								</div>							
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingEight">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false" aria-controls="flush-collapseEight">
							 	<span class="badge rounded-pill" style="background-color: #E85858;">답변완료</span> 
								&nbsp;&nbsp; 첫주문 쿠폰 적용 안되는건가요?
							   	<span class="nick">r** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.05.27</span>
							</button>
						</h2>
						<div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">첫주문 쿠폰 적용 안되는건가요?</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="a">A</span>
									</div>
									<div class="col-10">
										<p class="answ">
											안녕하세요. 클리오 담당자입니다.
											<br><br>올리브영에서 진행하는 쿠폰의 경우
											<br>해당 게시판은 상품 문의 게시판으로 안내가 어려우세요.
											<br>번거로우시겠지만, 올리브영 온라인몰 1:1 게시판으로 문의 부탁드립니다.
											<br><br>감사합니다.
											<br><br>※ 답변 내용은 각 브랜드사에서 작성되며, 올리브영의 서비스/정책과 상이할 수 있는 점 안내드립니다.
											<br>
											<br>
										</p>
									</div>
								</div>							
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingNine">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false" aria-controls="flush-collapseNine">
							  	<span class="badge rounded-pill" style="background-color: #E85858;">답변완료</span> 
								&nbsp;&nbsp; 배송사가 어디인가요?
							   	<span class="nick">c** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.07.30</span>
							</button>
						</h2>
						<div id="flush-collapseNine" class="accordion-collapse collapse" aria-labelledby="flush-headingNine" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">배송사가 어디인가요?</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="a">A</span>
									</div>
									<div class="col-10">
										<p class="answ">
											안녕하세요. 클리오 담당자입니다.
											<br><br>본 공간은 상품 문의 게시판으로
											<br>올리브영에서 이용하는 택배사 안내는 어려우세요. ㅠㅠ
											<br>번거로우시겠지만, 올리브영 온라인몰 1:1 게시판으로
											<br>문의 부탁드립니다.
											<br><br>감사합니다.
											<br><br>※ 답변 내용은 각 브랜드사에서 작성되며, 올리브영의 서비스/정책과 상이할 수 있는 점 안내드립니다.
											<br>
											<br>
										</p>
									</div>
								</div>							
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTen">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapseTen">
							 	<span class="badge rounded-pill" style="background-color: #E85858;">답변완료</span> 
								&nbsp;&nbsp; 봄인투레이스가 아예 없어졌는데 단종인가요?
							   	<span class="nick">c** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.07.30</span>
							</button>
						</h2>
						<div id="flush-collapseTen" class="accordion-collapse collapse" aria-labelledby="flush-headingTen" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="q">Q</span>
									</div>
									<div class="col-10">
										<span class="ques">인투레이스가 아예 없어졌는데 단종인가요?</span>
									</div>
								</div>
								<br>
								<hr class="hr">
								<br>
								<div class="row">
									<div class="col-1">
										<span class="a">A</span>
									</div>
									<div class="col-10">
										<p class="answ">
											안녕하세요. 클리오 담당자입니다.
											<br><br>현재 올리브영에서 잠깐 판매중단입니다.
											<br>고객님의 소중한 의견 담당 부서에 전달하도록 하겠습니다.
											<br>다양한 상품으로 찾아뵙기 위해 더욱 노력하겠습니다.
											<br>감사합니다.
											<br><br>※ 답변 내용은 각 브랜드사에서 작성되며, 올리브영의 서비스/정책과 상이할 수 있는 점 안내드립니다.
											<br>
											<br>
										</p>
									</div>
								</div>							
							</div>
						</div>
					</div>
					<br>
					<br>
					<nav aria-label="...">
						<ul class="pagination justify-content-center">
							<li class="page-item active" aria-current="page">
								<span class="page-link">1</span>
							</li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
						</ul>
					</nav>
				</div>
				<br>
				<br>
			</section>
			
			<section id="content4">
				<br>
				<span class="info">상품정보 제공고시</span>
				<br>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>용량 또는 중량</span>
					</div>
					<div class="col-8 top">
						<span>용량 : 0.6g X 10</span>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>제품 주요 사양</span>
					</div>
					<div class="col-8 top">
						<span>모든 피부용</span>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>사용기간 (개봉 후 사용기간)</span>
					</div>
					<div class="col-8 top">
						<span>개봉 후 24개월</span>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>사용방법</span>
					</div>
					<div class="col-8 top">
						<span>원하는 컬러를 선택하여 내장된 브러쉬나 손가락을 사용하여 눈가에 고르게 발라 줍니다.</span>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>화장품 제조업자 및 화장품 책임 판매업자</span>
					</div>
					<div class="col-8 top">
						<span>(주)코스맥스 / (주)클리오</span>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>제조국</span>
					</div>
					<div class="col-8 top">
						<span>대한민국</span>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>화장품법에 따라 기재해야 하는 모든 성분</span>
					</div>
					<div class="col-8 top">
						<p>
							011호<br>
							#1 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,티타늄디옥사이드 (CI 77891),망가니즈바이올렛 (CI 77742),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,하이드로제네이티드레시틴,마그네슘스테아레이트,마이크로크리스탈린셀룰로오스,알루미늄하이드록사이드,다이메티콘,메티콘,실리카,카올린,정제수,황색산화철 (CI 77492),적색산화철 (CI 77491),울트라마린 (CI 77007),흑색산화철 (CI 77499),카민 (CI 75470)
							#2 탤크,마이카 (CI 77019),티타늄디옥사이드 (CI 77891),알루미늄전분옥테닐석시네이트,하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,적색산화철 (CI 77491),황색산화철 (CI 77492),망가니즈바이올렛 (CI 77742),흑색산화철 (CI 77499),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,알루미늄하이드록사이드,다이메티콘,마그네슘스테아레이트,메티콘,하이드로제네이티드레시틴,마이크로크리스탈린셀룰로오스,트라이에톡시카프릴릴실레인,실리카,정제수,울트라마린 (CI 77007),
							#3 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,망가니즈바이올렛 (CI 77742),하이드로제네이티드폴리아이소부텐,티타늄디옥사이드 (CI 77891),에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,황색산화철 (CI 77492),적색산화철 (CI 77491),흑색산화철 (CI 77499),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,마그네슘스테아레이트,하이드로제네이티드레시틴,알루미늄하이드록사이드,마이크로크리스탈린셀룰로오스,다이메티콘,메티콘,실리카,트라이에톡시카프릴릴실레인,정제수,카민 (CI 75470),울트라마린 (CI 77007)
							#4 칼슘티타늄보로실리케이트,에틸헥실팔미테이트,폴리부틸렌테레프탈레이트,탤크,마이카 (CI 77019),칼슘알루미늄보로실리케이트,하이드로제네이티드폴리아이소부텐,아크릴레이트코폴리머,에틸렌/브이에이코폴리머,티타늄디옥사이드 (CI 77891),합성플루오르플로고파이트,마그네슘미리스테이트,마그네슘스테아레이트,메틸프로판다이올,실리카,다이아이소스테아릴말레이트,프로판다이올,다이메티콘,에틸렌/프로필렌/스타이렌코폴리머,부틸렌/에틸렌/스타이렌코폴리머,정제수,틴옥사이드 (CI 77861),실버 (CI 77820),적색산화철 (CI 77491),황색산화철 (CI 77492),흑색산화철 (CI 77499),적색226호 (CI 73360),황색4호 (CI 19140)
							#5 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,흑색산화철 (CI 77499),티타늄디옥사이드 (CI 77891),적색산화철 (CI 77491),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,하이드로제네이티드레시틴,마그네슘스테아레이트,마이크로크리스탈린셀룰로오스,알루미늄하이드록사이드,다이메티콘,메티콘,실리카,정제수,황색산화철 (CI 77492),망가니즈바이올렛 (CI 77742)
							#6 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,티타늄디옥사이드 (CI 77891),합성플루오르플로고파이트,메틸프로판다이올,마그네슘미리스테이트,프로판다이올,하이드로제네이티드레시틴,마그네슘스테아레이트,마이크로크리스탈린셀룰로오스,알루미늄하이드록사이드,실리카,다이메티콘,메티콘,정제수,틴옥사이드 (CI 77861),황색산화철 (CI 77492),적색산화철 (CI 77491),흑색산화철 (CI 77499),망가니즈바이올렛 (CI 77742),울트라마린 (CI 77007)
							#7 탤크,티타늄디옥사이드 (CI 77891),알루미늄전분옥테닐석시네이트,마이카 (CI 77019),하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,황색산화철 (CI 77492),적색산화철 (CI 77491),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,알루미늄하이드록사이드,트라이에톡시카프릴릴실레인,마그네슘스테아레이트,하이드로제네이티드레시틴,마이크로크리스탈린셀룰로오스,실리카,정제수,흑색산화철 (CI 77499),망가니즈바이올렛 (CI 77742)
							#8 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,망가니즈바이올렛 (CI 77742),하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,티타늄디옥사이드 (CI 77891),황색산화철 (CI 77492),흑색산화철 (CI 77499),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,마그네슘스테아레이트,하이드로제네이티드레시틴,알루미늄하이드록사이드,마이크로크리스탈린셀룰로오스,다이메티콘,메티콘,실리카,정제수,적색산화철 (CI 77491),카민 (CI 75470),울트라마린 (CI 77007)
							#9 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,적색산화철 (CI 77491),흑색산화철 (CI 77499),티타늄디옥사이드 (CI 77891),망가니즈바이올렛 (CI 77742),황색산화철 (CI 77492),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,마그네슘스테아레이트,하이드로제네이티드레시틴,마이크로크리스탈린셀룰로오스,알루미늄하이드록사이드,다이메티콘,메티콘,실리카,정제수,울트라마린 (CI 77007),카민 (CI 75470)
							#10 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,흑색산화철 (CI 77499),하이드로제네이티드폴리아이소부텐,적색산화철 (CI 77491),에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,티타늄디옥사이드 (CI 77891),황색산화철 (CI 77492),울트라마린 (CI 77007),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,마그네슘스테아레이트,하이드로제네이티드레시틴,마이크로크리스탈린셀룰로오스,알루미늄하이드록사이드,다이메티콘,메티콘,실리카,정제수,카민 (CI 75470)
							<br>012호<br>
							#1 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,마그네슘미리스테이트,메틸프로판다이올,프로판다이올,하이드로제네이티드레시틴,실리카,알루미늄하이드록사이드,트라이에톡시카프릴릴실레인,정제수,적색산화철 (CI 77491),티타늄디옥사이드 (CI 77891),황색산화철 (CI 77492),흑색산화철 (CI 77499),카민 (CI 75470)
							#2 탤크,마이카 (CI 77019),칼슘티타늄보로실리케이트,알루미늄전분옥테닐석시네이트,망가니즈바이올렛 (CI 77742),에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,하이드로제네이티드폴리아이소부텐,티타늄디옥사이드 (CI 77891),적색산화철 (CI 77491),마그네슘미리스테이트,메틸프로판다이올,프로판다이올,하이드로제네이티드레시틴,알루미늄하이드록사이드,실리카,트라이에톡시카프릴릴실레인,정제수,틴옥사이드 (CI 77861),황색산화철 (CI 77492),울트라마린 (CI 77007),흑색산화철 (CI 77499),적색226호 (CI 73360)
							#3 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,적색산화철 (CI 77491),티타늄디옥사이드 (CI 77891),황색산화철 (CI 77492),흑색산화철 (CI 77499),마그네슘미리스테이트,메틸프로판다이올,프로판다이올,하이드로제네이티드레시틴,알루미늄하이드록사이드,트라이에톡시카프릴릴실레인,실리카,정제수,카민 (CI 75470),황색4호 (CI 19140),울트라마린 (CI 77007)
							#4 폴리에틸렌테레프탈레이트,폴리부틸렌테레프탈레이트,비스-다이글리세릴폴리아실아디페이트-2,아크릴레이트코폴리머,칼슘알루미늄보로실리케이트,에틸렌/브이에이코폴리머,폴리글리세릴-2트라이아이소스테아레이트,티타늄디옥사이드 (CI 77891),메틸프로판다이올,실리카,프로판다이올,정제수,틴옥사이드 (CI 77861),마이카 (CI 77019),황색5호 (CI 15985),카민 (CI 75470)
							#5 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,적색산화철 (CI 77491),하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,티타늄디옥사이드 (CI 77891),망가니즈바이올렛 (CI 77742),흑색산화철 (CI 77499),황색산화철 (CI 77492),메틸프로판다이올,마그네슘미리스테이트,프로판다이올,하이드로제네이티드레시틴,실리카,정제수,틴옥사이드 (CI 77861),울트라마린 (CI 77007),카민 (CI 75470)
							#6 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,티타늄디옥사이드 (CI 77891),에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,하이드로제네이티드폴리아이소부텐,메틸프로판다이올,마그네슘미리스테이트,프로판다이올,하이드로제네이티드레시틴,알루미늄하이드록사이드,트라이에톡시카프릴릴실레인,실리카,정제수,황색산화철 (CI 77492),적색산화철 (CI 77491),흑색산화철 (CI 77499),울트라마린 (CI 77007),황색4호 (CI 19140)
							#7 합성플루오르플로고파이트,다이아이소스테아릴말레이트,티타늄디옥사이드 (CI 77891),마이카 (CI 77019),카프릴릭/카프릭트라이글리세라이드,칼슘티타늄보로실리케이트,다이펜타에리스리틸헥사하이드록시스테아레이트/헥사스테아레이트/헥사로지네이트,칼슘알루미늄보로실리케이트,하이드로제네이티드캐스터오일다이머다이리놀레에이트,솔비탄세스퀴아이소스테아레이트,적색산화철 (CI 77491),프로판다이올,트라이에톡시카프릴릴실레인,틴옥사이드 (CI 77861),페녹시에탄올
							#8 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,황색산화철 (CI 77492),티타늄디옥사이드 (CI 77891),칼슘티타늄보로실리케이트,하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,망가니즈바이올렛 (CI 77742),적색산화철 (CI 77491),울트라마린 (CI 77007),흑색산화철 (CI 77499),마그네슘미리스테이트,메틸프로판다이올,프로판다이올,하이드로제네이티드레시틴,알루미늄하이드록사이드,트라이에톡시카프릴릴실레인,실리카,정제수,틴옥사이드 (CI 77861)
							#9 탤크,마이카 (CI 77019),알루미늄전분옥테닐석시네이트,황색산화철 (CI 77492),적색산화철 (CI 77491),하이드로제네이티드폴리아이소부텐,에이치디아이/트라이메틸올헥실락톤크로스폴리머,폴리메틸메타크릴레이트,흑색산화철 (CI 77499),마그네슘미리스테이트,메틸프로판다이올,프로판다이올,하이드로제네이티드레시틴,실리카,정제수,울트라마린 (CI 77007)
							#10 칼슘알루미늄보로실리케이트,에틸헥실팔미테이트,폴리부틸렌테레프탈레이트,합성플루오르플로고파이트,마이카 (CI 77019),티타늄디옥사이드 (CI 77891),아크릴레이트코폴리머,에틸렌/브이에이코폴리머,탤크,하이드로제네이티드폴리아이소부텐,실리카,알루미나,마그네슘미리스테이트,마그네슘스테아레이트,메틸프로판다이올,다이아이소스테아릴말레이트,프로판다이올,다이메티콘,에틸렌/프로필렌/스타이렌코폴리머,카올린,부틸렌/에틸렌/스타이렌코폴리머,정제수,틴옥사이드 (CI 77861),적색산화철 (CI 77491),울트라마린 (CI 77007),황색산화철 (CI 77492),흑색산화철 (CI 77499)
							<br>
						</p>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>기능성 화장품 식품의약품안전처 심사 여부</span>
					</div>
					<div class="col-8 top">
						<span>해당사항 없음</span>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>사용시 주의사항</span>
					</div>
					<div class="col-8 top">
						<p>
							1) 화장품 사용 시 또는 사용 후 직사광선에 의하여 사용부위가 붉은 반점, 부어오름 또는 가려움증 등의 이상 증상이나 부작용이 있는 경우 전문의 등과 상담할 것. <br>
							2) 상처가 있는 부위 등에는 사용을 자제할 것. <br>
							3) 보관 및 취급 시의 주의사항. <br>
							가) 어린이의 손이 닿지 않는 곳에 보관할 것. 나) 직사광선을 피해서 보관할 것
						</p>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>품질보증기준</span>
					</div>
					<div class="col-8 top">
						<span>본 제품에 이상이 있을 경우 공정거래위원회 고시 '소비자 분쟁 해결기준'에 의해 보상해드립니다.</span>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>소비자상담 전화번호</span>
					</div>
					<div class="col-8 top">
						<span>080-080-1510</span>
					</div>
				</div>
				<hr class="hr2">
				<br>
				<br>
				<span class="info">배송안내</span>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>배송비/배송가능일</span>
					</div>
					<div class="col-8 top">
						<p>
							<span id="gray">[일반 배송]</span>
							<br> 
							<span id="gray">배송지역 : 전국</span>
							<br>
							<span id="gray">배송비 : </span>
							<span id="red">2,500원</span>
							<br>
							올리브영 배송 상품의 총 결제금액이 &nbsp;
							<span id="red">20,000원 이상일 경우 무료배송</span>
							&nbsp; 됩니다.
							<br>
							도서, 산간, 오지 일부 지역은 배송비가 추가될 수 있습니다.
							<br>
							<span id="gray">배송가능일 : </span>
							<span id="red">3일</span>
							<br>
							<br>
							배송가능일이란 본 상품을 주문하신 고객님들께 상품 배송이 가능한 기간을 의미합니다. 단, 연휴 및 공휴일은 기간 계산시 <br>
							제외하며 현금 주문일 경우 입금일 기준 입니다. 예약 상품의 경우 예약된 날짜에 출고되며, 상품의 입고가 빠르게 진행된 경우 <br> 예약일 보다 일찍 배송될 수 있습니다.
							<br>
							<br>
							<span id="gray">[오늘드림 배송]</span>
							<br> 
							<span id="gray">배송지역 : 전국 (일부 지역 제외)</span>
							<br>
							<span id="gray">배송비 : 빠름</span>
							<span id="red">5,000원&nbsp;&nbsp;&nbsp;</span>
							<span id="gray">3!4!/미드나잇</span>
							<span id="red">2,500원</span>
							<br>
							오늘드림 배송 상품의 총 결제금액이 &nbsp;
							<span id="red">30,000원 이상일 경우 무료배송 &nbsp;</span> 됩니다.
							<br>
							오늘드림 배송비는 도서, 산간지역에 관련없이 배송비가 동일합니다.
							<br>
							<br>
							<span id="gray">[배송가능시간]</span>
							<br>
							<span id="gray">빠름/미드나잇 : &nbsp;</span>
							당일 20시까지 주문 시 당일 도착, 이후 주문 건 익일 도착 &nbsp;&nbsp;&nbsp;
							<br>
							<span id="gray">3!4! : &nbsp;</span>
							당일13시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
						</p>
					</div>
				</div>
				<hr class="hr2">
				<br>
				<br>
				<span class="info">교환/반품/환불 안내</span>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>교환/반품 신청 방법</span>
					</div>
					<div class="col-8 top">
						<p>마이페이지 내 주문내역에서 신청가능하며, <br> 반품 신청의 경우 택배회수 / 매장방문(일부 매장)중 선택하여 신청가능합니다.</p>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>교환/반품 신청 기간</span>
					</div>
					<div class="col-8 top">
						<p>
							교환, 반품 신청은 배송이 완료된 후 15일 이내 가능합니다.<br>
							고객님이 배송 받으신 상품의 내용이 표시∙광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 배송 받으신 날로부터 3개월 이내, <br>
							혹은 그 사실을 알 수 있었던 날로 부터 30일 이내에 가능합니다.
						</p>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>교환/반품/회수 비용</span>
					</div>
					<div class="col-8 top">
						<p>
							<span id="gray">[택배 회수 반품]</span>
							<br>
							고객님의 사유에 의한 교환 및 반품은 회수 및 배송에 필요한 비용을 부담해주셔야 합니다. <br>
							기본 비용은 교환 5,000원(회수비+배송비), 반품 2,500원(회수비)입니다. <br>
							제주도 및 도서산간 지방에는 추가 운임이 발생합니다. <br>
							당사의 사유(상품의 하자, 배송의 오류 등)로 인한 경우 교환 및 반품에 필요한 비용은 당사에서 부담합니다. <br><br>
							<span id="gray">[매장 방문 반품]</span>
							올리브영 일반 주문 Green Olive 이상 등급 또는 오늘드림 주문에 한해서 별도 회수비 부담없이 반품 가능합니다.(단, 일부 매장만 가능)
						</p>
					</div>
				</div>
				<hr class="hr2">
				<div class="row">
					<div class="col-3" id="cdiv">
						<span>교환/반품 불가안내</span>
					</div>
					<div class="col-8 top">
						<p>
							고객님의 사유에 의한 교환 및 반품이 불가한 경우 <br>
							1. 배송이 완료된 후 15일이 경과한 경우 <br>
							2. 포장 훼손 및 사용 또는 일부 소비, 구성품 누락 및 상품의 결함 발생으로 인해 상품의 가치가 훼손된 경우 <br>
							<br>
							<br>
							당사의 사유에 의한 교환 및 반품이 불가한 경우 <br>
							1. 배송 받으신 날로부터 3개월, 혹은 그 사실을 알 수 있었던 날로 부터 30일이 경과한 경우 <br>
							2. 당사의 귀책(상품의 불량, 생산 및 제조 및 배송 간의 파손 등)으로 인한 현상이 아닌 해당 상품의 고유한 특성, 혹은 상품 수령 후 고객님의 과실로 인한 문제임이 규명된 경우 <br>
						</p>
					</div>
				</div>
				<hr class="hr2">
				<br>
				<br>
			</section>
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
	 
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>