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
		
		.text2{
			text-align: center;
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
		
		.bg{
			background-color: #f17d9e;
			height: 55px;
			margin-left: 10px;
			width: 840px;
		}
		
		.cursor{
			cursor: pointer;
		}
		
		.user{
			font-size: 35px;
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
			margin-left: 70px;
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
			font-size: 12px;
		}
		
		.font5{
			font-size: 100px;
			color: #DFDFDF;
			text-align: center;
		}
		
		.font6{
			font-size: 15px;
			text-align: center;
		}
		
		.font7{
			color: #9DCC30;
			font-weight: bold;
		}
		
		.font8{
			font-size: 10px;
		}
		
		.left{
			margin-left: 100px;
		}	
		
		.left2{
			margin-left: 28px;
		}
		
		.left3{
			margin-left: 20px;
		}
		
		.left4{
			margin-left: 23px;
		}
		
		.left5{
			margin-left: 75px;
			text-align: center;
		}
		
		.left6{
			margin-left: 116px;
			text-align: center;
		}
		
		.left7{
			margin-left: 5px;
			text-align: center;
		}
		
		.left8{
			margin-left: 5px;
			text-align: center;
		}
		
		.mydiv{
			background-color: #F9F9F9; 
			width: 840px;
		}
			
		.wid2{
			width: 13%;
			text-align: center;
		}
		
		.wid3{
			width: 7%;
			text-align: center;
		}
		
		#num{
			font-size: 45px;
			font-weight: bold;
		}
		
		#num2{
			font-size: 45px;
			color: #9DCC30;
			font-weight: bold;
		}
		
		#size{
			font-size: 23px;
		}
		
		.mid{
			margin-left: 30px;
		}
		
		hr{
			border: 1px solid; 
    		display: block !important;
    		width: 840px !important;
		}
		
		.hr2{
			border: 1px solid; 
    		display: block !important;
    		width: 400px !important;
		}
		
		#bdiv{
	   		background-color: #f7f7f7;
	   		margin-left: 2px; 
	   		line-height: 35px;
	   		color: #2b2b2b;
	   		font-size: 15px;
	   		width: 836px;
		}
		
		.top{
			margin-top: 50px;
		}
		
		.top2{
			margin-top: 60px;
		}
		
		.red{
			color: #C21E1E;
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
		
		a{
			color: white;
		}
		
		a:hover {
			color: white;
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
				<span class="cursor">마이페이지</span>
				<br>
				<br>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link ab" href="../member/mypageOrder">주문/배송 조회</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="../member/mypageSecession">회원 탈퇴</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="../member/changePW">비밀번호 변경</a>
					</li>
				</ul>
			</div>
			<br>
			<br>
				<div class="col-10 bg">
				<div class="row">
					<div class="col-1 sort">
						<span class="user"><i class="fa-solid fa-circle-user"></i></span>
					</div>
					<div class="col-5 white">
						<span><c:out value="${order.userGrade }"/> &nbsp;&nbsp;<c:out value="${order.nickname }"/>님 반갑습니다.</span>
					</div>
					<div class="col-2 profile">
						<span class="cursor font7"><a href="/member/mypageProfile">나의 프로필 &nbsp;&nbsp;&nbsp;></a></span>
					</div>
					<div class="row mid left">
						<div class="col-4">
							<div class="font">
								<span>CJ ONE 포인트</span>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="font2">200 p</span>
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
		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<div class="col-2">
			</div>
			<div class="col-10">
				<span class="font3">주문/배송 조회</span>
				&nbsp;&nbsp;
				<span class="font4">(최근&nbsp;1개월)</span>
				<br>
				<br>
				<div class="mydiv">
					<br>
					<br>
					<div class="row mid">
						<div class="col-1 wid2">
							<span id="num">0</span>
							<br>
							<span>주문접수</span>
						</div>
						<div class="col-1 wid3">
							<span id="size"><i class="fa-solid fa-angle-right"></i></span>
						</div>
						<div class="col-1 wid2">
							<span id="num">1</span>
							<br>
							<span>결제완료</span>
						</div>
						<div class="col-1 wid3">
							<span id="size"><i class="fa-solid fa-angle-right"></i></span>
						</div>
						<div class="col-1 wid2">
							<span id="num">0</span>
							<br>
							<span>상품준비중</span>
						</div>
						<div class="col-1 wid3">
							<span id="size"><i class="fa-solid fa-angle-right"></i></span>
						</div>
						<div class="col-1 wid2">
							<span id="num">0</span>
							<br>
							<span>배송중</span>
						</div>
						<div class="col-1 wid3">
							<span id="size"><i class="fa-solid fa-angle-right"></i></span>
						</div>
						<div class="col-1 wid2">
							<span id="num2">1</span>
							<br>
							<span>배송완료</span>
						</div>
					</div>
					<br>
					<br>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<div class="col-2">
			</div>
			<div class="col-10">
				<span class="font3">구매 내역</span>
				<hr>
				<div class="row" id="bdiv">
					<div class="col-2 left4">
						<span>주문일자</span>
					</div>
					<div class="col-2 left5">
						<span>상품정보</span>
					</div>
					<div class="col-1 left6">
						<span>수량</span>
					</div>
					<div class="col-2 left7">
						<span>주문금액</span>
					</div>
					<div class="col-1 left8">
						<span>상태</span>
					</div>
				</div>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-2">
			</div>
			<div class="col-10">
				<div class="row text2">
					<div class="col-1 left2 top">
						<span>2022.07.17</span>
						<br>
						<span class="font7">5486121923</span>
					</div>
					<div class="col-2 left3">
						<img src="../../resources/images/winter2.jpg">
					</div>
					<div class="col-3 left3 top">
						<span class="font8">클리오</span>
						<br>
						<span>클리오 프로아이팔레트 AD</span>
					</div>
					<div class="col-1 top2">
						<span>1개</span>
					</div>
					<div class="col-2 top2">
						<span class="red">15,400원</span>
					</div>
					<div class="col-1 top2">
						<span>결제완료</span>
					</div>
				</div>
				<hr>
			</div>
			<div class="col-2">
			</div>
			<div class="col-10">
				<div class="row text2">
					<div class="col-1 left2 top">
						<span>2022.06.29</span>
						<br>
						<span class="font7">1365795425</span>
					</div>
					<div class="col-2 left3">
						<img src="../../resources/images/mask.jpg">
					</div>
					<div class="col-3 left3 top">
						<span class="font8">리얼베리어</span>
						<br>
						<span>리얼베리어 아쿠아 수딩 크림 마스크</span>
					</div>
					<div class="col-1 top2">
						<span>10개</span>
					</div>
					<div class="col-2 top2">
						<span class="red">12,000원</span>
					</div>
					<div class="col-1 top2">
						<span>배송완료</span>
					</div>
				</div>
				<hr>
			</div>
			<div class="col-2">
			</div>
			<div class="col-10">
			<br>
				<nav aria-label="...">
					<ul class="pagination justify-content-center">
						<li class="page-item active" aria-current="page">
							<span class="page-link">1</span>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<br>
		<br>
		<br>
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