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
		 			 <input type="text" class="form-control" placeholder=" 아이디 입력" id="userID" name="userID" value="cuj0405">
				</div>
				<br>
				<label for="id" class="form-label">Password</label>
				<div class="input-group mb-3">
		 			 <input type="password" class="form-control" placeholder=" 비밀번호 입력 (8~12자 영문자 + 숫자 + 특수문자)" id="pw" name="pw" value="0405">
				</div>
			</div>
		</div>
		<div class="form-check" style="margin-left: 155px;">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">자동 로그인</label>
		</div>
		<div class= "container" style="width: 400px; margin: auto;">
			<span style="float:right;"><a href="../member/findPW">비밀번호 찾기</a></span>
			<span style="float:right;">&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp; </span>
			<span style="float:right;"><a href="../member/findID">아이디 찾기</a></span>
			<br>
			<br>
			<br>
			<div class="d-grid gap-2" style="text-align: center;"> 
				 <button class="btn btn-dark btn-lg" type="button" style="font-size: 20px;" id="btnLogin">로그인</button>
			</div>
			<br>
			<br>
		</div>
		<div class= "container" style="width: 550px;">
			<hr style="border:1px solid; display: block !important; width: 100% !important;">
		</div>
		<div class= "container" style="width: 400px; margin: auto;">
			<br>
			<br>
			<div class="row gy-2">
				<div class="d-grid gap-2 btn-sm">
				  	<button class="btn btn-warning" type="button" id="kakaoLogin"><i class="fa-solid fa-comments"></i> Kakao로 시작하기</button>
				</div>
				<div class="d-grid gap-2 btn-sm">
					<div class="btn_login_wrap">
						<div id="naverIdLogin"></div>
                    </div>
				<button class="btn btn-success" type="button" id="loginNaver" onclick="loginNaver();"><i class="fa-brands fa-neos"></i> Naver로 시작하기</button>
				</div>
				<!-- <div class="d-grid gap-2 btn-sm">
				  	<button class="btn btn-danger" type="button"><i class="fa-brands fa-google"></i> Google로 시작하기</button>
				</div>
				<div class="d-grid gap-2 btn-sm">
				  	<button class="btn btn-primary" type="button"><i class="fa-brands fa-facebook"></i> Facebook으로 시작하기</button>
				</div> -->
			</div>
			<br>
			<br>
			<br>
			<span style="float: left;">아직 회원이 아니신가요?&nbsp;&nbsp;&nbsp;</span>
			<span style="float: left; color: blue;"><a href="../member/regForm"><u>회원가입</u></a></span>
			<br>
			<br>
			<br>
		</div>
	</div>
	
	<form name="form">
		<input type="hidden" name="name"/>
		<input type="hidden" name="snsID"/>
		<input type="hidden" name="tel"/>
		<input type="hidden" name="email"/>
		<input type="hidden" name="gender"/>
		<input type="hidden" name="dob"/>
		<input type="hidden" name="snsImg"/>
	</form>
	
	<%@include file="../../../common/xdmin/include/footer.jsp"%>
	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
					location.href = "/item/itemList"; 
				} else if($("#userID").val() == "" || $("#pw").val() == "") {
					alert("아이디와 비밀번호를 입력해주세요.");
				} else{
					alert("아이디(로그인 전용 아이디) 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.");
				}
			}
		});
	});
	
	
	Kakao.init('e2405cb6e30cd78e7478b78325118dec'); 
	console.log(Kakao.isInitialized());
	
	$("#kakaoLogin").on("click", function() {
		
		Kakao.Auth.login({
		      success: function (response) {
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {
		        	  
		        	  var accessToken = Kakao.Auth.getAccessToken();
		        	  Kakao.Auth.setAccessToken(accessToken);
		        	  var account = response.kakao_account;
		        	  
		        	  console.log(response)
		        	  console.log("email : " + account.email);
		        	  console.log("name : " + account.name);
		        	  console.log("nickname : " + account.profile.nickname);
		        	  console.log("picture : " + account.profile.thumbnail_image_url);
		        	  console.log("picture : " + account.gender);
		        	  console.log("picture : " + account.birthday);
		        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	        	  
	  	        	  $("input[name=snsID]").val("카카오로그인");
	  	        	  $("input[name=name]").val(account.profile.nickname);
	  	        	  $("input[name=tel]").val(account.profile.phone_number);
	  	        	  $("input[name=email]").val(account.email);
	  	        	  $("input[name=dob]").val(account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	  	        	  $("input[name=token]").val(accessToken);
  	        	  
	  	        	  if (account.gender === "male") {
	  	        		  $("input[name=gender]").val(21);
	          		  } else {
	          			  $("input[name=gender]").val(22);
	     			  } 
	  	        	  
	  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
						
	  	        	  $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaoLoginProc"
						,data: {
							"name": $("input[name=name]").val(), 
							"snsID": "카카오로그인", 
							"tel": $("input[name=tel]").val(), 
							"email": $("input[name=email]").val(), 
							"gender": $("input[name=gender]").val(),
							"dob": $("input[name=dob]").val(), 
							"snsImg": $("input[name=snsImg]").val(),
							"token": $("input[name=token]").val()
						}
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/item/itemList";
							}
						},
						error : function(jqXHR, status, error) {
							alert("알 수 없는 에러 [ " + error + " ]");
						}
					});
			          },
			          fail: function (error) {
			            console.log(error)
			          },
			        })
			      },
			      fail: function (error) {
			        console.log(error)
			      },
			    })
		});

	//네이버 로그인
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "bCx7uqXKlr6Zn4qi3Ls0",
			callbackUrl: "http://localhost:8080/member/login",
			isPopup: true 
		}
	);

   	naverLogin.init();
   	
   	loginNaver = function(){
		naverLogin.getLoginStatus(function (status) {
			
			if(!status)
				naverLogin.authorize();
           
            setLoginStatus();  
		});
    }
   	
	function setLoginStatus() {
 			
		if (naverLogin.user.gender == 'M'){
			$("input[name=gender]").val(20);
		} else {
			$("input[name=gender]").val(21);
		} 
		
		$.ajax({
			async: true
			,cache: false
			,type: "POST"
			,url: "/member/naverLoginProc"
			,data: {
				"name": naverLogin.user.name, 
				"snsID": "네이버로그인", 
				"phone": naverLogin.user.tel, 
				"email": naverLogin.user.email, 
				"gender": $("input[name=gender]").val(), 
				"dob": naverLogin.user.birthyear + "-" + naverLogin.user.birthday, 
				"snsImg": naverLogin.user.profile_image, 
				"userID": naverLogin.user.userID
			}
			,success : function(response) {
				if (response.rt == "fail") {
					alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
					return false;
				} else {
					window.location.href = "/item/itemList";
				}
			},
			error : function(jqXHR, status, error) {
				alert("알 수 없는 에러 [ " + error + " ]");
			}
		});
	}
  		
	/* validation = function() {
		if(!checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해주세요")) return false;
		if(!checkNull($("#pw"), $.trim($("#pw").val()), "비밀번호를 입력해주세요")) return false;
	}   */
	
    
</script>

</body>
</html>