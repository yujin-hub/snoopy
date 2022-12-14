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

	<title>코드그룹 관리</title>
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
    
    
    <style type ="text/css">
		.back-to-top-css { 
		    position: fixed;
		    bottom: 20px;
		    right: 20px;
		}

		.mydiv{
			background-image: url('../../resources/images/head2.jpg');
			background-size: cover;
		}
		
		.mydiv2{
			width: 1100px;
		}
		
		#font{
			font-size: 25px;
			font-weight: bold;
		}
		
		.wid{
			width: 1800px;
		}
		
		.wid2{
			width: 1000px;
		}
		
		.wid5{
			width: 350px;
		}
		
		.wid6{
			width: 700px;
		}
		
		section {
			display: none;
			padding: 20px 0 0;
			border-top: 1px solid #9DCC30;
		}
		
		.input {
			display: none;
		} 
		
		label {
			display: inline-block;
			margin: 0 0 -1px;
			padding: 15px 30px;
			font-weight: bold;
			text-align: center;
			color: #bbb;
			border: 1px solid transparent;
			font-size: 16px;
		  }
		
		input:checked + label {
			 color: #9DCC30;
			 border: 2px solid #9DCC30;
			 border-top: 2px solid #9DCC30;
			 border-bottom: 1px solid #ffffff;
		  }
		
		#tab1:checked ~ #content1 {
			display: block;
		}
		
		.mid{
  			text-align: center;
  		}
  		
  		.form-control:disabled, .form-control[readonly]{
		    background-color: #ffffff;
		    color: black;
		    font-weight: bold;
		    opacity: 1;
		}

		.btn-space{
		    margin-right: 5px;
		}
		
		.btn1{
			border-color: #C8C8C8;
		}
		
		.btn2{
			float: right;
			background-color: #FF5A79;
			color: white;
		}
		
		.box{
			border: 2px solid #D3D3D3; 
			border-radius: 10px;
			padding: 15px;
		}
		
		table, td,th{
			text-align: center;
		}
		
		table{
			font-size: 15px;
		}

		th, td {
		  	vertical-align : middle;
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
		 
		.cursor{
			cursor: pointer;
		}
		
		.font{
			font-size: 23px;
		}

		.font2{
			margin-top: 10px;
			font-size: 14px;
		}
		
		.nav-link{
			color: #353535;;
			font-size: 16px;
			font-weight: bold;	
		}
		
		.nav-link:hover {
			color: #ce63be;
		}
		
		.btn-success{
			float: right;
		}

		.btn3{
			float: left;
		}
			
		.form-select-sm{
			font-size: 12px;		
		}
		
		a:hover{
			color: #ce63be;
		}
		
		a{
			color: black;		
		}
	</style>
</head>
    
<body>

	<!-- 헤더  -->
	<div id="Header">
		<div class="top_util">
			<ul class="menu_list" id="menu_list_header">
				<li class="login"><a href="#" data-attr='공통^헤더^로그인'><i class="fa-solid fa-wrench"></i> 매니저 님, 반갑습니다</a></li>
				<li class="cart"><a href="/codeGroup/codeGroupList"data-attr='공통^헤더^장바구니'>관리 홈<span id="cartToCnt"></span></a></li>
				<li class="cart"><a href="/member/logoutProc">로그아웃<span id="cartToCnt"></span></a></li>
			</ul>
		</div>
		
		<form autocomplete="off">
			<div class="header_inner">
	            <h1><a href="/item/itemListDmin"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>
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

	<div class="container-fluid mydiv">
		<div class="container mydiv2">
			<br>
			<br>
			<span id="font">코드그룹 관리</span>
			<br>
			<br>
			<br>
		</div>
	</div> 
	<br>
	<br>
	<div class="container wid">
		<div class="row">
			<div class="col-2 right">
				<span class="font">Setting</span>
				<br>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link" href="../member/memberList">회원 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="../item/itemListSet">상품 관리</a>
					</li>
					<!-- <li class="nav-item">
						<a class="nav-link" href="#">주문 관리</a>
					</li> -->
				</ul>
				<br>
				<br>
				<span class="font">Code</span>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link" href="codeGroupList">코드 그룹 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/code/codeList">코드 관리</a>
					</li>
				</ul>
			</div>
			<div class="col-10">
				<div class="main left2">
					<input class="input" id="tab1" type="radio" name="tabs" checked> 
					<label for="tab1">코드그룹</label>
					
					<input class="input" id="tab2" type="radio" name="tabs" disabled> 
					<label for="tab1">코드그룹 등록</label>
					
					<section id="content1">
						<div class="container wid2">
							<br>
							<br>
							<div class="container box">
								<br>
								<div class="container wid6">
									<form method="post" name="formList">
										<input type="hidden" name="seq">
										<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
										<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
										<input type="hidden" name="checkboxSeqArray" >
										
										<div class="row">
											<div class="col-3">
												<select id="shDelNY" name="shDelNY" class="form-select wid3">
													<option value="" <c:if test="${empty vo.shDelNY}">selected</c:if>>::삭제여부::</option>
													<option value="0" <c:if test="${vo.shDelNY eq 0}">selected</c:if>>N</option>
													<option value="1" <c:if test="${vo.shDelNY eq 1}">selected</c:if>>Y</option>
												</select>
											</div>
											<div class="col-3">
												<select class="form-select wid3" name="shOptionDate">
													<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>::날짜 선택::</option>
													<option value="4" <c:if test="${vo.shOptionDate eq 4}">selected</c:if>>등록일</option>
													<option value="5" <c:if test="${vo.shOptionDate eq 5}">selected</c:if>>수정일</option>
												</select>
											</div>
											<div class="col-3">
												<input type="text" id="shDateStart" class="form-control mid wid4 shDate" name="shDateStart" value="${vo.shDateStart}" placeholder="시작일" autocomplete="off">
											</div>
											<div class="col-3">
												<input type="text" class="form-control mid wid4 shDate" id="shDateEnd" name="shDateEnd" value="${vo.shDateEnd}" placeholder="종료일" autocomplete="off">
											</div>
										</div>
										<br>
										<div class="row">
											<div class="col-4">
												<select id="shOption" name="shOption" class="form-select wid3">
													<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>::검색 구분::</option>
													<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>코드그룹 코드</option>
													<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>코드그룹 이름(한글)</option>
													<option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>코드그룹 이름(영문)</option>
												</select>
											</div>
											<div class="col-6">
												<input type="text" class="form-control mid" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어 입력" autocomplete="off">
											</div>
											<div class="col-2">
												<button type="button" class="btn btn1 btn-space" id="btnReset" style="margin-left: 8px;"><i class="fa-solid fa-arrow-rotate-left"></i></button> 
												<button class="btn btn1 btn-space" id="btnSearch"><i class="fa-solid fa-magnifying-glass"></i></button>
											</div>
										</div>
									</form>
								</div>
								<br>
							</div>
						</div>
						<br>
						<br>
						<br>
						<div id="Lita"></div>
						<br>
						<!-- x버튼 Modal -->
						<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel2"><b>Olive Young</b></h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										정말로 삭제하시겠습니까?
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
										<button type="button" class="btn btn-dark" id="btnDelete">삭제 </button>
									</div>
								</div>
							</div>
						</div>
							
						<!-- 휴지통 Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel"><b>Olive Young</b></h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										정말로 삭제하시겠습니까?
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
										<button type="button" class="btn btn-dark" id="btnUelete">삭제 </button>
									</div>
								</div>	
							</div>
						</div>
			
						<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal2" id="btnDelete"><i class="fa-solid fa-x"></i></button>
						<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" id="btnUelete"><i class="fa-solid fa-trash-can"></i></button>
							
					<!-- <button class="btn btn3 btn-space btn-danger" id="btnUelete"><i class="fa-solid fa-trash-can"></i></button> 
						<button class="btn btn3 btn-space btn-danger" role="button" id="btnDelete"><i class="fa-solid fa-x"></i></button> -->			
						<a href="codeGroupForm" class="btn btn2 btn-space" role="button"><i class="fa-solid fa-plus"></i></a> 
						<a class="btn btn-success btn-space" role="button"><i class="fa-solid fa-file-excel"></i></a>							
						<br>
						<br>
						<br>
					</div>
				</section>
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
            	$('#back-to-top').fadeIn();
	        });
	        // scroll body to 0px on click
	        $('#back-to-top').click(function () {
	            $('#back-to-top').tooltip('hide');
	                scrollTop: 0
	            }, 100);
	            return false;
	        });

	 	$(document).ready(function() {
			$("#chkAll").click(function() {
				if($("#chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});

			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;

				if(total != checked) $("#chkAll").prop("checked", false);
				else $("#chkAll").prop("checked", true); 
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
	 	
 	var goUrlList = "/codeGroup/codeGroupList";				// var: 변수 선언 예약어			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	var goUrlForm = "/codeGroup/codeGroupForm";				/* #-> */

	var form = $("form[name=formList]");

	var seq = $("input:hidden[name=seq]");
	
	$('#btnForm').on("click", function() {
		goForm(0);                
	});

	$("#btnSearch").on("click", function(){
		form.attr("action", goUrlList).submit();
	});

	$("#btnReset").on("click", function(){
		$(location).attr("href", goUrlList);
	});
	
	goForm = function(keyValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
    	seq.val(keyValue);
    	form.attr("action", goUrlForm).submit();
	}

 	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	}
 	
	$("#btnUelete").on("click", function() {
		form.attr("action", goUrlUele).submit();
	});
	
	$("#btnDelete").on("click", function() {
		form.attr("action", goUrlDele).submit();
	});
	
		$(document).ready(function(){
			 $("input.shDate").datepicker();
		}); 
		
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		    showMonthAfterYear: true,
		    yearSuffix: '년'
		});
		
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>