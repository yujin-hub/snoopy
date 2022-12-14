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
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     
	<style type ="text/css">
		.back-to-top-css { 
		    position: fixed;
		    bottom: 20px;
		    right: 20px;
		}
		
		.mydiv{
			background-image: url('../../resources/images/head2.jpg');
			background-size: cover;
		}
		
		.mydiv2{
			width: 1100px;
		}
		
		#font{
			font-size: 25px;
			font-weight: bold;
		}
		
		.wid{
			width: 1800px;
		}
		
		.font{
			font-size: 23px;
		}
		
		.btn-space{
		    margin-right: 5px;
		}
		
		.right{
			float: right;
		}
		
		.nav-link{
			color: #353535;;
			font-size: 16px;
			font-weight: bold;	
		}
		
		.nav-link:hover {
			color: #ce63be;
		}
		
		section {
			display: none;
			padding: 20px 0 0;
			border-top: 1px solid #9DCC30;
		}
		
		.input {
			display: none;
		} 
		
		.label1 {
			display: inline-block;
			margin: 0 0 -1px;
			padding: 15px 30px;
			font-weight: bold;
			text-align: center;
			color: #bbb;
			border: 1px solid transparent;
			font-size: 16px;
		  }
		
		input:checked + label {
			 color: #9DCC30;
			 border: 2px solid #9DCC30;
			 border-top: 2px solid #9DCC30;
			 border-bottom: 1px solid #ffffff;
		  }
		
		#tab1:checked ~ #content1,
		#tab2:checked ~ #content2 {
			display: block;
		}	
		
		.addScroll{
			overflow-y: auto;
			height: 200px;
			background-color: #E9ECEF;
			padding-top: 5px; 
			padding-left: 5px;
		}
			
		.input-file-button{
			padding: 4px 25px;
			background-color: #9DCC30;
			border-radius: 4px;
			color: white;
			cursor: pointer;
		}
	</style>
</head>
    
<body>

	<%@include file="../../../common/xdmin/include/headerDmin.jsp"%>

	<div class="container-fluid mydiv">
		<div class="container mydiv2">
			<br>
			<br>
			<span id="font">???????????? ??????</span>
			<br>
			<br>
			<br>
		</div>
	</div> 
	<br>
	<br>
	<div class="container wid">
		<div class="row">
			<div class="col-2 right">
				<span class="font">Setting</span>
				<br>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link" href="../member/memberList">?????? ??????</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="../item/itemListSet">?????? ??????</a>
					</li>
					<!-- <li class="nav-item">
						<a class="nav-link" href="#">?????? ??????</a>
					</li> -->
				</ul>
				<br>
				<br>
				<span class="font">Code</span>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link" href="codeGroupList">?????? ?????? ??????</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/code/codeList">?????? ??????</a>
					</li>
				</ul>
			</div>
			<div class="col-10">
				<form name="form" method="post" action="/codeGroup/codeGroupInst">
				<!-- <form name="form" method="post" > -->
					<input type="hidden" name="seq" value="<c:out value="${vo.seq }"/>">
					<div class="main left2">
						<input class="input" id="tab1" type="radio" name="tabs" disabled> 
						<label for="tab1" class="label1">????????????</label>
						
						<input class="input" id="tab2" type="radio" name="tabs" checked> 
						<label for="tab2" class="label1">???????????? ??????</label>

						<section id="content2">
							<div class="row">
								<div class="col-6">
									<br>
									<label for="code" class="form-label">???????????? ??????</label>
									<input type="text" class="form-control" value="<c:out value="${item.seq}"/>" placeholder="??????(????????????), ??????" id="seq">
								</div>
								<div class="col-6">
									<br>
									<label for="codeA" class="form-label">???????????? ?????? (Another)</label>
									<input type="text" class="form-control" placeholder="??????(????????????), ??????">
								</div>
								<div class="col-6">
									<br>
									<label for="codename" class="form-label">???????????? ??????(??????)</label>
									<input type="text" class="form-control" id="propertyKor" name="propertyKor" placeholder="??????, ??????" value="<c:out value="${item.propertyKor }"/>">
								</div>
								<div class="col-6">
									<br>
									<label for="codenameEng" class="form-label">???????????? ?????? (??????)</label>
									<input type="text" class="form-control" id="property" name="property" placeholder="??????(????????????), ??????" value="<c:out value="${item.property }"/>">
								</div>
								<div class="col-6">
									<br>
									<label for="useNY" class="form-label">????????????</label>
									<select class="form-select" name="use" id="use">
										<option>::???????????????::</option>
										<option value="1">Y</option>
										<option value="2">N</option>
									</select>
								</div>
								<div class="col-6">
									<br>
									<label for="order" class="form-label">??????</label>
									<input type="text" class="form-control" aria-label="order" placeholder="??????">
								</div>
								<div class="col-6">
									<br>
									<label for="desc" class="form-label">??????</label>
									<textarea class="form-control" aria-label="With textarea"></textarea>
								</div>
								<div class="col-6">
									<br>
									<label for="useNY2" class="form-label">????????????</label>
									<select class="form-select" aria-label="Default select example">
										<option selected>N</option>
										<option value="2">Y</option>
									</select>
								</div>
								<div class="col-6">
									<br>
									<label for="pre1" class="form-label">??????1 (varchar type)</label>
									<input type="text" class="form-control" aria-label="pre1" placeholder="??????(????????????), ??????">
								</div>
								<div class="col-6">
									<br>
									<label for="pre2" class="form-label">??????2 (varchar type)</label>
									<input type="text" class="form-control" aria-label="pre2" placeholder="??????(????????????), ??????">
								</div>
								<div class="col-6">
									<br>
									<label for="pre3" class="form-label">??????3 (varchar type)</label>
									<input type="text" class="form-control" aria-label="pre3" placeholder="??????(????????????), ??????">
								</div>
								<div class="col-6">
								</div>
								<div class="col-6">
									<br>
									<label for="intpre1" class="form-label">??????1 (int type)</label>
									<input type="text" class="form-control" aria-label="intpre1" placeholder="??????">
								</div>
								<div class="col-6">
									<br>
									<label for="intpre2" class="form-label">??????2 (int type)</label>
									<input type="text" class="form-control" aria-label="intpre2" placeholder="??????">
								</div>
								<div class="col-6">
									<br>
									<label for="intpre3" class="form-label">??????3 (int type)</label>
									<input type="text" class="form-control" aria-label="intpre3" placeholder="??????">
								</div>
								<div class="col-6">
								</div>
								<!-- <div class="col-6">
									<br>
									<br>
									<label for="gender12" class="form-label">??????</label>
									<input class="form-check-input" type="radio" name="rad" id="rad1" value="chooseHi">
									<label for="inlineRadio1">hi</label>
									<input class="form-check-input" type="radio" name="rad" id="rad2" value="chooseHello">
									<label for="inlineRadio2">hello</label>
								</div>
								<div class="col-6">
									<br>
									<br>
									<label for="sel" class="form-label">??????</label>
									<input class="form-check-input" type="checkbox" id="ch1" name="sel" value="??????">
				  					<label class="form-check-label" for="inlineCheckbox1">??????</label>
				  					<input class="form-check-input" type="checkbox" id="ch2" name="sel" value="oily">
				  					<label class="form-check-label" for="inlineCheckbox2">??????</label>
				  					<input class="form-check-input" type="checkbox" id="ch3" name="sel" value="multi">
				  					<label class="form-check-label" for="inlineCheckbox3">?????????</label>
								</div> -->
							</div>
							<br>
							<br>
						</div>
						<button class="btn btn-secondary" id="btnList"><i class="fa-solid fa-list-ul"></i></button>
						<button type="button" class="btn btn-space btn-success right" id="btnSave"><i class="fa-solid fa-bookmark"></i></button>		
						<!-- <button class="btn btn-space btn-danger right"><i class="fa-solid fa-trash-can"></i></button>		
						<button type="button" class="btn btn-space btn-danger right">
	   						<i class="fa-solid fa-x"></i>
						</button> -->
						
						<!-- x?????? Modal -->
						<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel2"><b>Olive Young</b></h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        ????????? ?????????????????????????
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
						        <button type="button" class="btn btn-dark" id="btnDelete">?????? </button>
						      </div>
						    </div>
						  </div>
						</div>
						
						 <!-- ????????? Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel"><b>Olive Young</b></h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        ????????? ?????????????????????????
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
						        <button type="button" class="btn btn-dark" id="btnUelete">?????? </button>
						      </div>
						    </div>
						  </div>
						</div>
						
						<button type="button" class="btn btn-danger right btn-space" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa-solid fa-x"></i></button>
						<button type="button" class="btn btn-danger right btn-space" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-trash-can"></i></button>
							
					</section>
				</form>
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
    
     <!-- <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">???????????????</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
			<div class="addScroll">
				<ul id="ulFile1" class="list-group">
				</ul>
			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">????????????</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>
    
    <input class="form-control form-control-sm" id="image1" name="image1" type="file" multiple="multiple"> -->
		
    	<br>
		<br>
		<br>
		<br>
	</div>
	
	<%@include file="../../../common/xdmin/include/footer.jsp"%>

<script type="text/javascript">
	 $(document).ready(function () {
		$(window).scroll(function () {
		   	$('#back-to-top').fadeIn();
		});
		// scroll body to 0px on click
		$('#back-to-top').click(function () {
		    $('#back-to-top').tooltip('hide');
		        scrollTop: 0
		    }, 100);
		    return false;
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
	 
	var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btnSave").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
			
	 	/* 	var pic = document.getElementById("image1").files; //??????
	 		// var pic = $("#" + pic + "")[0].files;
	 		var fileNum = pic.length;
	 		var sizetotal = 0;
	 		
	 		var ext = pic.name.split('.').pop().toLowerCase();
	 		var extArray1 = new Array();
	 		extArray1 = ["jpg","gif","png","jpeg","bmp","tif"]
	 		
	 		var extArray = eval("extArray1");
	 		
	 		
	 		// ????????? ??????
			if(extArray.indexOf(ext) == 0){
				alert("?????? ????????? ?????? ????????????.")
				return false;
			}	 		
	 		
	 		// ?????? ?????? ??????
	 		if(fileNum > 3){
	 			alert("?????? 3????????? ????????? ???????????????.")
	 			return false;
	 		}
	 	
			alert(pic);
	 		alert(pic.length);

	 		for(var i=0; i<pic.length; i++){
				alert(pic[i].name + " : " + pic[i].size);	 			
	 		}
	 			
	 		// ?????? ??????	
	 		for (var i=0; i<fileNum; i++){
	 			sizetotal += pic[i].size;
	 		}
	 		
	 		alert(sizetotal);
	 		 */
	 		return false;
			
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	}); 
	
	$("#btnList").on("click", function(){
		form.attr("action", goUrlList).submit();
	});
	
	$("#btnUelete").on("click", function() {
		form.attr("action", goUrlUele).submit();
	});
	
	$("#btnDelete").on("click", function() {
		form.attr("action", goUrlDele).submit();
	});
	
	const myModal = document.getElementById('myModal')
	const myInput = document.getElementById('myInput')

	myModal.addEventListener('shown.bs.modal', () => {
	  myInput.focus()
	})
	
	/* function save()
	 	{
			alert(document.getElementById("num").value);
			alert(document.getElementById("propertyKor").value);
			alert(document.getElementById("property").value);
			alert(document.getElementById("use").options[document.getElementById("use").selectedIndex].value);
			alert(document.querySelector("input[name='rad']:checked").value);
			
			var obj_length = document.getElementsByName("sel").length;
			for (var i=0; i<obj_length; i++) {
			    if (document.getElementsByName("sel")[i].checked == true) {
			        alert(document.getElementsByName("sel")[i].value);
			    }
			    return false;
			}
			
			if(document.getElementById("num").value == '' || document.getElementById("num").value == null){
				alert("???????????? ?????? ?????? ??????????????????");
				document.getElementById("num").value = "";
				document.getElementById("num").focus();
				return false;
			} 
								
			if(document.getElementById("propertyKor").value == '' || document.getElementById("propertyKor").value == null){
				alert("???????????? ??????(??????) ?????? ??????????????????");
				document.getElementById("propertyKor").value = "";
				document.getElementById("propertyKor").focus();
				return false;
			} 
			
			if(document.getElementById("property").value == '' || document.getElementById("property").value == null){
				alert("???????????? ??????(??????) ?????? ??????????????????");
				document.getElementById("property").value = "";
				document.getElementById("property").focus();
				return false;
			}
			
			if($("input:checkbox[name='sel']").is(":checked") == false) {
				alert("??????????????? ????????? ????????? ???????????? ????????????.");
				return false;
			}
			
	 	} */
	
	 	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//			objName ??? seq ??? jsp ????????? ?????? ????????? ???.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3
			
			var totalFileSize = 0;
			var obj = $("#" + objName +"")[0].files;	
			var fileCount = obj.length;
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; }
			
			for (var i = 0 ; i < fileCount ; i++) {
				if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }
				totalFileSize += $("#" + objName +"")[0].files[i].size;
			}
			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if(uiType == 2) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
				
				 fileReader.onload = function () {
					 $("#imgProfile").attr("src", fileReader.result);		/* #-> */
				 }		
			} else {
				return false;
			}
			return false;
		}
		
		
		addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li = li + name;
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li = li + '</li>';
			
			$("#ulFile"+seq).append(li);
		}
		
		
		delLi = function(seq, index) {
			$("#li_"+seq+"_"+index).remove();
		}
		
	 	
</script>

</body>
</html>