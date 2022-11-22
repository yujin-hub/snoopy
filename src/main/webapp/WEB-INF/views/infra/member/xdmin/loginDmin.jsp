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
	
	<style type="text/css">
		h1 {
			text-align: center;
		}
		
		a:hover {
			color: #8bb011;
		}
		
		.before{
  			text-decoration: none;
  		}
	</style>
</head>
    
<body>

	<%@include file="../../../common/xdmin/include/header.jsp"%>		

	<br>
	<br>
	<div class="container" style="background-color: #fcfcfc; border-radius:10px; padding-top: 2px; padding-bottom: 50px; width: 750px;">
		<div class= "container" style="width: 400px; margin: auto;">
			<br>
			<br>
			<br>
			<br>
			<h1>LOGIN</h1>
			<br>
			<div class="row gy-1">
				<label for="id" class="form-label">ID</label>
				<div class="input-group mb-3">
		 			 <input type="text" class="form-control" placeholder=" 아이디 입력" id="userID" name="userID" value="aoslwj">
				</div>
				<br>
				<label for="id" class="form-label">Password</label>
				<div class="input-group mb-3">
		 			 <input type="password" class="form-control" placeholder=" 비밀번호 입력 (8~12자 영문자 + 숫자 + 특수문자)" id="pw" name="pw" value="1357">
				</div>
			</div>
		</div>
		<div class="form-check" style="margin-left: 155px;">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">자동 로그인</label>
		</div>
		<div class= "container" style="width: 400px; margin: auto;">
			<!-- <span style="float:right;"><a href="../member/findPW">비밀번호 찾기</a></span>
			<span style="float:right;">&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp; </span>
			<span style="float:right;"><a href="../member/findID">아이디 찾기</a></span> -->
			<br>
			<br>
			<br>
			<div class="d-grid gap-2" style="text-align: center;"> 
				 <button class="btn btn-dark btn-lg" type="button" style="font-size: 20px;" id="btnLogin">로그인</button>
			</div>
			<br>
			<br>
		</div>
		<!-- <div class= "container" style="width: 550px;">
			<hr style="border:1px solid; display: block !important; width: 100% !important;">
		</div>
		<div class= "container" style="width: 400px; margin: auto;">
			<br>
			<br>
			<div class="row gy-2">
			<div class="d-grid gap-2 btn-sm">
			  <button class="btn btn-warning" type="button"><i class="fa-solid fa-comments"></i> Kakao로 시작하기</button>
			</div>
			<div class="d-grid gap-2 btn-sm">
			  <button class="btn btn-success" type="button"><i class="fa-brands fa-neos"></i> Naver로 시작하기</button>
			</div>
			<div class="d-grid gap-2 btn-sm">
			  <button class="btn btn-danger" type="button"><i class="fa-brands fa-google"></i> Google로 시작하기</button>
			</div>
			<div class="d-grid gap-2 btn-sm">
			  <button class="btn btn-primary" type="button"><i class="fa-brands fa-facebook"></i> Facebook으로 시작하기</button>
			</div>
		</div>
			<br>
			<br>
			<br>
			<span style="float: left;">아직 회원이 아니신가요?&nbsp;&nbsp;&nbsp;</span>
			<span style="float: left; color: blue;"><a href="../member/regForm"><u>회원가입</u></a></span>
			<br>
			<br>
			<br>
		</div> -->
	</div>
	
	<%@include file="../../../common/xdmin/include/footer.jsp"%>	


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>

<script type="text/javascript">
	$("#btnLogin").on("click", function(){
		/* if(validation() == false) return false; */
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "userID" : $("#userID").val(), "pw" : $("#pw").val()}
			,success: function(response) {
				if(response.rt == "success") {
						location.href = "/member/memberList"; 
				} else if($("#userID").val() == "" || $("#pw").val() == "") {
					alert("아이디와 비밀번호를 입력해주세요.");
				} else{
					alert("아이디(로그인 전용 아이디) 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.");
				}
			}
		});
	});
	
	/* validation = function() {
		if(!checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해주세요")) return false;
		if(!checkNull($("#pw"), $.trim($("#pw").val()), "비밀번호를 입력해주세요")) return false;
	}   */

</script>

</body>
</html>