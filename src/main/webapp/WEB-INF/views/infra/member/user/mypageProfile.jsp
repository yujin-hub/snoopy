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
		
		.ab:hover{
			color: #ce63be !important;
		}
		
		.cursor{
			cursor: pointer;
		}
		
		.pic{
			border: 1px solid #C2C2C2;
			border-radius: 15px;
			height: 285px;
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
		}
		
		.font3{
			font-size: 16px;
			margin-left: 15px;
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
				<div class="row">
					<div class="col-3 pic">
						<br>
						<br>
						<center><img src="../../resources/images/pro.jpg" id="pic"></center>
						<br>
						<span class="nick"><c:out value="${pro.userID }"/></span>
						<a href="/member/mypageMod" class="ab">
							<button type="button" class="btn btn1"><i class="fa-solid fa-gear"></i></button></span>
						</a>
						<br>
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
							<div class="col-9 font3">
								<span><c:out value="${pro.name }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>회원등급</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.userGrade }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>생년월일</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.dob }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>휴대폰</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.tel }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>주소</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.zip }"/></span>
								<br>
								<span><c:out value="${pro.addr1 }"/></span>
								<br>
								<span><c:out value="${pro.addr2 }"/></span>
								<span><c:out value="${pro.addr3 }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>이메일</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.email }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>닉네임</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.nickname }"/></span>
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
								<button type="button" class="btn btn5 btn-space active">잡티</button>
								<button type="button" class="btn btn4 btn-space">미백</button>
								<button type="button" class="btn btn4 btn-space">주름</button>
								<button type="button" class="btn btn4 btn-space">각질</button>
								<button type="button" class="btn btn5 btn-space active">트러블</button>
								<button type="button" class="btn btn5 btn-space active">블랙헤드</button>
								<button type="button" class="btn btn4 btn-space">피지과다</button>
								<button type="button" class="btn btn5 btn-space active">민감성</button>
								<button type="button" class="btn btn5 btn-space active">모공</button>
								<button type="button" class="btn btn4 btn-space">탄력</button>
								<button type="button" class="btn btn4 btn-space">홍조</button>
								<button type="button" class="btn btn4 btn-space">아토피</button>
								<button type="button" class="btn btn4 btn-space">다크서클</button>
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
								<button type="button" class="btn btn5 btn-space active">스킨케어</button>
								<button type="button" class="btn btn4 btn-space">마스크팩</button>
								<button type="button" class="btn btn4 btn-space">클렌징</button>
								<button type="button" class="btn btn4 btn-space">선케어</button>
								<button type="button" class="btn btn5 btn-space active">더모 코스메틱</button>
								<button type="button" class="btn btn5 btn-space active">메이크업</button>
								<button type="button" class="btn btn5 btn-space active">네일</button>
								<button type="button" class="btn btn4 btn-space">바디케어</button>
								<button type="button" class="btn btn5 btn-space active">헤어케어</button>
								<button type="button" class="btn btn4 btn-space">향수/디퓨저</button>
								<button type="button" class="btn btn5 btn-space active">미용소품</button>
								<button type="button" class="btn btn4 btn-space">남성</button>
								<button type="button" class="btn btn4 btn-space">건강/위생용품</button>
								<button type="button" class="btn btn4 btn-space">건강식품</button>
								<button type="button" class="btn btn4 btn-space">푸드</button>
								<button type="button" class="btn btn4 btn-space">라이프/홈</button>
								<button type="button" class="btn btn4 btn-space">반려동물</button>
								<button type="button" class="btn btn4 btn-space">베이비</button>
							</div>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="../../../common/xdmin/include/footer.jsp"%>

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
		});
	 
</script>

</body>
</html>