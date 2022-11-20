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
		
		.bg{
			background-color: #f17d9e;
			height: 55px;
			margin-left: 10px;
			width: 840px;
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
			font-size: 15px;
			font-weight: bold;
		}
		
		.font5{
			font-size: 17px;
		}
		
		.left{
			margin-left: 95px;
		}
		
		.user{
			font-size: 35px;
		}
		
		hr{
			border: 1px solid; 
    		display: block !important;
    		width: 840px !important;
		}
		
		.border{
			border: 1px solid gray;
			width: 840px;
			border-radius: 5px;
		}
		
		p{
			margin-left: 15px; 
		}
		
		.btn1{
			background-color: #9DCC30;
			color: white;
			border-width: 1.5px;	
			font-size: 18px;
			font-weight: bold;
		}
		
		#btn {
			text-align: center;
		}
		
		a{
			color: white;
		}
		
		a:hover {
			color: white;
		}
		
		.abc:hover{
			color: #93961F;
		}
		
	</style>
</head>
    
<body>

	<%@include file="../../../common/xdmin/include/header.jsp"%>
	
	<div class= "container" id="wid">
		<br>
		<br>
		<div class="row">
			<div class="col-2 text">
				<span>마이페이지</span>
				<br>
				<br>
				<ul class="nav flex-column">
					<!-- <li class="nav-item">
						<a class="nav-link ab" href="../member/mypageOrder">주문/배송 조회</a>
					</li> -->
					<li class="nav-item">
						<a class="nav-link ab" href="../member/mypageSecession">회원 탈퇴</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="../member/changePW">비밀번호 변경</a>
					</li>
				</ul>
			</div>
			<div class="col-10 bg">
				<div class="row">
					<div class="col-1 sort">
						<span class="user"><i class="fa-solid fa-circle-user"></i></span>
					</div>
					<div class="col-5 white">
						<span><c:out value="${de.userGrade }"/> &nbsp;&nbsp;<c:out value="${de.nickname }"/>님 반갑습니다.</span>
					</div>
					<div class="col-2 profile">
						<span class="cursor"><a href="/member/mypageProfile">나의 프로필 &nbsp;&nbsp;&nbsp; ></a></span>
					</div>
					<div class="row left">
						<div class="col-4">
							<div class="font">
								<span>CJ ONE 포인트</span>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="font2">0 p</span>
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
			<div class="col-2">
			</div>
			<div class="col-10">
				<form name="form" method="post">
				<input type="hidden" name="seq" value="<c:out value="${sessSeq }"/>">
					<br>
					<br>
					<span class="font3">회원 탈퇴</span>
					<hr>
					<br>
					<span class="font4">회원 탈퇴(이용약관 동의 철회)시 아래 내용을 확인해주세요.</span>
					<br>
					<div class="border">
						<br>
						<p>
							· 올리브영 이용약관 동의 철회 시 고객님께서 보유하셨던 쿠폰은 모두 삭제되며, 재가입 시 복원이 불가능합니다.
							<br>
							<br>
							· 올리브영 이용약관 동의 철회 시에는 올리브영 서비스만 이용할 수 없게 되며, CJ ONE 웹사이트를 포함한 다른 CJ ONE 제휴 브랜드의 웹사이트 <br>
								서비스는 이용하실 수 있습니다.
							<br>
							<br>
							· 올리브영 이용약관 동의 철회 시에도 CJ ONE 멤버십 서비스 및 타 제휴 브랜드의 이용을 위해 회원님의 개인정보 및 거래정보는 CJ ONE 회원 탈퇴 <br> 
								시까지 보존됩니다.
							<br>
							<br>
							· 올리브영 이용약관 동의를 철회한 후에라도 해당 약관에 다시 동의하시면 서비스를 이용할 수 있습니다.
							<br>
							<br>
							· 진행 중인 전자상거래 이용내역(결제/배송/교환/반품 중인 상태)이 있거나 고객상담 및 이용하신 서비스가 완료되지 않은 경우 서비스 <br>
							 철회 하실 수 없습니다.
						</p>
						<br>
					</div>
					<br>
					<br>
					<br>
					<center><span class="font5">올리브영 회원 탈퇴(이용약관 동의 철회)를 하시겠습니까?</span></center>
					<br>
					<br>
					<div id="btn">
						<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel2"><b>Olive Young</b></h5>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        정말로 탈퇴하시겠습니까? 탈퇴 시 30일 이후 재가입 하실 수 있습니다. 
	 						      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
							        <button type="button" class="btn btn-dark" id="btnSece">탈퇴 </button>
							      </div>
							    </div>
							  </div>
							</div>
						<!-- <button type="button" class="btn btn1 btn-lg">회원 탈퇴</button> -->
						<button type="button" class="btn btn1 btn-lg right btn-space" data-bs-toggle="modal" data-bs-target="#exampleModal2">회원 탈퇴</button>
					</div>
					<br>
					<br>
				</form>
			</div>
		</div>
	</div>
	
	<%@include file="../../../common/xdmin/include/footer.jsp"%>
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2405cb6e30cd78e7478b78325118dec&libraries=services"></script>
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
	 
	 var goUrlSece = "/member/memberSecession";	
	 
	 var seq = $("input:hidden[name=seq]");				/* #-> */
		
	 var form = $("form[name=form]");
	 
	 $("#btnSece").on("click", function() {
			form.attr("action", goUrlSece).submit();
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