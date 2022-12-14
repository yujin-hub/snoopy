<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">
<head>	
	
	<%@include file="../../../common/xdmin/include/head.jsp"%>
	
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
		
		.addScroll{
			overflow-y:auto;
			background-color:#E9ECEF;
		}
		
		#img{
			width: 500px;
			height: 400px;
		}
		
    </style>
</head>
    
<body>
	<%@include file="../../../common/xdmin/include/headerReg.jsp"%>
	
	<div class= "container" id="wid2">
		<h1 style="display: inline;">회원 정보</h1> 
		<hr id="hr2">
	</div>	
	<br>
	<div class= "container" id="wid2">
		<form name="formMem" method="post" action="/member/memberInst" enctype="multipart/form-data" autocomplete="off">
		<%-- <%@include file="memberVo.jsp"%>	 --%>
			<input type="hidden" name="seq" value="<c:out value="${vo.seq }"/>">
			<h4>기본사항</h4>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>성명</span>
				</div>
				<div class="col-4">
					<input type="text" class="form-control" name="name" value="<c:out value="${item.name}"/>">
				</div>
				<div class="col-2" id="cdiv">
					<span>성별</span>
				</div>
				<div class="col-3" style="margin-top: 10px;">
					<div class="form-check form-check-inline left">
						  <input class="form-check-input" type="radio" <c:if test="${item.gender eq 21 }"> checked</c:if> name="gender" id="gender1" value="21">
						  <label class="form-check-label" for="gender1">남성</label>
					</div>
					<div class="form-check form-check-inline left">
						  <input class="form-check-input" type="radio" <c:if test="${item.gender eq 22 }"> checked</c:if> name="gender" id="gender2" value="22">
						  <label class="form-check-label" for="gender2">여성</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-2" id="cdiv">
					<span>생년월일</span>
				</div>
				<div class="col-4">
					<input type="text" class="form-control" name="dob" id="dob" value="<c:out value="${item.dob}"/>">
				</div>
				<div class="col-2" id="cdiv">
					<span>휴대폰</span>
				</div>
				<div class="col-3">
					<input type="text" class="form-control" name="tel" value="<c:out value="${item.tel}"/>">
				</div>
			</div>
			<%-- <br>
				<div class="row mt-sm-4"> 
			        <div class="col-sm-6 mt-3 mt-sm-0">
			            <label for="ifmmUploadedImage" class="form-label input-file-button">이미지첨부</label>
			 			<input class="form-control" id="winter" name="MultipartFile" type="file" multiple="multiple">
						<div id="ifmmUploadedImagePreview" class="addScroll">
							<img src="${imageUpload.path }${imageUpload.uuidName}" id="img">
						</div>
			        </div>
		  	  	</div>  --%>
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
					<input type="password" class="form-control" name="pw" placeholder="8~16자의 대/소문자, 숫자, 특수문자 조합 생성" value="<c:out value="${item.pw}"/>">
				</div>
			</div>
			<hr>	
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
								<input type="text" id="zip" name="zip" class="form-control" value="<c:out value="${item.zip}"/>" placeholder="우편번호" readonly>
								<button type="button" class="btn btn-outline-secondary" id="addrButton"><i class="fa-solid fa-magnifying-glass"></i></button>
								<button class="btn btn-outline-secondary" type="button" id="clearButton"><i class="fa-solid fa-arrow-rotate-left"></i></button>
							</div>
						</div>
						<div>
							<input type="text" id="addr1" name="addr1" class="form-control" value="<c:out value="${item.addr1}"/>" placeholder="주소" readonly>
						</div>
						<div class="col-6">
							<input type="text" id="addr2" name="addr2" class="form-control" value="<c:out value="${item.addr2}"/>" placeholder="상세주소">
						</div>
						<div class="col-6">
							<input type="text" id="addr3" name="addr3" class="form-control" value="<c:out value="${item.addr3}"/>" placeholder="참고항목" readonly>
						</div>
						<div class="col-6">
							<input type="text" id="memLat" name="memLat" class="form-control" placeholder="위도" readonly>
						</div>
						<div class="col-6">
							<input type="text" name="memLng" class="form-control" placeholder="경도" readonly>
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
					<input type="text" class="form-control" name="telMid" value="<c:out value="${item.telMid}"/>">
				</div>
				<div class="col-2">
					<input type="text" class="form-control" name="telEnd" value="<c:out value="${item.telEnd}"/>"> 
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
							<option value="">::선택::</option>
							<option value="15" <c:if test="${item.emailseq eq 15 }"> selected</c:if>>naver.com</option>
							<option value="16" <c:if test="${item.emailseq eq 16 }"> selected</c:if>>gmail.com</option>
							<option value="17" <c:if test="${item.emailseq eq 17 }"> selected</c:if>>hanmail.com</option>
							<option value="18" <c:if test="${item.emailseq eq 18 }"> selected</c:if>>nate.com</option>
							<option value="19" <c:if test="${item.emailseq eq 19 }"> selected</c:if>>daum.net</option>
							<option value="20" <c:if test="${item.emailseq eq 20 }"> selected</c:if>>kakao.com</option>
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
						<select class="form-select" name="userGrade">
							<option value="">::회원 등급::</option>
							<option value="1" <c:if test="${item.userGrade eq 'BABY OLIVE' }"> selected</c:if>>BABY OLIVE</option>
							<option value="2" <c:if test="${item.userGrade eq 'PINK OLIVE' }"> selected</c:if>>PINK OLIVE</option>
							<option value="3" <c:if test="${item.userGrade eq 'GREEN OLIVE' }"> selected</c:if>>GREEN OLIVE</option>
							<option value="4" <c:if test="${item.userGrade eq 'BLACK OLIVE' }"> selected</c:if>>BLACK OLIVE</option>
							<option value="5" <c:if test="${item.userGrade eq 'GOLD OLIVE' }"> selected</c:if>>GOLD OLIVE</option>
							<option value="6" <c:if test="${item.userGrade eq '관리자' }"> selected</c:if>>관리자</option>
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
		
	<%@include file="../../../common/xdmin/include/footerReg.jsp"%>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2405cb6e30cd78e7478b78325118dec&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
	
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
	</script>

</body>
</html>