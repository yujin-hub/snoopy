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
			width: 1100px;
		}
		
		.mydiv{
			background-image: url('../../resources/images/order.jpg');
			background-size: cover;
		}
		
		.mydiv2{
			width: 1100px;
		}
		
		#font{
			font-size: 25px;
			font-weight: bold;
		}
		
		#font2{
			font-size: 23px;
			font-weight: bold;
			text-align: center;
		}
		
		#font3{
			font-size: 15px;
			text-align: center;
			color: #928F8F;
		}
		
		#font4{
			font-size: 20px;
		}
		
		#font5{
			font-size: 15px;
			color: #595959;
			font-weight: bold;
			text-align: center;
		}
		
		#font6{
			font-size: 12px;
			color: #595959;
		}
		
		#font7{
			font-size: 15px;
			color: #B01C1C;
		}
		
		#font8{
			font-size: 15px;
			color: #B01C1C;
			margin-left: 30px;
		}
		
		hr{
			border: 1px solid; 
    		display: block !important;
    		color: #090909;
		}
		
		#bdiv{
	   		background-color: #f7f7f7;
	   		margin-left: 2px; 
	   		line-height: 35px;
	   		color: #3a3a3a;
	   		font-size: 17px;
	   		width: 1075px;
	   		text-align: center;
		}
		
		.text{
			margin-top: 50px;
			margin-left: 20px;
		}
		
		.text1{
			margin-top: 55px;
			margin-left: 20px;
		}
		
		.left{
			margin-left: 64px;		
		}
		
		.left2{
			margin-left: 35px;		
		}
		
		.left3{
			margin-left: 25px;		
		}
		
		.btn1{
			background-color: #9DCC30;
			color: white;
			border-width: 1.5px;	
			font-size: 18px;
			font-weight: bold;
			border-radius: 0px;
			width: 150px;
		}
		
		.btn2{
			background-color: #0F1B5C;
			color: white;
			border-width: 1.5px;	
			font-size: 18px;
			font-weight: bold;
			border-radius: 0px;
			width: 150px;
		}
		
		#btn{
			text-align: center;
		}
		
		a:hover {
			color: #4c4c4c;
		}
		
		.img {
			width: 210px;
			height: 210px;
		}
	</style>
</head>
    
<body>

	<%@include file="../../../common/xdmin/include/header.jsp"%>
	
	<form id="form" name="Doneform" method="post">	
	<input type="hidden" name="itemSeq" value="${done.itemSeq}" /> 
	<input type="hidden" name="sessSeq" value="${sessSeq}" /> 
	<input type="hidden" name="bname" value="${done.bname}" /> 
	<input type="hidden" name="name" value="${done.name}" /> 
	<input type="hidden" name="discount" value="${done.discount}" /> 
	<input type="hidden" name="price" id="price" value="${done.price}" /> 
	<input type="hidden" id="itemCount" name="itemCount" value="${done.itemCount}" /> 
	<input type="hidden" id="rtFinalPrice" name="rtFinalPrice"> 
	
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
	<div class="container" id="wid">
		<br>
		<br>
		<center><img src="../../resources/images/deli.jpg"></center>
		<div id="font2">
			<p>주문이 정상적으로 완료되었습니다.	<br><br> 구매해주셔서 감사합니다.</p>
		</div>
		<br>
		<div id="font3">
			<p>배송 현황은 마이페이지에서 확인하실 수 있습니다. <br> 빠른 시일 내에 배송해드릴게요!</p>
		</div>
		<br>
		<br>
		<br>
		<span id="font4">구매내역</span>	
		<hr>	
		<div class="row" id="bdiv">
			<div class="col-3 left">
				<span>상품정보</span>
			</div>
			<div class="col-1 left2">
				<span>수량</span>
			</div>
			<!-- <div class="col-1 left3">
				<span>배송비</span>
			</div> -->
			<div class="col-1 left2">
				<span>최종 결제금액</span>
			</div>
			<div class="col-1 left2">
				<span>주문번호</span>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-2">
				<img src="${done.path }${done.uuidName}" class="img">
			</div>
			<div class="col-2 text">
				<center><c:out value="${done.bname}" /></center>
				<span id="font5"><c:out value="${done.name}" /></span>
			</div>
			<div class="col-1 text1">
				<span id="font5"><c:out value="${done.itemCount}" /></span>
			</div>
			<div class="col-1 text1">
				<span id="font7"></span>
				<span id="font7">원</span>
			</div>
			<div class="col-1 text1">
				<span id="font5">5486121923</span>
			</div>
		</div>
		<hr>
		<br>
		<br>
		<div id="btn"> 
			<a href="../member/mypage">
				<button type="button" class="btn btn1 btn-lg">마이페이지</button>
			</a>
			<a href="../item/itemList">
				<button type="button" class="btn btn2 btn-lg">계속 쇼핑하기</button>
			</a>
		</div>
		<br>
		<br>
	</div>
	</form>
	
	<%@include file="../../../common/xdmin/include/footer.jsp"%>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2405cb6e30cd78e7478b78325118dec&libraries=services"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>

<script type="text/javascript">
	alert(":: 결제 준비중입니다! ::");
	
	var seq = $("input:hidden[name=itemSeq]"); /* #-> */
	var form = $("form[name=Doneform]");
	
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