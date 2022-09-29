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

	<title>회원 정보</title>
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
		
		#footer {
		    position: relative;
		    left: 0;
		    bottom: 0;
		    width: 100%;
			padding: 15px 0;
			text-align: center;
		}
    	
 		#wid2 {
			width: 1100px;
		}
		
    	hr {
    		border: 1px solid; 
    		display: block !important;
    		width: 100% !important;
    	}
    	
    	#hr2 {
    		border: 2px solid; 
    		display: block !important;
    		width: 100px !important;
    		color: #03281A;
    	}
    	
    	span {
    		font-size: 16px;	
    	}
    	
    	#cdiv {
    		background-color: #f7f7f7;
    		text-align: center;
    		margin-left: 10px; 
    		line-height: 35px;
		}
    	
    	.btn-space {
		    margin-right: 5px;
		}
		
		.form-check{
			padding-left: 0em;		
		}
		
		.left{
			margin-left: 20px;
		}
		
		.form-control:disabled, .form-control[readonly] {
		    background-color: #f2f2f2;
		    opacity: 1;
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
					<img src="../../resources/images/young.jpg">
				</div>
			</div>
			<span class="oy">대한민국을 대표하는 HEALTH & BEAUTY STORE</span>
			<h1 class="oy2"><a href="../item/itemList"><img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png"></a></h1>
		</div>
	</div> 
	<br>
	<br>
	<div class= "container" id="wid2">
		<h1 style="display: inline;">회원 정보</h1> 
		<hr id="hr2">
	</div>	
	<br>
	<div class= "container" id="wid2">
		<form name="formMem" method="post" action="/member/memberInst">
		<%-- <%@include file="memberVo.jsp"%>	 --%>
			<input type="hidden" name="seq" value="<c:out value="${vo.seq }"/>">
			<h4>기본사항</h4>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>성명</span>
				</div>
				<div class="col-4">
					<input type="text" class="form-control" value="<c:out value="${item.name}"/>">
				</div>
				<div class="col-2" id="cdiv">
					<span>성별</span>
				</div>
				<div class="col-3" style="margin-top: 10px;">
					<div class="form-check form-check-inline left">
						  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
						  <label class="form-check-label" for="inlineRadio1">남성</label>
					</div>
					<div class="form-check form-check-inline left">
						  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
						  <label class="form-check-label" for="inlineRadio2">여성</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>생년월일</span>
				</div>
				<div class="col-4">
					<input type="text" class="form-control" value="<c:out value="${item.dob}"/>">
				</div>
				<div class="col-2" id="cdiv">
					<span>휴대폰</span>
				</div>
				<div class="col-3">
					<input type="text" class="form-control" value="<c:out value="${item.tel}"/>">
				</div>
			</div>
			<hr>
			<br>
			<br>
			<h4>필수입력 사항</h4>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>아이디</span>
				</div>
				<div class="col-3">
					<input type="hidden" id="userIDAllowNY" name="userIDAllowNY" value="0">
					<input type="text" class="form-control" id="userID" name="userID" placeholder="4자리 이상의 영문 + 숫자" value="<c:out value="${item.userID}"/>">
					<div class="invalid-feedback" id="userIDFeedback"></div>
				</div>
				<br>
				<div class="col-7">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>닉네임</span>
				</div>
				<div class="col-3">
					<input type="hidden" id="nicknameAllowNY" name="nicknameAllowNY" value="0">
					<input type="text" class="form-control" id="nickname" name="nickname" value="<c:out value="${item.nickname}"/>">
					<div class="invalid-feedback" id="nicknameFeedback"></div>
				</div>
				<br>
				<div class="col-7">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>비밀번호</span>
				</div>
				<div class="col-4">
					<input type="password" class="form-control" placeholder="8~16자의 대/소문자, 숫자, 특수문자 조합 생성" value="<c:out value="${item.pw}"/>">
				</div>
			</div>
			<hr>	
			<%-- <div class="row">
				<div class="col-2" id="cdiv">
					<span>비밀번호 확인</span>
				</div>
				<div class="col-4">
					<input type="password" class="form-control" placeholder="8~16자의 대/소문자, 숫자, 특수문자 조합 생성" value="<c:out value="${item.pw}"/>" readonly>
				</div>
				<div class="col-5">
				</div> 
			</div>
			<hr> --%>	
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>주소</span>
				</div>
				<div class="col-9" style="margin-top: 8px;">
					<!-- <span>우편물 수령지</span>
					<div class="form-check form-check-inline left">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
						<label class="form-check-label" for="inlineRadio1">자택</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
						<label class="form-check-label" for="inlineRadio2">직장</label>
					</div>
					<br> 
					<hr>
					<span>자택 주소</span> -->
					<div class="row gy-2">
						<div class="col-5">
							<div class="input-group">
								<input type="text" id="zip" class="form-control" placeholder="우편번호" disabled>
								<button type="button" class="btn btn-outline-secondary" id="addrButton"><i class="fa-solid fa-magnifying-glass"></i></button>
								<button class="btn btn-outline-secondary" type="button" id="clearButton"><i class="fa-solid fa-arrow-rotate-left"></i></button>
							</div>
						</div>
						<div><input type="text" id="addr1" class="form-control" placeholder="주소" disabled></div>
						<div class="col-6">
							<input type="text" id="addr2" class="form-control" placeholder="상세주소">
						</div>
						<div class="col-6">
							<input type="text" id="addr3" class="form-control" placeholder="참고항목" disabled>
						</div>
						<div class="col-6">
							<input type="text" id="memLat" name="memLat" class="form-control" placeholder="위도" disabled>
						</div>
						<div class="col-6">
							<input type="text" name="memLng" class="form-control" placeholder="경도" disabled>
						</div>
					</div>
					<!-- <span>직장 주소</span>
					<div class="row gy-2">
						<div class="col-5">
							<div class="input-group">
								<input type="text" id="zip2" class="form-control" placeholder="우편번호" disabled>
								<button type="button" class="btn btn-outline-secondary" id="addrButton2"><i class="fa-solid fa-magnifying-glass"></i></button>
								<button class="btn btn-outline-secondary" type="button" id="clearButton2"><i class="fa-solid fa-arrow-rotate-left"></i></button>
							</div>
						</div>
						<div><input type="text" id="addr4" class="form-control" placeholder="주소" disabled></div>
						<div class="col-6">
							<input type="text" id="addr5" class="form-control" placeholder="상세주소">
						</div>
						<div class="col-6">
							<input type="text" id="addr6" class="form-control" placeholder="참고항목" disabled>
						</div>
					</div> -->
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>연락처</span>
				</div>
				<div class="col-1">
					<select class="form-select">
						<option selected>010</option>
						<option value="2">070</option>
						<option value="3">02</option>
						<option value="4">기타</option>
					</select> 
				</div>
				<div class="col-2">
					<input type="text" class="form-control" value="<c:out value="${item.telMid}"/>">
				</div>
				<div class="col-2">
					<input type="text" class="form-control" value="<c:out value="${item.telEnd}"/>"> 
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>이메일</span>
				</div>
				<div class="col-md-9">
					<div class="input-group">
						<input type="text" class="form-control" value="<c:out value="${item.emailID}"/>" name="emailID" id="emailID">
						<span class="input-group-text">@</span>
						<select class="form-select" name="emailseq">
							<option selected>::선택::</option>
							<option value="15" <c:if test="${item.emailseq eq 15 }"> selected</c:if>>naver.com</option>
							<option value="16" <c:if test="${item.emailseq eq 16 }"> selected</c:if>>gmail.com</option>
							<option value="17" <c:if test="${item.emailseq eq 17 }"> selected</c:if>>hanmail.com</option>
							<option value="18" <c:if test="${item.emailseq eq 18 }"> selected</c:if>>nate.com</option>
							<option value="19" <c:if test="${item.emailseq eq 19 }"> selected</c:if>>daum.net</option>
							<option value="20" <c:if test="${item.emailseq eq 20 }"> selected</c:if>>kakao.com</option>
							<%-- <option selected>선택</option>
							<option value="28" <c:if test="${item.emailDomain eq 28 }"> selected</c:if>>naver.com</option>
							<option value="29" <c:if test="${item.emailDomain eq 29 }"> selected</c:if>>gmail.com</option>
							<option value="30" <c:if test="${item.emailDomain eq 30 }"> selected</c:if>>daum.net</option> --%>
						</select> 
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>회원등급</span>
				</div>
				<div class="col-4">
					<div class="input-group">
						<select class="form-select">
							<option selected>::회원 등급::</option>
							<option value="1">베이비올리브</option>
							<option value="2">핑크올리브</option>
							<option value="3">그린올리브</option>
							<option value="4">블랙올리브</option>
							<option value="4">골드올리브</option>
						</select> 
					</div>
				</div>
			</div>
			<hr>
			<h6 style="color: #9E4D4D;">※ 기입하신 정보는 고객님의 동의 없이 공개되지 않으며, 고객님의 정보는 개인정보보호정책에 의해 보호를 받습니다.</h6>
			<br>
			<!--  <br>
			<h4>관심사</h4>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>피부 타입</span>
				</div>
				<div class="col-8" style="margin-top: 8px;">
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
					  	<label class="form-check-label" for="inlineCheckbox1">건성</label>
					</div>
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
					  	<label class="form-check-label" for="inlineCheckbox2">지성</label>
					</div>
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option3">
					  	<label class="form-check-label" for="inlineCheckbox1">복합성</label>
					</div>
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option4">
					  	<label class="form-check-label" for="inlineCheckbox2">중성</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>관심분야</span>
				</div>
				<div class="col-8" style="margin-top: 8px;">
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1.">
					  	<label class="form-check-label" for="inlineCheckbox1">스킨케어</label>
					</div>
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2.">
					  	<label class="form-check-label" for="inlineCheckbox2">색조 메이크업</label>
					</div>
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option3.">
					  	<label class="form-check-label" for="inlineCheckbox1">바디케어</label>
					</div>
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option4.">
					  	<label class="form-check-label" for="inlineCheckbox2">헤어</label>
					</div>
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option5.">
					  	<label class="form-check-label" for="inlineCheckbox2">향수/디퓨저</label>
					</div>
					<div class="form-check form-check-inline">
					  	<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option6.">
					  	<label class="form-check-label" for="inlineCheckbox2">건강식품</label>
					</div>
				</div>
			</div>
			<hr>
			<h6 style="color: #9E4D4D;">※ 표시하신 정보를 토대로 고객님께 맞는 제품을 추천해드립니다.</h6>
			<br> -->
			<br>
			<button type="button" class="btn btn-secondary" style="float: right;" id="btnSave"><i class="fa-solid fa-bookmark"></i></button>
			<button type="button" class="btn btn-secondary btn-space" style="float: right;" id="btnList"><i class="fa-solid fa-list-ul"></i></button>
			<br>
			<br>
			<br>
			<br>
		</form>
	</div>
		
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
		$("#addrButton").on("click", function(){
			openZipSearch();
		});
		
		$("#addrButton2").on("click", function(){
			openZipSearch2();
		});
		
		$("#clearButton").on("click", function(){
			$("#zip").val('');
			$("#addr1").val('');
			$("#arrd2").val('');
			$("#addr3").val('');
		});
		
		$("#clearButton2").on("click", function(){
			$("#zip2").val('');
			$("#addr4").val('');
			$("#arrd5").val('');
			$("#addr6").val('');
		});
		
		function openZipSearch() {
		    new daum.Postcode({
		          oncomplete: function(data) {
	        	    var addr = '';
		  		    var extraAddr = '';

					if (data.userSelectedType === 'R') { 
		                  addr = data.roadAddress;
		              } else { 
		                  addr = data.jibunAddress;
		              }

		              if(data.userSelectedType === 'R'){
		                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                      extraAddr += data.bname;
		                  }
		                  if(data.buildingName !== '' && data.apartment === 'Y'){
		                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                  }
		                  if(extraAddr !== ''){
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
		
	
		var goUrlList = "/member/memberList"; 			/* #-> */
		var goUrlInst = "/member/memberInst"; 			/* #-> */
		var goUrlUpdt = "/member/memberUpdt";				/* #-> */
		var goUrlUele = "/member/memberUele";				/* #-> */
		var goUrlDele = "/member/memberDele";				/* #-> */
		
		var seq = $("input:hidden[name=seq]");				/* #-> */
		
		var form = $("form[name=formMem]");
		var formVo = $("form[name=formVo]");
		
		
		$("#btnSave").on("click", function(){
			if (seq.val() == "0" || seq.val() == ""){
		   		form.attr("action", goUrlInst).submit();
		   	} else {
		   		form.attr("action", goUrlUpdt).submit();
		   	}
		}); 
		
		$("#btnList").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		
		/* function openZipSearch2() {
		    new daum.Postcode({
		          oncomplete: function(data) {
	        	    var addr = '';
		  		    var extraAddr = '';
		  		    
		              if (data.userSelectedType === 'R') { 
		                  addr = data.roadAddress;
		              } else { 
		                  addr = data.jibunAddress;
		              }

		              if(data.userSelectedType === 'R'){
		                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                      extraAddr += data.bname;
		                  }
		                  if(data.buildingName !== '' && data.apartment === 'Y'){
		                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                  }
		                  if(extraAddr !== ''){
		                      extraAddr = ' (' + extraAddr + ')';
		                  }
		                  document.getElementById("addr6").value = extraAddr;
		              
		              } else {
		                  document.getElementById("addr6").value = '';
		              }

		              document.getElementById('zip2').value = data.zonecode;
		              document.getElementById("addr4").value = addr;
		              document.getElementById("addr5").focus();
		          }
		    
		    }).open();

		}
	 */
	 
	 
	 function idCheck () {
		 
	 }
	 
	 $("#userID").on("focusout", function(){
/* 		
		if(!idCheck('userID'), 2, 0, "4자리 이상의 영문 + 숫자로만 입력해주세요.") {
		 	 return false;
	 	}else {*/
	 		$.ajax({
	 			async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/idCheck"
				/* ,data : $("#formLogin").serialize() */
				,data : { "userID" : $("#userID").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("userID").classList.add('is-valid');
	
						document.getElementById("userIDFeedback").classList.remove('invalid-feedback');
						document.getElementById("userIDFeedback").classList.add('valid-feedback');
						document.getElementById("userIDFeedback").innerText = "사용 가능한 아이디입니다.";
						
						document.getElementById("userIDAllowNY").value = 1;
						
					} else {
						document.getElementById("userID").classList.add('is-invalid');
						
						document.getElementById("userIDFeedback").classList.remove('valid-feedback');
						document.getElementById("userIDFeedback").classList.add('invalid-feedback');
						document.getElementById("userIDFeedback").innerText = "이미 사용중인 아이디입니다.";
						
						document.getElementById("userIDAllowNY").value = 0;
					}
				}
			});
	});
	 
	 $("#nickname").on("focusout", function(){
		 /* 		
		 		if(!idCheck('userID'), 2, 0, "4자리 이상의 영문 + 숫자로만 입력해주세요.") {
		 		 	 return false;
		 	 	}else {*/
		 	 		$.ajax({
		 	 			async: true 
		 				,cache: false
		 				,type: "post"
		 				/* ,dataType:"json" */
		 				,url: "/member/nickCheck"
		 				/* ,data : $("#formLogin").serialize() */
		 				,data : { "nickname" : $("#nickname").val() }
		 				,success: function(response) {
		 					if(response.rt == "success") {
		 						document.getElementById("nickname").classList.add('is-valid');
		 	
		 						document.getElementById("nicknameFeedback").classList.remove('invalid-feedback');
		 						document.getElementById("nicknameFeedback").classList.add('valid-feedback');
		 						document.getElementById("nicknameFeedback").innerText = "사용 가능한 닉네임입니다.";
		 						
		 						document.getElementById("nicknameAllowNY").value = 1;
		 						
		 					} else {
		 						document.getElementById("nickname").classList.add('is-invalid');
		 						
		 						document.getElementById("nicknameFeedback").classList.remove('valid-feedback');
		 						document.getElementById("nicknameFeedback").classList.add('invalid-feedback');
		 						document.getElementById("nicknameFeedback").innerText = "이미 사용중인 닉네임입니다.";
		 						
		 						document.getElementById("nicknameAllowNY").value = 0;
		 					}
		 				}
		 			});
		 	});
	 
	 
	</script>
	
	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
</body>
</html>