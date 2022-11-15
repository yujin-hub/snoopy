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
			width: 220px;
		}
		
		.before {
			font-family: 'MICEGothic Bold';
			color: #7E7474;
			font-size: 17px;
			margin-left: 110px;
		}
		
		.before2 {
			font-family: 'MICEGothic Bold';
			margin-left: 90px;
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
  
  		.before1{
  			text-decoration: none;
  		}
  		
  		.red{
  			background-color: #E85858;
  			width: 50px;
  		}
  		
  		.blue{
  			background-color: #6C9FC3;
  			width: 50px;
  		}
  		
		::marker {
		   display: hidden;
		}
		
		.card-img-top{
			height: 230px;
			width: 230px;			
		}
		
		p{
			width: 220px;
			height: 60px;
		}
		
		.point{
			cursor: pointer;
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
		            	<div class="before1">
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
		</div
		
		<form autocomplete="off">
			<div class="header_inner" >
	            <h1><a href="/item/access"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>
				<div class="search_box" id="w_search_box">
					<input type="hidden" name="chkButton" id="chkButton">		
					<input type="text" id="query" class="inp_placeholder">
					<button id="searchSubmit">검색</button>
					<div class="search_layer">
						<div class="layer_inner"></div>
					</div>
				</div>
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
	<form method="post" name="formList">
		<form method="post" id="main" name="top">
			<div class= "container" id="wid"> 
			<input type="hidden" id="seq" name="itemSeq">
				<center><img src="../../resources/images/head.jpg"></center>
				<br>
				<br>
				<h2>실시간 TOP3 <i class="fa-solid fa-crown"></i></h2>
				<br>
				<div class="row">
					<c:forEach items="${listTop}" var="listTop" varStatus="status">
						<div class="col-md-3" id="left">
							<div>
								<span id="num">
									<c:out value="${listTop.itemSeq }"/>
								</span>
							</div>
							<div class="card" id="item">
								<a href="javascript:goView(<c:out value="${listTop.itemSeq}"/>)" class="point">
									<img src="${listTop.path }${listTop.uuidName}" id="img" class="card-img-top">
									<br>
									<span class="name">
										<c:out value="${listTop.name }"/>
									</span>
									<br>
									<li class="list-group-item">
										<c:choose>
											<c:when test="${listTop.discount eq 0}">
												<span class="sale">
													<fmt:formatNumber value="${listTop.price}" pattern="#,###" />원
												</span>
											</c:when>
											<c:otherwise>
												<span class="before2">
													<c:out value="${listTop.discount }"/>%
												</span>
												<span class="sale">
													<fmt:formatNumber value="${listTop.price}" pattern="#,###" />원
												</span>
											</c:otherwise>
										</c:choose>
									</li>
									<li class="list-group-item">
										<span class="badge rounded-pill red">세일</span>
										<span class="badge rounded-pill blue">오늘드림</span>
									</li>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</form>
		
		<form method="post" name="weeklyspecial">
			<div class= "container" id="wid"> 
			<input type="hidden" id="seq" name="itemSeq">
				<br>
				<hr>
				<br>
				<h2>이 상품 어때요?</h2>
				<br>
				<div class="row">
					<c:forEach items="${listWeek}" var="listWeek" varStatus="status">
						<div class="col-md-3" id="left">
							<div class="card" id="item">
								<a href="javascript:goView(<c:out value="${listWeek.itemSeq}"/>)" class="point">
									<img src="${listWeek.path }${listWeek.uuidName}" id="img" class="card-img-top">
									<br>
									<p class="name">
										<c:out value="${listWeek.name }"/>
									</p>
									<br>
									<li class="list-group-item">
										<c:choose>
											<c:when test="${listWeek.discount eq 0}">
												<span class="sale">
													<fmt:formatNumber value="${listWeek.price}" pattern="#,###" />원
												</span>
											</c:when>
											<c:otherwise>
												<span class="before2">
													<c:out value="${listWeek.discount }"/>%
												</span>
												<span class="sale">
													<fmt:formatNumber value="${listWeek.price}" pattern="#,###" />원
												</span>
											</c:otherwise>
										</c:choose>
									</li>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</form>
		
		<div class= "container" id="wid"> 
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
					<div class="container" id="wid"> 	
					<input type="hidden" id="seq" name="itemSeq">
						<form method="post" id="main" name="CK">
							<div class="row">
								<c:forEach items="${listCK}" var="listCK" varStatus="status">
									<div class="col-3">
										<div class="card2" id="item">
											<a href="javascript:goView(<c:out value="${listCK.itemSeq}"/>)" class="point">
												<img src="${listCK.path }${listCK.uuidName}" id="img" class="card-img-top">
												<br>
												<p class="name">
													<c:out value="${listCK.name }"/>
												</p>
												<br>
												<li class="list-group-item">
													<c:choose>
														<c:when test="${listCK.discount eq 0}"></c:when>
														<c:otherwise>
															<span class="before2">
																<c:out value="${listCK.discount }"/>%
															</span>
														</c:otherwise>
													</c:choose>
													<span class="sale">
														<fmt:formatNumber value="${listCK.price}" pattern="#,###" />원
													</span>
												</li>
											</a>
										</div>
										<br>
										<br>
									</div>
								</c:forEach>
							</div>
						</form>
					</div>
				</section>
				
				<section id="content2">
					<div class= "container" id="wid"> 	
					<input type="hidden" id="seq" name="itemSeq">
						<form method="post" id="main" name="AHC">
							<div class="row">
								<c:forEach items="${listAHC}" var="listAHC" varStatus="status">
									<div class="col-3">
										<div class="card2" id="item">
											<a href="javascript:goView(<c:out value="${listAHC.itemSeq}"/>)" class="point">
												<img src="${listAHC.path }${listAHC.uuidName}" id="img" class="card-img-top">
												<br>
												<p class="name">
													<c:out value="${listAHC.name }"/>
												</p>
												<br>
												<li class="list-group-item">
													<c:choose>
														<c:when test="${listAHC.discount eq 0}"></c:when>
														<c:otherwise>
															<span class="before2">
																<c:out value="${listAHC.discount }"/>%
															</span>
														</c:otherwise>
													</c:choose>
													<span class="sale">
														<fmt:formatNumber value="${listAHC.price}" pattern="#,###" />원
													</span>
												</li>
											</a>
										</div>
										<br>
										<br>
									</div>
								</c:forEach>
								<br>
								<br>
							</div>
						</form>
					</div>
				</section>
				
				<section id="content3">
					<div class= "container" id="wid"> 	
					<input type="hidden" id="seq" name="itemSeq">
						<form method="post" id="main" name="AB">	
							<div class="row">
								<c:forEach items="${listAB}" var="listAB" varStatus="status">
									<div class="col-3">
										<div class="card2" id="item">
											<a href="javascript:goView(<c:out value="${listAB.itemSeq}"/>)" class="point">
												<img src="${listAB.path }${listAB.uuidName}" id="img" class="card-img-top">
												<br>
												<p class="name">
													<c:out value="${listAB.name }"/>
												</p>
												<br>
												<li class="list-group-item">
													<c:choose>
														<c:when test="${listAB.discount eq 0}"></c:when>
														<c:otherwise>
															<span class="before2">
																<c:out value="${listAB.discount }"/>%
															</span>
														</c:otherwise>
													</c:choose>
													<span class="sale">
														<fmt:formatNumber value="${listAB.price}" pattern="#,###" />원
													</span>
												</li>
											</a>
										</div>
										<br>
										<br>
									</div>
								</c:forEach>
								<br>
								<br>
							</div>
						</form>
					</div>
				</section>
				
				<section id="content4">
					<div class= "container" id="wid"> 	
					<input type="hidden" id="seq" name="itemSeq">
						<form method="post" id="main" name="Beyond">
							<div class="row">
								<c:forEach items="${listBeyond}" var="listBeyond" varStatus="status">
									<div class="col-3">
										<div class="card2" id="item">
											<a href="javascript:goView(<c:out value="${listBeyond.itemSeq}"/>)" class="point">
												<img src="${listBeyond.path }${listBeyond.uuidName}" id="img" class="card-img-top">
												<br>
												<p class="name">
													<c:out value="${listBeyond.name }"/>
												</p>
												<br>
												<li class="list-group-item">
													<c:choose>
														<c:when test="${listBeyond.discount eq 0}"></c:when>
														<c:otherwise>
															<span class="before2">
																<c:out value="${listBeyond.discount }"/>%
															</span>
														</c:otherwise>
													</c:choose>
													<span class="sale">
														<fmt:formatNumber value="${listBeyond.price}" pattern="#,###" />원
													</span>
												</li>
											</a>
										</div>
										<br>
										<br>
									</div>
								</c:forEach>
								<br>
								<br>
							</div>
						</form>
					</div>
				</section>
				
				<section id="content5">
					<div class= "container" id="wid"> 	
					<input type="hidden" id="seq" name="itemSeq">
						<form method="post" id="main" name="DD">
							<div class="row">
								<c:forEach items="${listDD}" var="listDD" varStatus="status">
									<div class="col-3">
										<div class="card2" id="item">
											<a href="javascript:goView(<c:out value="${listDD.itemSeq}"/>)" class="point">
												<img src="${listDD.path }${listDD.uuidName}" id="img" class="card-img-top">
												<br>
												<p class="name">
													<c:out value="${listDD.name }"/>
												</p>
												<br>
												<li class="list-group-item">
													<c:choose>
														<c:when test="${listDD.discount eq 0}"></c:when>
														<c:otherwise>
															<span class="before2">
																<c:out value="${listDD.discount }"/>%
															</span>
														</c:otherwise>
													</c:choose>
													<span class="sale">
														<fmt:formatNumber value="${listDD.price}" pattern="#,###" />원
													</span>
												</li>
											</a>
										</div>
										<br>
										<br>
									</div>
								</c:forEach>
								<br>
								<br>
							</div>
						</form>
					</div>
				</section>
			
				<section id="content6">	
					<div class= "container" id="wid"> 	
					<input type="hidden" id="seq" name="itemSeq">
						<form method="post" id="main" name="BO">
							<div class="row">
								<c:forEach items="${listBO}" var="listBO" varStatus="status">
									<div class="col-3">
										<div class="card2" id="item">
											<a href="javascript:goView(<c:out value="${listBO.itemSeq}"/>)" class="point">
												<img src="${listBO.path }${listBO.uuidName}" id="img" class="card-img-top">
												<br>
												<p class="name">
													<c:out value="${listBO.name }"/>
												</p>
												<br>
												<li class="list-group-item">
													<c:choose>
														<c:when test="${listBO.discount eq 0}"></c:when>
														<c:otherwise>
															<span class="before2">
																<c:out value="${listBO.discount }"/>%
															</span>
														</c:otherwise>
													</c:choose>
													<span class="sale">
														<fmt:formatNumber value="${listBO.price}" pattern="#,###" />원
													</span>
												</li>
											</a>
										</div>
										<br>
										<br>
									</div>
								</c:forEach>
								<br>
								<br>
							</div>
						</form>
					</div>
				</section>
			</div>
		</div>
	</form>
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
		
		var goUrlView = "/item/itemView";
		
		var form = $("form[name=formList]");
		var seq = $("input:hidden[name=itemSeq]");
		
		goView = function(pseq) {
			seq.val(pseq);
			form.attr("action", goUrlView).submit();
		}
		
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>