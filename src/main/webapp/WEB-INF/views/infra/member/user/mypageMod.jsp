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
		
		.ab:hover, .done:hover{
			color: #ce63be !important;
		}
		
		.cursor{
			cursor: pointer;
		}
		
		.pic{
			border: 1px solid #C2C2C2;
			border-radius: 15px;
			height: 290px;
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
			margin-top: 10px;
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
		
		.form-check{
			padding-left: 0em;		
			margin-top: 10px;
		}
		.wid{
			width: 470px;
		}
		
		.wid2{
			width: 490px;
		}
		
		.wid3{
			width: 100px;
		}
		
		.btn{
			--bs-btn-border-color: #e8e8e8;
		}
		
		.btn6{
			--bs-btn-border-color: black;
		}
		
		.btn-check:checked+.btn{
			color: #9DCC30;
			border-color: #9DCC30;
		}
		
	</style>
</head>
<body> 
	
	<%@include file="../../../common/xdmin/include/header.jsp"%>

	<div class="container" id="wid">
		<br>
		<br>
		<div class="row">
			<div class="col-2 text">
				<span class="cursor" href="/member/mypage">마이페이지</span>
				<br>
				<br>
				<ul class="nav flex-column">
					<!-- <li class="nav-item">
						<a class="nav-link ab" href="/member/mypageOrder">주문/배송 조회</a>
					</li> -->
					<li class="nav-item">
						<a class="nav-link ab" href="/member/mypageSecession">회원 탈퇴</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="../member/changePW">비밀번호 변경</a>
					</li>
				</ul>
			</div>
			<div class="col-10">
				<form name="formMem" method="post" autocomplete="off">
				<%-- <%@include file="memberVo.jsp"%> --%>
				<input type="hidden" name="seq" value="<c:out value="${pro.seq }"/>">
					<div class="row">
						<div class="col-3 pic">
							<br>
							<br>
							<center>
								<div class="input-group mb-3">
									<input type="file" class="form-control" multiple>
								</div>
							</center>
							<input type="text" class="form-control mid" value="<c:out value="${pro.userID }"/>" readonly>
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
								<div class="col-9 wid">
									<input type="text" class="form-control" name="name" id="name" value="<c:out value="${pro.name }"/>">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-2 font2">
									<span>생년월일</span>
								</div>
								<div class="col-9 wid">
									<input type="text" class="form-control" name="dob" id="dob" value="<c:out value="${pro.dob}"/>">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-2 font2">
									<span>휴대폰</span>
								</div>
								<div class="col-9 wid">
									<input type="text" class="form-control" name="tel" id="tel" value="<c:out value="${pro.tel }"/>">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-2 font2">
									<span>주소</span>
								</div>
								<div class="col-9">
									<div class="row">
										<div class="col-5">
											<div class="input-group">
												<input type="text" id="zip" name="zip" class="form-control" value="<c:out value="${pro.zip}"/>" placeholder="우편번호" readonly>
												<button type="button" class="btn btn-outline-secondary" id="addrButton"><i class="fa-solid fa-magnifying-glass"></i></button>
												<button class="btn btn-outline-secondary" type="button" id="clearButton"><i class="fa-solid fa-arrow-rotate-left"></i></button>
											</div>
										</div>
										<div>
											<input type="text" id="addr1" name="addr1" class="form-control" value="<c:out value="${pro.addr1}"/>" placeholder="주소" readonly>
										</div>
										<div class="col-6">
											<input type="text" id="addr2" name="addr2" class="form-control" value="<c:out value="${pro.addr2}"/>" placeholder="상세주소">
										</div>
										<div class="col-6">
											<input type="text" id="addr3" name="addr3" class="form-control" value="<c:out value="${pro.addr3}"/>" placeholder="참고항목" readonly>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-2 font2">
									<span>이메일</span>
								</div>
								<div class="col-9">
									<div class="input-group mb-3">
										<div class="input-group">
											<input type="text" class="form-control" value="<c:out value="${pro.emailID}"/>" name="emailID" id="emailID">
											<span class="input-group-text">@</span>
											<select class="form-select" name="emailseq">
												<option value="">::선택::</option>
												<option value="15" <c:if test="${pro.emailseq eq 15 }"> selected</c:if>>naver.com</option>
												<option value="16" <c:if test="${pro.emailseq eq 16 }"> selected</c:if>>gmail.com</option>
												<option value="17" <c:if test="${pro.emailseq eq 17 }"> selected</c:if>>hanmail.com</option>
												<option value="18" <c:if test="${pro.emailseq eq 18 }"> selected</c:if>>nate.com</option>
												<option value="19" <c:if test="${pro.emailseq eq 19 }"> selected</c:if>>daum.net</option>
												<option value="20" <c:if test="${pro.emailseq eq 20 }"> selected</c:if>>kakao.com</option>
											</select> 
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-2 font2">
									<span>닉네임</span>
								</div>
								<div class="col-9">	
									<div class="row">
										<div class="col-9">
											<input type="hidden" id="nicknameAllowNY" name="nicknameAllowNY" value="0">
											<input type="text" class="form-control" id="nickname" name="nickname" value="<c:out value="${pro.nickname}"/>">
											<div class="invalid-feedback" id="nicknameFeedback"></div>
										</div>
									</div>
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
									<input type="checkbox" class="btn-check" id="interest14" name="problemSkin" value="14" checked>
									<label class="btn btn5 btn-space" for="interest14">잡티</label>
									<input type="checkbox" class="btn-check" id="interest15" name="problemSkin" value="15">
									<label class="btn btn4 btn-space" for="interest15">미백</label>
									<input type="checkbox" class="btn-check" id="interest16" name="problemSkin" value="16">
									<label class="btn btn4 btn-space" for="interest16">주름</label>
									<input type="checkbox" class="btn-check" id="interest17" name="problemSkin" value="17">
									<label class="btn btn4 btn-space" for="interest17">각질</label>
									<input type="checkbox" class="btn-check" id="interest18" name="problemSkin" value="18" checked>
									<label class="btn btn5 btn-space" for="interest18">트러블</label>
									<input type="checkbox" class="btn-check" id="interest19" name="problemSkin" value="19" checked>
									<label class="btn btn5 btn-space" for="interest19">블랙헤드</label>
									<input type="checkbox" class="btn-check" id="interest20" name="problemSkin" value="20">
									<label class="btn btn4 btn-space" for="interest20">피지과다</label>
									<input type="checkbox" class="btn-check" id="interest21" name="problemSkin" value="21" checked>
									<label class="btn btn5 btn-space" for="interest21">민감성</label>
									<input type="checkbox" class="btn-check" id="interest22" name="problemSkin" value="22" checked>
									<label class="btn btn5 btn-space" for="interest22">모공</label>
									<input type="checkbox" class="btn-check" id="interest23" name="problemSkin" value="23">
									<label class="btn btn4 btn-space" for="interest23">탄력</label>
									<input type="checkbox" class="btn-check" id="interest24" name="problemSkin" value="24">
									<label class="btn btn4 btn-space" for="interest24">홍조</label>
									<input type="checkbox" class="btn-check" id="interest25" name="problemSkin" value="25">
									<label class="btn btn4 btn-space" for="interest25">아토피</label>
									<input type="checkbox" class="btn-check" id="interest26" name="problemSkin" value="26">
									<label class="btn btn4 btn-space" for="interest26">다크서클</label>
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
									<input type="checkbox" class="btn-check" id="interest27" name="interestSkin" value="27" checked>
									<label class="btn btn5 btn-space" for="interest27">스킨케어</label>
									<input type="checkbox" class="btn-check" id="interest28" name="interestSkin" value="28">
									<label class="btn btn4 btn-space" for="interest28">마스크팩</label>
									<input type="checkbox" class="btn-check" id="interest29" name="interestSkin" value="29">
									<label class="btn btn4 btn-space" for="interest29">클렌징</label>
									<input type="checkbox" class="btn-check" id="interest30" name="interestSkin" value="30">
									<label class="btn btn4 btn-space" for="interest30">선케어</label>
									<input type="checkbox" class="btn-check" id="interest31" name="interestSkin" value="31" checked>
									<label class="btn btn5 btn-space" for="interest31">더모 코스메틱</label>
									<input type="checkbox" class="btn-check" id="interest32" name="interestSkin" value="32" checked>
									<label class="btn btn5 btn-space" for="interest32">메이크업</label>
									<input type="checkbox" class="btn-check" id="interest33" name="interestSkin" value="33" checked>
									<label class="btn btn5 btn-space" for="interest33">네일</label>
									<input type="checkbox" class="btn-check" id="interest34" name="interestSkin" value="34">
									<label class="btn btn4 btn-space" for="interest34">바디케어</label>
									<input type="checkbox" class="btn-check" id="interest35" name="interestSkin" value="35" checked>
									<label class="btn btn5 btn-space" for="interest35">헤어케어</label>
									<input type="checkbox" class="btn-check" id="interest36" name="interestSkin" value="36">
									<label class="btn btn4 btn-space" for="interest36">향수/디퓨저</label>
									<input type="checkbox" class="btn-check" id="interest37" name="interestSkin" value="37" checked>
									<label class="btn btn5 btn-space" for="interest37">미용소품</label>
									<input type="checkbox" class="btn-check" id="interest38" name="interestSkin" value="38">
									<label class="btn btn4 btn-space" for="interest38">남성</label>
									<input type="checkbox" class="btn-check" id="interest39" name="interestSkin" value="39">
									<label class="btn btn4 btn-space" for="interest39">건강/위생용품</label>
									<input type="checkbox" class="btn-check" id="interest40" name="interestSkin" value="40">
									<label class="btn btn4 btn-space" for="interest40">건강식품</label>
									<input type="checkbox" class="btn-check" id="interest41" name="interestSkin" value="41">
									<label class="btn btn4 btn-space" for="interest41">푸드</label>
									<input type="checkbox" class="btn-check" id="interest42" name="interestSkin" value="42">
									<label class="btn btn4 btn-space" for="interest42">라이프/홈</label>
									<input type="checkbox" class="btn-check" id="interest43" name="interestSkin" value="43">
									<label class="btn btn4 btn-space" for="interest43">반려동물</label>
									<input type="checkbox" class="btn-check" id="interest44" name="interestSkin" value="44">
									<label class="btn btn4 btn-space" for="interest44">베이비</label>
								</div>
							</div>
							<br>
							<hr class="hr1">
							<br>
							<span style="float: right; font-size: 15px;" class="cursor done" type="button" id="btnSave"><i class="fa-solid fa-check-double"> 수정 완료</i></span>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%@include file="../../../common/xdmin/include/footer.jsp"%>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2405cb6e30cd78e7478b78325118dec&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>

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
		
	$("#addrButton").on("click", function(){
		openZipSearch();
	});
		
	 $("#clearButton").on("click", function(){
		$("#zip").val('');
		$("#addr1").val('');
		$("#arrd2").val('');
		$("#addr3").val('');
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
		              
					}
		    
		    }).open();
		}
		
	
	
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
	 
	
	var goUrlUpdt = "/member/infoUpdt";
	 
	var seq = $("input:hidden[name=seq]");				/* #-> */
		
	var form = $("form[name=formMem]");
	var formVo = $("form[name=formVo]");
	
	$("#btnSave").on("click", function(){
   		form.attr("action", goUrlUpdt).submit();
	}); 
	
</script>

</body>
</html>