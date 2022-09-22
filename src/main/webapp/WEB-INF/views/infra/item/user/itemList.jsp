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
   		@font-face {
		    font-family: 'MICEGothic Bold';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
		    font-weight: 700;
		    font-style: normal;
		}
		
		#wid {
			width: 1000px;
		}
		
		#num {
			font-size: 25px;
			color: #93961F;
		}
		
		#item {
			border-style: none;
		}
		
		.name {
			font-family: 'MICEGothic Bold';
			color: #4c4c4c;
			font-size: 18px;
		}
		
		.before {
			font-family: 'MICEGothic Bold';
			text-decoration-line: line-through;
			color: #7E7474;
			font-size: 17px;
			margin-left: 75px;
		}
		
		.before2 {
			font-family: 'MICEGothic Bold';
			margin-left: 95px;
			text-decoration-line: line-through;
			color: #7E7474;
			font-size: 17px;
		}
		
		.before3 {
			font-family: 'MICEGothic Bold';
			margin-left: 85px;
			text-decoration-line: line-through;
			color: #7E7474;
			font-size: 17px;
		}
		
		.before4 {
			font-family: 'MICEGothic Bold';
			margin-left: 60px;
			text-decoration-line: line-through;
			color: #7E7474;
			font-size: 17px;
		}
		
		.before5 {
			font-family: 'MICEGothic Bold';
			margin-left: 50px;
			text-decoration-line: line-through;
			color: #7E7474;
			font-size: 17px;
		}
		
		.sale {
			font-family: 'MICEGothic Bold';
			color: #C63B3B;
			font-size: 20px;
			float: right;
		}
		
		hr {
    		border: 1px solid; 
    		display: block !important;
    		width: 1000px !important;
    		color: #DFDADA;
    	}
		
		#left {
			 margin-left: 70px;
		}
		
		.card {
			width: 16rem;
		}
				
		.card2 {
			width: 15rem;
		}
		
		.brand {
			color: #8e8e8e;
		}
		
		.mid {
			text-align: center;
		}
		
		.badge {
			float: right;
		}
		
		.back-to-top-css {
		    position: fixed;
		    bottom: 20px;
		    right: 20px;
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
			padding: 20px 44px;
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

	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="6" aria-label="Slide 7"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="../../resources/images/p4.jpg" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="../../resources/images/p2.jpg" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="../../resources/images/p3.jpg" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="../../resources/images/p1.jpg" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="../../resources/images/p5.jpg" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="../../resources/images/p6.jpg" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="../../resources/images/p7.jpg" class="d-block w-100">
			</div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</button>
	</div>
	<br>
	<br>
	<div class= "container" id="wid"> 
		<center><img src="../../resources/images/head.jpg"></center>
		<br>
		<br>
		<h2>실시간 TOP3 <i class="fa-solid fa-crown"></i></h2>
		<br>
		<div class="row">
			<div class="col-md-3" id="left">
				<div>
					<span id="num">1</span>
				</div>
					<a href = "../item/itemView"><div class="card" style="width: 16rem;" id="item">
					<a href = "../item/itemView"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015771628ko.jpg?l=ko" class="card-img-top" alt="..."></a>
					<br>
					<span class="name">[에스파 윈터 PICK!] <br> 클리오 프로아이팔레트 MD</p>
					<br>
					<span class="before">32,000원</span>
					<span class="sale">22,400원</span>
					<span class="badge rounded-pill" style="background-color: #E85858;">세일</span>
					<span class="badge rounded-pill" style="background-color: #6C9FC3;">오늘드림</span>
				</div>
			</div>
			<div class="col-md-3" id="left"> 	
				<div>
					<span id="num">2</span>
				</div>
				<div class="card" style="width: 16rem;" id="item">
				  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012595523ko.jpg?l=ko" class="card-img-top" alt="...">
				  <br>
				  <span class="name">[NEW!]<br>롬앤 쥬시 래스팅 틴트</p>
				  <br>
				  <span class="before2">9,900원</span>
				  <span class="sale">8,910원</span>
				  <span class="badge rounded-pill" style="background-color: #E85858;">세일</span>
				  <span class="badge rounded-pill" style="background-color: #6C9FC3;">오늘드림</span>
				</div>
			</div>
			<div class="col-md-3"  id="left"> 
				<div>
					<span id="num">3</span>
				</div>
				<div class="card" style="width: 16rem;" id="item">
				  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016596806ko.jpg?l=ko" class="card-img-top" alt="...">
				   <br>
				  <span class="name">웨이크메이크 워터 컬러링 퓨어 틴트 (6 Color)</p>
				  <br>
				  <span class="before3">16,000원</span>
				  <span class="sale">9,600원</span>
				  <span class="badge rounded-pill" style="background-color: #E85858;">세일</span>
				  <span class="badge rounded-pill" style="background-color: #4aa828;">쿠폰</span>
				  <span class="badge rounded-pill" style="background-color: #6C9FC3;">오늘드림</span>
				</div>
			</div>
		</div>
		<br>
		<hr>
		<br>
		<h2>Weekly Special</h2>
		<br>
		<div class="row">
			<div class="col-md-3" id="left">
				<div class="card" id="item">
				  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015015308ko.jpg?l=ko" class="card-img-top" alt="...">
				  <br>
				  <span class="name">리얼베리어 아쿠아 수딩 크림 마스크</p>
				  <br>
				  <span class="before2">3,000원</span>
				  <span class="sale">1,200원</span>
				  <span class="badge rounded-pill" style="background-color: #E85858;">세일</span>
				  <span class="badge rounded-pill" style="background-color: #f2c202;">1+1</span>
				</div>
			</div>
			<div class="col-md-3" id="left"> 	
				<div class="card" id="item">
				  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A000000167080148ko.jpg?l=ko" class="card-img-top" alt="...">
				  <br>
				  <span class="name">데싱디바 매직프레스 페디 사일런트 오션 2205</p>
				  <br>
				  <span class="before3">10,800원</span>
				  <span class="sale">9,720원</span>
				  <span class="badge rounded-pill" style="background-color: #E85858;">세일</span>
				</div>
			</div>
			<div class="col-md-3" id="left"> 
				<div class="card" id="item">
				  <img src= "https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013629656ko.jpg?l=ko" class="card-img-top" alt="...">
				   <br>
				  <span class="name">페리페라 올테이크 무드 팔레트</p>
				  <br>
				  <br>
				  <span class="before">19,000원</span>
				  <span class="sale">15,200원</span>
				  <span class="badge rounded-pill" style="background-color: #E85858;">세일</span>
				  <span class="badge rounded-pill" style="background-color: #4aa828;">쿠폰</span>
				</div>
			</div>
		</div>
		<br>
		<hr>
		<br>
		<h2>인기행사만 모았어요!</h2>
		<br>
		<div class="row">
			<div class="col-6">
			<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101780212&trackingCd=Home_Planshop3_PROD"><img src="../../resources/images/sale.jpg"></a>
			</div>
			<div class="col-6">
			<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102390043&trackingCd=Home_Planshop3_PROD"><img src="../../resources/images/sale2.jpg"></a>
			</div>
		</div>
		<br>
		<hr>
		<br>
		<h2>주목해야 할 브랜드</h2>
		<br>
		<div class="main left2">
			<input id="tab1" type="radio" name="tabs" checked> 
			<label for="tab1">캘빈클라인</label>
			
			<input id="tab2" type="radio" name="tabs">
			<label for="tab2">AHC</label>
			
			<input id="tab3" type="radio" name="tabs">
			<label for="tab3">아비브</label>
			
			<input id="tab4" type="radio" name="tabs">
			<label for="tab4">비욘드</label>
			
			<input id="tab5" type="radio" name="tabs">
			<label for="tab5">데싱디바</label>
			
			<input id="tab6" type="radio" name="tabs">
			<label for="tab6">바이오더마</label>
			
			<section id="content1">
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016911302ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 One EDT 50ml + 미니어처 15ml 기획</p>
						  <br>
						  <span class="sale">60,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016163406ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 디파이 EDT 30ml</p>
						  <br>
						  <span class="sale">71,000원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017113301ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 원 모이스처라이저 250ml</p>
						  <br>
						  <span class="before4">53,000원</span>
						  <span class="sale">42,400원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013722104ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 에브리원 EDT 100ml</p>
						  <br>
						  <span class="sale">90,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016768305ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 One 22 Summer EDT 100ml 기획세트 (15ml 추가증정)</p>
						  <br>
						  <span class="before5">85,000원</span>
						  <span class="sale">59,500원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017086501ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 One EDT 200ml</p>
						  <br>
						  <br>
						  <span class="before5">11,6000원</span>
						  <span class="sale">92,800원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013530105ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 비 EDT 50ml</p>
						  <br>
						  <br>
						  <br>
						  <span class="before4">68,000원</span>
						  <span class="sale">47,600원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012083102ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">캘빈클라인 이터니티 에어 맨 EDT 30ml</p>
						  <br>
						  <br>
						  <span class="sale">58,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015763501ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 디파이 EDT 50ml</p>
						  <br>
						  <br>
						  <span class="sale">96,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012839703ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 이터니티 맨 EDT 30ml</p>
						  <br>
						  <br>
						  <span class="before4">68,000원</span>
						  <span class="sale">54,400원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016163407ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 디파이 EDT 50ml +1.2ml*2 + 에브리원 1.2ml *2</p>
						  <br>
						  <span class="sale">96,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013722701ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">캘빈클라인</span>
						  </div>
						  <span class="name">CK 캘빈클라인 에브리원 EDT 50ml</p>
						  <br>
						  <br>
						  <span class="before4">64,000원</span>
						  <span class="sale">57,600원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
				<br>
			</section>
			
			<section id="content2">
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015562505ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 아우라 시크릿 톤업 벨벳 (본품55g+10g 증정)</p>
						  <br>
						  <span class="before4">29,000원</span>
						  <span class="sale">20,300원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016519202ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 텐션 아이크림 스틱 포 페이스 기획</p>
						  <br>
						  <span class="sale">19,900원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016484501ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 세이프온 마일드 선 쿠션 25g</p>
						  <br>
						  <span class="before4">29,000원</span>
						  <span class="sale">17,400원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016536401ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 허브솔루션 로즈 토너 500ml (온)</p>
						  <br>
						  <span class="before4">15,000원</span>
						  <span class="sale">12,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015711504ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">[단독기획] AHC 하이드라 B5 바이옴 앰플</p>
						  <br>
						  <br>
						  <span class="before4">34,000원</span>
						  <span class="sale">30,600원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013718101ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 내추럴퍼펙션 프레쉬 선스틱</p>
						  <br>
						  <br>
						  <span class="before4">19,000원</span>
						  <span class="sale">15,200원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015101705ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 유스 래스팅 리얼 아이크림 포 페이스 (30ml+30ml+36ml)</p>
						  <br>
						  <span class="before4">30,000원</span>
						  <span class="sale">24,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015351003ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 마스터즈 아쿠아 리치 선크림 더블 기획 (30ml+30ml)</p>
						  <br>
						  <br>
						  <span class="sale">24,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014564103ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 마이크로 비타민 착붙 마스크 시트 33ml 10매</p>
						  <br>
						  <span class="sale">30,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014564303ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 마이크로 퓨어 워터 착붙 마스크 시트 33ml 10매</p>
						  <br>
						  <span class="sale">30,000원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014983402ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">[단독기획] AHC 365 레드 퍼퓸드 핸드 기획</p>
						  <br>
						  <span class="before4">24,000원</span>
						  <span class="sale">19,200원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013780502ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">AHC</span>
						  </div>
						  <span class="name">AHC 에센스케어 파우더워시 에메랄드 40g</p>
						  <br>
						  <span class="sale">22,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
				<br>
			</section>
			
			<section id="content3">
			 	<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014154811ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">[조효진 Pick] 아비브 어성초 스팟 패드 카밍터치 75매</p>
						  <br>
						  <br>
						  <span class="before4">24,000원</span>
						  <span class="sale">16,800원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014840803ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">[증량]아비브 아크네 폼 클렌저 어성초 폼 대용량 250ml</p>
						  <br>
						  <br>
						  <span class="before4">21,000원</span>
						  <span class="sale">16,800원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017029503ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">[단독기획] 아비브 수분초 히알루론 패드 하이드레이팅 터치 75매 기획 (+10매)</p>
						  <br>
						  <span class="before4">24,000원</span>
						  <span class="sale">16,800원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015404504ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">아비브 유자 프로바이오틱스 잡티 패드 바이탈라이징 터치 60매</p>
						  <br>
						  <span class="sale">24,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014840905ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">아비브 부활초 크림 뉴트리션 튜브 75ml</p>
						  <br>
						  <br>
						  <span class="before4">35,000원</span>
						  <span class="sale">24,500원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012093805ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">아비브 약산성 pH 시트 마스크 어성초 핏 10P</p>
						  <br>
						  <br>
						  <span class="sale">40,000원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016945201ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">[NEW] 아비브 수분초 히알루론 패드 하이드레이팅 터치 75매</p>
						  <br>
						  <span class="before4">24,000원</span>
						  <span class="sale">16,800원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012081915ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">아비브 어성초 에센스 카밍펌프 50ml</p>
						  <br>
						  <br>
						  <span class="before4">27,000원</span>
						  <span class="sale">18,900원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013195803ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">아비브 핸드크림 타입 W 프라그란트 튜브 50ml</p>
						  <br>
						  <span class="sale">17,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0011/A00000011684604ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">아비브 퀵 선스틱 프로텍션 바 22g</p>
						  <br>
						  <span class="before4">28,000원</span>
						  <span class="sale">14,000원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0011/A00000011208805ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">아비브 껌딱지 시트 마스크 마데카소사이드 스티커 10P</p>
						  <br>
						  <span class="sale">40,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014437103ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">아비브</span>
						  </div>
						  <span class="name">아비브 카밍 페이셜 솝 어성초 스톤 100g</p>
						  <br>
						  <span class="sale">14,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
				<br>
			</section>
			
			<section id="content4">
			 	<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016859206ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">[NEW] 비욘드 엔젤 아쿠아 수분 선크림 50ml 1+1 기획</p>
						  <br>
						  <br>
						  <span class="before4">17,000원</span>
						  <span class="sale">15,300원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012523108ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 오마이 선크림 더블 기획 (본품+본품)</p>
						  <br>
						  <br>
						  <span class="sale">17,000원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015689605ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">[강태경PICK] 비욘드 엔젤아쿠아 포맨 올인원 에센스 더블 기획 (200ml+200ml)</p>
						  <br>
						  <span class="before4">25,000원</span>
						  <span class="sale">17,500원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016570503ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 토탈리커버리 버블배쓰 250ml</p>
						  <br>
						  <br>
						  <span class="sale">17,500원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0011/A00000011943606ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 엔젤아쿠아 데일리 세라마이드크림 더블 기획 (100ml+100ml)</p>
						  <br>
						  <span class="before4">25,000원</span>
						  <span class="sale">20,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017029104ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 엔젤아쿠아 모이스처 클렌징폼 300ml 1+1 기획l</p>
						  <br>
						  <br>
						  <span class="before4">16,500원</span>
						  <span class="sale">14,850원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016568201ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 버베나 리프레싱 바디워시 500ml</p>
						  <br>
						  <br>
						  <span class="sale">25,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015149101ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 엔젤아쿠아 포맨 수분 크림 150ml</p>
						  <br>
						  <br>
						  <span class="before4">20,000원</span>
						  <span class="sale">14,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013159401ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 엔젤아쿠아 시카 카밍 앰플 100ml</p>
						  <br>
						  <br>
						  <span class="sale">22,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0011/A00000011943709ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 엔젤아쿠아 데일리 톤업크림 더블 기획 (75ml+75ml)</p>
						  <br>
						  <span class="before4">25,000원</span>
						  <span class="sale">20,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015489201ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">[증량] 비욘드 버베나 샤워젤 1L</p>
						  <br>
						  <br>
						  <span class="sale">34,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015412001ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">비욘드</span>
						  </div>
						  <span class="name">비욘드 버베나 리프레싱 바디미스트120ml</p>
						  <br>
						  <br>
						  <span class="sale">16,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
				<br>
			</section>
			
			<section id="content5">
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016312114ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 매직프레스 SS 기획세트</p>
						  <br>
						  <br>
						  <span class="before4">21,600원</span>
						  <span class="sale">19,440원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A000000167114122ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">[조효진 PICK] 데싱디바 S/S(여름) 프리미엄 매직프레스 네일/페디</p>
						  <br>
						  <span class="before4">14,800원</span>
						  <span class="sale">13,320원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A000000162720141ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 매직프레스 프리미엄 스파클링 화이트(CF) 2203</p>
						  <br>
						  <span class="before4">14,800원</span>
						  <span class="sale">13,320원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A000000167071125ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 매직프레스 프리미엄 페디 스타 프리즘 2205</p>
						  <br>
						  <br>
						  <span class="sale">14,800원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016621387ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 S/S 글레이즈 매니 아트시리즈 골라담기</p>
						  <br>
						  <span class="before4">14,800원</span>
						  <span class="sale">13,320원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016123176ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 글레이즈 J026 화이트 링</p>
						  <br>
						  <span class="sale">14,800원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A000000162728148ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 매직프레스 프리미엄 펄리 화이트(CF) 2203</p>
						  <br>
						  <span class="before4">68,000원</span>
						  <span class="sale">20,400원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016397593ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 글레이즈 A301 아이덴티티2203</p>
						  <br>
						  <span class="before4">14,800원</span>
						  <span class="sale">13,320원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016130176ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 글레이즈 A282 바람</p>
						  <br>
						  <br>
						  <span class="sale">14,800원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A000000167061140ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 매직프레스 엣지 플라워(CF) 2205</p>
						  <br>
						  <span class="sale">10,800원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A000000167088157ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 매직프레스 페디 바이올렛 샌드 2205</p>
						  <br>
						  <span class="before4">14,500원</span>
						  <span class="sale">11,600원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A000000162771138ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">데싱디바</span>
						  </div>
						  <span class="name">데싱디바 S/S 매직프레스 프리미엄 매니</p>
						  <br>
						  <span class="before4">14,800원</span>
						  <span class="sale">13,320원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
				<br>
			</section>
			
			<section id="content6">
			 	<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014395912ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 아토덤 인텐시브 밤 200ml</p>
						  <br>
						  <span class="before4">30,000원</span>
						  <span class="sale">24,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016505505ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 센시비오 디펜시브 리치 40ml</p>
						  <br>
						  <span class="before4">27,000원</span>
						  <span class="sale">18,900원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0001/A00000001300410ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 세비엄 젤무쌍 500ml</p>
						  <br>
						  <span class="before4">30,000원</span>
						  <span class="sale">24,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015764807ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 시카비오 데이 리페어 크림 30ml</p>
						  <br>
						  <span class="before4">30,000원</span>
						  <span class="sale">18,000원</span>
						</div>
					</div>
					
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0000/A00000000533607ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 하이드라비오 세럼 40ml</p>
						  <br>
						  <span class="sale">39,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0011/A00000011780811ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 하이드라비오 에센스로션 200ml</p>
						  <br>
						  <span class="sale">30,000원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0000/A00000000760637ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 아토덤 립스틱 1+1기획</p>
						  <br>
						  <span class="sale">15,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0001/A00000001008815ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 시카비오 포마드 40ml</p>
						  <br>
						  <span class="sale">23,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016071506ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 아토덤 젤 두쉬 500ml + 고급 샤워볼</p>
						  <br>
						  <span class="sale">29,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0013/A00000013469004ko.jpg?l=ko" class="card-img-top" >
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 세비엄 나이트 필 40ml</p>
						  <br>
						  <span class="before4">30,000원</span>
						  <span class="sale">21,000원</span>
						</div>
					</div>
					<div class="col-3">	
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0000/A00000000929809ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 포토덤맥스크림 SPF50+</p>
						  <br>
						  <span class="sale">30,000원</span>
						</div>
					</div>
					<div class="col-3">
						<div class="card2" id="item">
						  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0011/A00000011212807ko.jpg?l=ko" class="card-img-top">
						  <br>
						  <div class="mid">
						  	<span class="brand">바이오더마</span>
						  </div>
						  <span class="name">바이오더마 센시비오 H2O 500ml (펌프형)</p>
						  <br>
						  <span class="before4">25,500원</span>
						  <span class="sale">20,000원</span>
						</div>
					</div>
				</div>
				<br>
				<br>
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
				<br>
			</section>
		</div>
	</div>
	<br>
	<br>

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
	 });
	        
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>