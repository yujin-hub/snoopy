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
				<span class="cursor" href="/member/mypage">???????????????</span>
				<br>
				<br>
				<ul class="nav flex-column">
					<!-- <li class="nav-item">
						<a class="nav-link ab" href="/member/mypageOrder">??????/?????? ??????</a>
					</li> -->
					<li class="nav-item">
						<a class="nav-link ab" href="/member/mypageSecession">?????? ??????</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ab" href="../member/changePW">???????????? ??????</a>
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
								<span>??????</span>
								<br>
								<span>0</span>
							</div>
							<div class="col-4">
								<span>??????</span>
								<br>
								<span>0</span>
							</div>
							<div class="col-4">
								<span>??????</span>
								<br>
								<span>0</span>
							</div>
						</div>
					</div>
					<div class="col-9 font">
						<span class="font1">?????? ?????????</span>
						<hr class="hr1">
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>??????</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.name }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>????????????</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.userGrade }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>????????????</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.dob }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>?????????</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.tel }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>??????</span>
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
								<span>?????????</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.email }"/></span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 font2">
								<span>?????????</span>
							</div>
							<div class="col-9 font3">
								<span><c:out value="${pro.nickname }"/></span>
							</div>
						</div>
						<br>
						<hr class="hr1">
						<br>
						<span class="font1">?????? ?????? ????????? & ?????? ????????????</span>
						<br>
						<span class="left">?????? ????????? ?????? ???????????? ?????? ????????? ????????? ????????? ??? ?????? ????????? ????????? ??? ?????????</span>
						<div class="row">
							<div class="col-2 left1">
								<br>
								<span>?????? ??????</span>
							</div>
							<div class="col-9">
								<button type="button" class="btn btn3 btn-space active">??????</button>
								<button type="button" class="btn btn2 btn-space">??????</button>
								<button type="button" class="btn btn2 btn-space">?????????</button>
								<button type="button" class="btn btn2 btn-space">?????????</button>
								<button type="button" class="btn btn2 btn-space">?????????</button>
								<button type="button" class="btn btn2 btn-space">????????????</button>
								<button type="button" class="btn btn2 btn-space">??????</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 left1">
								<br>
								<span>?????? ???</span>
							</div>
							<div class="col-9">
								<button type="button" class="btn btn2 btn-space">??????</button>
								<button type="button" class="btn btn2 btn-space">??????</button>
								<button type="button" class="btn btn2 btn-space">?????????</button>
								<button type="button" class="btn btn2 btn-space">????????????</button>
								<button type="button" class="btn btn3 btn-space active">????????????</button>
								<button type="button" class="btn btn2 btn-space">????????????</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 left1">
								<br>
								<span>?????? ??????</span>
								<br>
								<span class="font4">(?????? ?????? ??????)</span>
							</div>
							<div class="col-9">
								<button type="button" class="btn btn5 btn-space active">??????</button>
								<button type="button" class="btn btn4 btn-space">??????</button>
								<button type="button" class="btn btn4 btn-space">??????</button>
								<button type="button" class="btn btn4 btn-space">??????</button>
								<button type="button" class="btn btn5 btn-space active">?????????</button>
								<button type="button" class="btn btn5 btn-space active">????????????</button>
								<button type="button" class="btn btn4 btn-space">????????????</button>
								<button type="button" class="btn btn5 btn-space active">?????????</button>
								<button type="button" class="btn btn5 btn-space active">??????</button>
								<button type="button" class="btn btn4 btn-space">??????</button>
								<button type="button" class="btn btn4 btn-space">??????</button>
								<button type="button" class="btn btn4 btn-space">?????????</button>
								<button type="button" class="btn btn4 btn-space">????????????</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-2 left1">
								<br>
								<span>?????? ????????????</span>
								<br>
								<span class="font4">(?????? ?????? ??????)</span>
							</div>
							<div class="col-9">
								<button type="button" class="btn btn5 btn-space active">????????????</button>
								<button type="button" class="btn btn4 btn-space">????????????</button>
								<button type="button" class="btn btn4 btn-space">?????????</button>
								<button type="button" class="btn btn4 btn-space">?????????</button>
								<button type="button" class="btn btn5 btn-space active">?????? ????????????</button>
								<button type="button" class="btn btn5 btn-space active">????????????</button>
								<button type="button" class="btn btn5 btn-space active">??????</button>
								<button type="button" class="btn btn4 btn-space">????????????</button>
								<button type="button" class="btn btn5 btn-space active">????????????</button>
								<button type="button" class="btn btn4 btn-space">??????/?????????</button>
								<button type="button" class="btn btn5 btn-space active">????????????</button>
								<button type="button" class="btn btn4 btn-space">??????</button>
								<button type="button" class="btn btn4 btn-space">??????/????????????</button>
								<button type="button" class="btn btn4 btn-space">????????????</button>
								<button type="button" class="btn btn4 btn-space">??????</button>
								<button type="button" class="btn btn4 btn-space">?????????/???</button>
								<button type="button" class="btn btn4 btn-space">????????????</button>
								<button type="button" class="btn btn4 btn-space">?????????</button>
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
						alert("?????? ??????????????????.")
					}
				}
			});
		});
	 
</script>

</body>
</html>