<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<%@include file="../../../common/xdmin/include/head.jsp"%>

	<style type="text/css">
		.back-to-top-css {
			position: fixed;
			bottom: 20px;
			right: 20px;
		}
		
		.mydiv {
			background-image: url('../../resources/images/order.jpg');
			background-size: cover;
		}
		
		.mydiv2 {
			width: 1100px;
		}
		
		#font {
			font-size: 25px;
			font-weight: bold;
		}
		
		#wid {
			width: 1100px;
		}
		
		hr {
			border: 1px solid;
			display: block !important;
			width: 1100px !important;
			color: #848484;
		}
		
		.hr1 {
			border: 1px solid;
			display: block !important;
			width: 640px !important;
			color: #848484;
		}
		
		.hr2 {
			border: 1px solid;
			display: block !important;
			width: 1040px !important;
			color: #848484;
		}
		
		.hr3 {
			border: 1px solid;
			display: block !important;
			width: 420px !important;
			color: #BAB9B9;
		}
		
		#font1 {
			font-size: 20px;
			font-weight: bold;
		}
		
		#font2 {
			font-size: 15px;
			color: #595959;
			font-weight: bold;
		}
		
		#font4 {
			font-size: 15px;
			font-weight: bold;
		}
		
		.font5 {
			font-size: 17px;
			margin-left: 20px;
		}
		
		.font6 {
			font-size: 17px;
			float: right;
		}
		
		.font7 {
			font-size: 17px;
			float: right;
			color: #A70F0F;
		}
		
		.font8 {
			font-size: 19px;
			margin-left: 20px;
			font-weight: bold;
			color: black;
		}
		
		.font9 {
			font-size: 19px;
			float: right;
			color: #A70F0F;
			font-weight: bold;
		}
		
		#cdiv {
			background-color: #f7f7f7;
			margin-left: 10px;
			line-height: 35px;
			color: #3a3a3a;
			font-size: 15px;
		}
		
		#bdiv {
			background-color: #f7f7f7;
			margin-left: 2px;
			line-height: 35px;
			color: #3a3a3a;
			font-size: 17px;
			width: 1100px;
		}
		
		#bdiv1 {
			background-color: #f7f7f7;
			margin-left: 2px;
			line-height: 35px;
			color: #3a3a3a;
			font-size: 17px;
			width: 640px;
			text-align: center;
		}
		
		#text {
			text-align: center;
		}
		
		#text1 {
			margin-left: 30px;
		}
		
		#text2 {
			margin-left: 15px;
		}
		
		#text3 {
			margin-left: 90px;
		}
		
		.text {
			text-align: center;
			margin-top: 80px;
		}
		
		.text1 {
			margin-left: 36px;
			margin-top: 95px;
		}
		
		.text2 {
			margin-left: 117px;
			margin-top: 95px;
		}
		
		.text3 {
			margin-left: 60px;
			margin-top: 80px;
		}
		
		.top {
			margin-top: 8px;
		}
		
		.left {
			margin-left: 18px;
		}
		
		.left1 {
			margin-left: 22px;
		}
		
		.left2 {
			margin-left: 52px;
		}
		
		.btn2 {
			background-color: #9D9B9B;
			color: white;
			border-radius: 0px;
		}
		
		.btn3 {
			background-color: #E73B3B;
			color: white;
			border-color: #A51717;
			width: 100px;
			font-size: 20px;
		}
		
		.form-check {
			margin-top: 4px;
		}
		
		.totalbox {
			border: 2px solid;
			width: 420px;
		}
		
		a:hover {
			color: #4c4c4c;
		}
		
		.img {
			width: 210px;
			height: 210px;
		}
		
		.right {
			float: right;
		}
	</style>
</head>

<body>
    <%@include file="../../../common/xdmin/include/header.jsp"%>
	
	<div class="container-fluid mydiv">
		<div class="container mydiv2">
			<br> 
			<br> 
			<span id="font">주문 / 결제</span> 
			<br> 
			<br>
			<br>
		</div>
	</div> 

	<form id="form" name="form" method="post">
	<input type="hidden" name="itemSeq" value="${pay.itemSeq}" /> 
	<input type="hidden" name="sessSeq" value="${sessSeq}" /> 
	<input type="hidden" name="bname" value="${pay.bname}" /> 
	<input type="hidden" name="name" value="${pay.name}" /> 
	<input type="hidden" name="discount" value="${pay.discount}" /> 
	<input type="hidden" name="price" id="price" value="${pay.price}" /> 
	<input type="hidden" id="itemCount" name="itemCount" value="${dto.itemCount}" /> 
	<input type="hidden" id="rtFinalPrice" name="rtFinalPrice"> 

	<div class="container" id="wid">
		<br> 
		<br> 
		<span id="font1">상품정보</span>
		<hr>
		<div class="row" id="bdiv">
			<div class="col-6" id="text">
				<span>상품정보</span>
			</div>
			<div class="col-2" id="text1">
				<span>할인율</span>
			</div>
			<div class="col-1" id="text2">
				<span>구매가</span>
			</div>
			<div class="col-1" id="text3">
				<span>수량</span>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-2">
				<img src="${pay.path }${pay.uuidName}" class="img">
			</div>
			<div class="col-4 text">
				<span>
					<c:out value="${pay.bname}" />
				</span> 
				<br> 
				<span id="font2">
					<c:out value="${pay.name}" />
				</span>
			</div>
			<div class="col-1 text1" style="margin-left: 50px;">
				<span id="font2">
					<c:out value="${pay.discount}" />
				</span> 
				<span id="font2">%</span>
			</div>
			<div class="col-1 text2" style="margin-left: 92px;">
				<span id="font2"> 
					<fmt:formatNumber pattern="#,###" value="${((pay.price)*(dto.itemCount))}" />
				</span> 
				<span id="font2">원</span>
			</div>
			<div class="col-1 text1" style="margin-left: 100px;">
				<span id="font2">
					<c:out value="${dto.itemCount}" />
				</span> 
				<span id="font2">개</span>
			</div>
		</div>
		<hr>
		<br> 
		<br> 
		<br> 
		<span id="font1">배송지 정보</span>
		<hr>
		<div class="row">
			<div class="col-3" id="cdiv">
				<span>배송지 선택</span>
			</div>
			<div class="col-7" style="margin-top: 6px;">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" value="option1">
					<label class="form-check-label" for="flexRadioDefault2">기존 배송지</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault63" value="option2" checked> 
					<label class="form-check-label" for="inlineRadio2">신규 배송지</label>
				</div>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-3" id="cdiv">
				<span>배송지 명</span>
			</div>
			<div class="col-5">
				<input type="text" class="form-control" id="validationCustom01">
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-3" id="cdiv">
				<span>받는분</span>
			</div>
			<div class="col-5">
				<input type="text" class="form-control" id="validationCustom01">
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-3" id="cdiv">
				<span>연락처</span>
			</div>
			<div class="col-2">
				<select class="form-select" aria-label="validationCustom03">
					<option selected>SKT</option>
					<option value="2">KT</option>
					<option value="3">LG</option>
					<option value="4">알뜰폰</option>
				</select>
			</div>
			<div class="col-1">
				<select class="form-select" aria-label="validationCustom04">
					<option selected>010</option>
					<option value="2">070</option>
					<option value="3">02</option>
				</select>
			</div>
			<div class="col-2">
				<input type="text" class="form-control" id="validationCustom01">
			</div>
			<div class="col-2">
				<input type="text" class="form-control" id="validationCustom01">
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-3" id="cdiv">
				<span>주소</span>
			</div>
			<div class="col-8" style="margin-top: 8px;">
				<div class="row">
					<div class="col-5">
						<div class="input-group">
							<input type="text" id="zip" class="form-control" placeholder="우편번호">
							<button type="button" class="btn btn-outline-secondary" id="addrButton">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
							<button class="btn btn-outline-secondary" type="button" id="clearButton">
								<i class="fa-solid fa-arrow-rotate-left"></i>
							</button>
						</div>
					</div>
					<div>
						<input type="text" id="addr1" class="form-control" placeholder="주소">
					</div>
					<div class="col-6">
						<input type="text" id="addr2" class="form-control" placeholder="상세주소">
					</div>
					<div class="col-6">
						<input type="text" id="addr3" class="form-control" placeholder="참고항목">
					</div>
				</div>
			</div>
		</div>
		<hr>
		<br> 
		<br> 
		<br> 
		<span id="font1">배송 요청사항</span>
		<hr>
		<div class="row">
			<div class="col-3" id="cdiv">
				<span>배송 메시지</span>
			</div>
			<div class="col-5">
				<select class="form-select" aria-label=".form-select example" required>
					<option selected>::배송메시지를 선택해주세요.::</option>
					<option value="1">문 앞에 놔주세요.</option>
					<option value="2">경비실에 맡겨주세요.</option>
					<option value="3">배송 전에 전화주세요.</option>
					<option value="4">부재시 연락주세요.</option>
				</select>
			</div>
		</div>
		<hr>
		<br> 
		<br> 
		<br>
		<div class="row">
			<div class="col-7">
				<span id="font1">보유 쿠폰</span>
				<hr class="hr1">
				<div class="row" id="bdiv1">
					<div class="col-2 left">
						<span>쿠폰명</span>
					</div>
					<div class="col-3 left1">
						<span>금액</span>
					</div>
					<div class="col-2 left2">
						<span>유효기간</span>
					</div>
				</div>
				<hr class="hr1">
				<div class="row" id="text">
					<div class="col-3 top">
						<span>신규 회원가입</span>
					</div>
					<div class="col-3">
						<span>5,000원</span><br> <span>(10,000원 이상 구매시)</span>
					</div>
					<div class="col-4 top">
						<span>2022.06.30 ~ 2022.12.31</span>
					</div>
					<div class="col-2">
						<button type="button" class="btn btn2" onclick="applyCoupon(5000,10000)">적용</button>
					</div>
				</div>
				<hr class="hr1">
				<div class="row" id="text">
					<div class="col-3 top">
						<span>첫구매 장바구니 쿠폰</span>
					</div>
					<div class="col-3">
						<span>7,000원</span><br> <span>(20,000원 이상 구매시)</span>
					</div>
					<div class="col-4 top">
						<span>2022.07.03 ~ 2022.11.30</span>
					</div>
					<div class="col-2">
						<button type="button" class="btn btn2" onclick="applyCoupon(7000,20000)">적용</button>
					</div>
				</div>
				<hr class="hr1">
				<div class="row" id="text">
					<div class="col-3 top">
						<span>쇼핑이 즐거운 화요일</span>
					</div>
					<div class="col-3">
						<span>3,000원</span><br> <span>(15,000원 이상 구매시)</span>
					</div>
					<div class="col-4 top">
						<span>2022.07.26 ~ 2022.11.26</span>
					</div>
					<div class="col-2">
						<button type="button" class="btn btn2" onclick="applyCoupon(3000,15000)">적용</button>
					</div>
				</div>
				<hr class="hr1">
				<!-- <div class="row" id="text">
				<div class="col-3">
				</div>
				<div class="col-3">
				</div>
				<div class="col-3">
				</div>
				<div class="col-3">
					<button type="button" class="btn btn2" id="delCoupon" style="margin-right: 10px;">쿠폰 적용 취소</button>
				</div>
			</div> -->
			</div>
			<div class="col-4 left">
				<span id="font1">최종 결제 정보</span> 
				<br> 
				<br>
				<div class="row left totalbox">
					<div class="col-4">
						<br> 
						<span class="font5">총 상품 금액</span>
					</div>
					<div class="col-7">
						<br>
						<span class="font6 right">원</span> 
						<span class="font6 right" id="totalPrice">
							<fmt:formatNumber pattern="#,###" value="${((pay.price)*(dto.itemCount))}" />
						</span>
					</div>
					<div class="col-4">
						<br> 
						<span class="font5">쿠폰 할인 금액</span>
					</div>
					<div class="col-7">
						<br> 
						<span class="font7 right">원</span> 
						<span class="font7 right" id="discount"></span> 
						<br> 
						<br>
					</div>
					<hr class="hr3">
					<div class="col-4">
						<span class="font5">총 배송비</span>
					</div>
					<div class="col-7">
						<span class="font7 right">원</span> 
						<span class="font7 right" id="fee"></span> 
						<br> 
						<br>
					</div>
					<hr class="hr3">
					<div class="col-5">
						<br> 
						<span class="font8">최종 결제 금액</span>
					</div>
					<div class="col-6">
						<br> 
						<span class="font9 right">원</span> 
						<span class="font9 right" id="totalPrice2"></span> 
						<br> 
						<br>
						<br>
					</div>
					<%-- <form id="formVo" name="formVo">
						<input type="hidden" name="sessSeq" value="${sessSeq}" id="ifMmSeq">
						<input type="hidden" name="sessName" value="${sessName}" id="ifMmName">
						<input type="hidden" name="sessId" value="${sessId}" id="ifMmId">
						<input type="hidden" name="tid" value="" id="tid">
						<input type="hidden" name="created_at" value="" id="created_at">
					</form> --%>
					<div style="text-align: center;">
						<!-- <a href="/payment/payDone"> -->
							 <a type="button" class="btn btn3" href="javascript:kakao()">결제하기</a>
							<%-- <a type="button" class="btn btn3" href="javascript:kakao(''${dto.bname}', ${dto.name}', '${price}','${sessId}')"></a> --%>
						<!-- </a> -->
						<br> 
						<br>
					</div>
				</div>
			</div>
		</div>
		<br> 
		<span id="font1">결제수단</span>
		<hr class="hr1">
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked>
			<label class="form-check-label" for="inlineRadio1">카카오페이</label>
		</div>
		<hr class="hr1">
		<br> 
		<br> 
		<br>
		<div class="accordion" id="accordionExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="panelsStayOpen-headingOne">
					<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
						주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="checkboxAll" name="checkboxAll"> 
							<label class="form-check-label" for="defaultCheck1"> 모두 동의 </label>
						</div>
					</button>
				</h2>
				<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
					<div class="accordion-body">
						<hr class="hr2">
						<span id="font4">주문상품정보에 대한 동의</span>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" name="checkboxSeq"> 
							<label class="form-check-label" for="defaultCheck1">주문하실 상품, 가격, 배송정보, 할인내역등을 최종 확인하였으며, 구매에 동의합니다. (전상거래법 제8조 제2항) </label>
						</div>
						<hr class="hr2">
						<strong>결제대행 서비스 이용약관 동의</strong>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" name="checkboxSeq"> 
							<label class="form-check-label" for="defaultCheck1">전자금융거래 기본약관</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" name="checkboxSeq"> 
							<label class="form-check-label" for="defaultCheck1">개인정보 수집 및 이용 동의</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" name="checkboxSeq"> 
							<label class="form-check-label" for="defaultCheck1">개인정보 제공 및 위탁 동의</label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br> 
		<br>
	</div>

	<%@include file="../../../common/xdmin/include/footer.jsp"%>

<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2405cb6e30cd78e7478b78325118dec&libraries=services,clusterer,drawing"></script>

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

	var goUrlInst = "/payment/payInst";
	var seq = $("input:hidden[name=itemSeq]"); /* #-> */
	var form = $("form[name=form]");
	/* var formVo = $("form[name=formVo]");
	var goPurchase = "/payment/ticketingForm";				
	var goAfter = "/payment/payDone";
	var goPay = "/payment/kakaopay"
  */
  
	$("#btnPay").on("click", function() {
		form.attr("action", goUrlInst).submit();
	});

	$("#addrButton").on("click", function() {
		openZipSearch();
	});

	$("#addrButton2").on("click", function() {
		openZipSearch2();
	});

	$("#clearButton").on("click", function() {
		$("#zip").val('');
		$("#addr1").val('');
		$("#arrd2").val('');
		$("#addr3").val('');
	});

	$("#clearButton2").on("click", function() {
		$("#zip2").val('');
		$("#addr4").val('');
		$("#arrd5").val('');
		$("#addr6").val('');
	});

	function openZipSearch() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var addr = '';
						var extraAddr = '';

						if (data.userSelectedType === 'R') {
							addr = data.roadAddress;
						} else {
							addr = data.jibunAddress;
						}

						if (data.userSelectedType === 'R') {
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName
										: data.buildingName);
							}
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							document.getElementById("addr3").value = extraAddr;

						} else {
							document.getElementById("addr3").value = '';
						}

						document.getElementById('zip').value = data.zonecode;
						document.getElementById("addr1").value = addr;
						document.getElementById("addr2").focus();

						geocoder.addressSearch(addr, callback);
					}

				}).open();
	}

	var geocoder = new kakao.maps.services.Geocoder(); 

	var callback = function(result, status) {
		if (status === kakao.maps.services.Status.OK) {
			console.log(result);
			document.getElementById("memLat").value = result[0].x;

			$("input[name=memLng]").val(result[0].y);
		}
	};

	//약관 전체 체크
	$('#checkboxAll').click(function() {
		if ($("#checkboxAll").is(':checked'))
			$("input[name=checkboxSeq]").prop("checked", true);
		else
			$("input[name=checkboxSeq]").prop("checked", false);
	});

	$("input[name=checkboxSeq]").click(function() {

		var total = $("input[name=checkboxSeq]").length;
		var checked = $("input[name=checkboxSeq]:checked").length;

		if (total != checked)
			$("checkboxAll").prop("checked", false);
		else
			$("checkboxAll").prop("checked", true);
	});

	//쿠폰 적용
	window.onload = function(){
		if(myPrice >= 20000){
			fee = 0; 
		}else{
			fee = 2500;
		}
		$("#fee").html(fee.toLocaleString()); // 배송비 출력
		
		Price = parseInt(myPrice); 
		delifee = parseInt(fee);
		finalPrice = parseInt(Price + delifee); // 최종 금액(string 값 int로 받아오기)
		$("#totalPrice2").html(finalPrice.toLocaleString()); // 최종 금액(쿠폰 적용 전)
	}
	
	var myPrice = $("#totalPrice").text();
	myPrice = myPrice.replace(',',''); // , 빼주기
	myPrice = myPrice.trim(); // 공백지우기
	$("#discount").text('0'); // 처음 쿠폰 할인 금액 0원
	
	function applyCoupon(discount,minPrice){  
		if(myPrice < minPrice){
			alert("구매 금액이 쿠폰 사용 최소 금액보다 적습니다.");
			return;
		}else{
			applyPrice = myPrice - discount + fee;	// 최종 금액(쿠폰 적용 후)
		}
		$("#discount").html(discount.toLocaleString()); // 쿠폰 할인 금액 값 입력
		$("#totalPrice2").html(applyPrice.toLocaleString()); // 최종 금액 값 입력
	};
	
	$("#rtCount").val(itemCount); 

	/* /* $("#delCoupon").on("click", function(){
		$("#couponPrice").val("0");
	}); */
	
	//카카오페이
	kakao = function(){
		$.ajax({
			async: true
			,cach: false
			,method: "post"  //
			,url: "/payment/kakaopayReady"
			,data: {
				form : $("#form").serialize()
				//input hidden 으로 선언한 dto 내용 전부 넘김
			}
			,success: function(response){
				location.href= response.next_redirect_pc_url
				//카카오에서 제공하는 url로 바로 이동
			}
			,error : function(){
				alert("결제에 실패했습니다.");
			}
		});
	}
</script>
	
</body>
</html>