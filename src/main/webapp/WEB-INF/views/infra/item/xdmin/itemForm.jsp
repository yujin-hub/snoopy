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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	    
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
			overflow-y:auto;
			background-color:#E9ECEF;
		}
		
		#img {
			width: 100px;
			height: 100px;
		}
	</style>
</head>
    
<body>

	<%@include file="../../../common/xdmin/include/header.jsp"%>

	<div class="container-fluid mydiv">
		<div class="container mydiv2">
			<br>
			<br>
			<span id="font">코드 관리</span>
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
						<a class="nav-link" href="/member/memberList">회원 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/item/itemListSet">상품 관리</a>
					</li>
					<!-- <li class="nav-item">
						<a class="nav-link" href="#">주문 관리</a>
					</li> -->
				</ul>
				<br>
				<br>
				<span class="font">Code</span>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link" href="/codeGroup/codeGroupList">코드 그룹 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/code/codeList">코드 관리</a>
					</li>
				</ul>
			</div>
			<div class="col-10">
				<form method="post" name="form" action="/item/itemInst" enctype="multipart/form-data" autocomplete="off">
					<input type="hidden" name="seq" value="<c:out value="${vo.itemSeq}"/>"/>
						<div class="main left2">
							<input class="input" id="tab1" type="radio" name="tabs" disabled> 
							<label for="tab1" class="label1">상품</label>
							
							<input class="input" id="tab2" type="radio" name="tabs" checked> 
							<label for="tab2" class="label1">상품 정보 확인</label>
							
							<section id="content2">
								<div class="row">
									<div class="col-6">
										<br>
										<label for="itemImg" class="form-label">상품 이미지</label>
										<input class="form-control" id="winter" name="MultipartFile" type="file" multiple="multiple" accept=".jpg,.png,.jpeg">
										<div id="ifmmUploadedImagePreview" class="addScroll">
											<c:forEach items="${imageUpload}" var="imageUpload" varStatus="status">
												<img src="${imageUpload.path }${imageUpload.uuidName}" id="img">
											</c:forEach>											
										</div>
									</div>
									<div class="col-6">
										<br>
										<label for="brand_list_seq" class="form-label">브랜드</label>
										<select class="form-select" name="brand_list_seq">
											<option value="" hidden selected>::브랜드명::</option>
											<c:forEach items="${add}" var="add" varStatus="status">
												<option value="<c:out value="${add.itemSeq}"/>" <c:if test="${add.itemSeq eq item.brand_list_seq }"> selected</c:if>><c:out value="${add.bname }"/></option>
											</c:forEach>
										</select>
									</div>
									<div class="col-6">
										<br>
										<label for="name" class="form-label">상품명</label>
										<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>">
									</div>
									<div class="col-6">
										<br>
										<label for="price" class="form-label">가격</label>
										<input type="text" class="form-control" id="price" name="price" value="<c:out value="${item.price }"/>">
									</div>
									<div class="col-6">
										<br>
										<label for="salePrice" class="form-label">할인가</label>
										<input type="text" class="form-control" id="discount" name="discount" value="<c:out value="${item.discount }"/>%">
									</div>
									<div class="col-6">
										<br>
										<label for="info_item" class="form-label">상품 설명</label>
										<input class="form-control" id="info_item" name="info_item" value="<c:out value="${item.info_item}"/>">
									</div>
									<div class="col-6">
										<br>
										<label for="useNY2" class="form-label">사용여부</label>
										<select class="form-select" aria-label="Default select example">
											<option selected>Y</option>
											<option value="2">N</option>
										</select>
									</div>
									<div class="col-6">
										<br>
										<label for="useNY2" class="form-label">삭제여부</label>
										<select class="form-select">
											<option selected>N</option>
											<option value="2">Y</option>
										</select>
									</div>
								</div>
								<br>
								<br>
								
								<!-- x버튼 Modal -->
								<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel2"><b>Olive Young</b></h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								        정말로 삭제하시겠습니까?
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								        <button type="button" class="btn btn-dark" id="btnDelete">삭제 </button>
								      </div>
								    </div>
								  </div>
								</div>
								
								 <!-- 휴지통 Modal -->
								<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel"><b>Olive Young</b></h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								        정말로 삭제하시겠습니까?
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								        <button type="button" class="btn btn-dark" id="btnUelete">삭제 </button>
								      </div>
								    </div>
								  </div>
								</div>
								<button type="button" class="btn btn-space btn-success right" id="btnSave"><i class="fa-solid fa-bookmark"></i></button>	
								<button type="button" class="btn btn-danger btn-space right" data-bs-toggle="modal" data-bs-target="#exampleModal2" id="btnDelete"><i class="fa-solid fa-x"></i></button>
								<button type="button" class="btn btn-danger btn-space right" data-bs-toggle="modal" data-bs-target="#exampleModal" id="btnUelete"><i class="fa-solid fa-trash-can"></i></button>
								<button type="button" class="btn btn-secondary" id="btnList"><i class="fa-solid fa-list-ul"></i></button>
								<!-- <button class="btn btn-space btn-danger right"><i class="fa-solid fa-trash-can"></i></button>		
								<button type="button" class="btn btn-space btn-danger right">
			   						<i class="fa-solid fa-x"></i>
								</button> -->
							</section>
						</div>
					</form>
				</form>
				</div>
			</div>
		</div>
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
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
 
 	var goUrlList = "/item/itemListSet"; 			
	var goUrlInst = "/item/itemInst"; 			
	var goUrlUpdt = "/item/itemUpdt";				
	var goUrlUele = "/item/itemUele";			
	var goUrlDele = "/item/itemDele";				
	
	var seq = $("input:hidden[name=itemSeq]");			
	
	var form = $("form[name=form]");
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
	
	$("#btnUelete").on("click", function() {
		form.attr("action", goUrlUele).submit();
	});
	
	$("#btnDelete").on("click", function() {
		form.attr("action", goUrlDele).submit();
	});
</script>

</body>
</html>