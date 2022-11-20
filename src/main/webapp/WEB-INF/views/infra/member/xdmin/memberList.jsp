<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<jsp:useBean id="CodeServiceImpl" class="com.oliveyoungyj.modules.code.CodeServiceImpl"/>

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
		
		.wid2{
			width: 1000px;
		}
		
		.wid6{
			width: 700px;
		}
		
		section {
			display: none;
			padding: 20px 0 0;
			border-top: 1px solid #9DCC30;
		}
		
		.input {
			display: none;
		} 
		
		label {
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
		
		#tab1:checked ~ #content1 {
			display: block;
		}
		
		.mid{
  			text-align: center;
  		}
  		
  		.form-control:disabled, .form-control[readonly]{
		    background-color: #ffffff;
		    color: black;
		    font-weight: bold;
		    opacity: 1;
		}

		.btn-space{
		    margin-right: 5px;
		}
		
		.btn1{
			border-color: #C8C8C8;
		}
		
		.btn2{
			float: right;
			background-color: #FF5A79;
			color: white;
		}
		
		.box{
			border: 2px solid #D3D3D3; 
			border-radius: 10px;
			padding: 15px;
		}
		
		table, td,th{
			text-align: center;
		}
		
		table{
			font-size: 15px;
		}

		th, td {
		  	vertical-align : middle;
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
		 
		.cursor{
			cursor: pointer;
		}
		
		.font{
			font-size: 23px;
		}
		
		.nav-link{
			color: #353535;;
			font-size: 16px;
			font-weight: bold;	
		}
		
		.nav-link:hover {
			color: #ce63be;
		}
		
		a:hover{
			color: #ce63be;
		}
		
		a{
			color: black;		
		}
		
		.left{
			float: left;
			
		}
		
	</style>
</head>
    
<body>

	<%@include file="../../../common/xdmin/include/headerDmin.jsp"%>

	<div class="container-fluid mydiv">
		<div class="container mydiv2">
			<br>
			<br>
			<span id="font">회원관리</span>
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
						<a class="nav-link" href="memberList">회원 관리</a>
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
				<div class="main left2">
					<input class="input" id="tab1" type="radio" name="tabs" checked> 
					<label for="tab1">회원 목록</label>
					
					<section id="content1">
						<div class="container wid2">
							<br>
							<br>
							<div class="container box">
								<br>
								<div class="container wid6">
									<form method="post" name="formMem">
										<input type="hidden" name="seq">
										<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
										<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
										<input type="hidden" name="checkboxSeqArray" >
										
										<div class="row">
											<div class="col-2">
												<select name="shGender" class="form-select">
													<option value="" <c:if test="${empty vo.shGender}">selected</c:if>>::성별::</option>
													<option value="20" <c:if test="${vo.shGender eq 20 }">selected</c:if>>남성</option>
													<option value="21" <c:if test="${vo.shGender eq 21 }">selected</c:if>>여성</option>
												</select>
											</div>
											<div class="col-2">
												<select name="shUserDelNY" class="form-select">
													<option value="" <c:if test="${empty vo.shUserDelNY}"></c:if>>::탈퇴::</option>
													<option value="0" <c:if test="${vo.shUserDelNY eq 0 }"></c:if>>N</option>
													<option value="1" <c:if test="${vo.shUserDelNY eq 1 }"></c:if>>Y</option>
												</select>
											</div>
											<div class="col-2">
												<select name="shOptionDate" class="form-select">
													<option value="" <c:if test="${empty vo.shOptionDate}"></c:if>>::날짜::</option>
													<option value="7" class="form-control">최근접속일</option>
												</select>
											</div>
											<div class="col-3">
												<input type="text" id="shDateStart" class="form-control mid shDate" name="shDateStart" value="${vo.shDateStart}" placeholder="시작일" autocomplete="off">
											</div>
											<div class="col-3">
												<input type="text" class="form-control mid shDate" id="shDateEnd" name="shDateEnd" value="${vo.shDateEnd}" placeholder="종료일" autocomplete="off">
											</div>
										</div>
										<br>
										<div class="row">
											<div class="col-4">
												<select id="shOption" name="shOption" class="form-select wid3">
													<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>::검색 조건::</option>
													<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>회원번호</option>
													<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>회원등급</option>
													<option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>이름</option>
													<option value="4" <c:if test="${vo.shOption eq 4 }">selected</c:if>>이메일</option>
												</select>
											</div>
											<div class="col-6">
												<input type="text" class="form-control mid" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어 입력" autocomplete="off">
											</div>
											<div class="col-2">
												<button type="button" class="btn btn1 btn-space" id="btnReset" style="margin-left: 8px;"><i class="fa-solid fa-arrow-rotate-left"></i></button> 
												<button class="btn btn1 btn-space" id="btnSearch"><i class="fa-solid fa-magnifying-glass"></i></button>
											</div>
										</div>
									</form>
								</div>
								<br>
							</div>
						</div>
						<br>
						<br>
						<br>
						<div class="container">
							<div class="row">
								<div class="col-2 font2">
									<span>total : </span><c:out value="${vo.totalRows - ((vo.thisPage -1) * vo.rowNumToShow + status.index) }"/>
								</div>
								<div class="col-9">
								</div>
								<div class="col-1">
									<select class="form-select form-select-sm" aria-label="Default select example">
										<option selected>10</option>
										<option value="1">15</option>
										<option value="2">20</option>
									</select>
								</div>
							</div>
							<br>
							<table class="table table-striped table-hover">
								<thead>
							  		<tr>
							  			<th><input type="checkbox" id="chkAll" name="chkAll"></th>
										<th>회원번호</th>
										<th>회원등급</th>
										<th>이름</th>
										<th>성별</th>
										<th>연락처</th>
										<th>이메일</th>
										<th>최근접속일</th>
										<th>탈퇴여부</th>
									</tr>
								</thead>
								<tbody class="table-group-divider">
								<c:set var="CodeGenderlist" value="${CodeServiceImpl.selectListCachedCode('5')}"/>
									<c:choose>
										<c:when test="${fn:length(list) eq 0 }">
											<td class="text-center" colspan="12">There is no data!</td>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="list" varStatus="status">
												<tr class="cursor">
													<td onClick="event.cancelBubble = true"><input class="form-check-input" type="checkbox" name="chk"></td>
													<td><c:out value="${list.seq }"/></td>
													<td><c:out value="${list.userGrade }"/></td>
													<td>
														<a href="javascript:goForm(<c:out value="${list.seq}"/>)"><c:out value="${list.name }"/></a>
													</td>
													<td>
														<c:forEach items="${CodeGenderlist}" var="Genderlist" varStatus="statusGender">
															<c:if test="${list.gender eq Genderlist.seq}"><c:out value="${Genderlist.name }"/></c:if>
														</c:forEach>
													</td>
													<td><c:out value="${list.tel }"/></td>
													<td><c:out value="${list.email }"/></td>
													<td><c:out value="${list.accessDate }"/></td>
													<td>
														<c:choose>
															<c:when test="${list.userDelNY eq 0 }">N</c:when>
															<c:otherwise>Y</c:otherwise>
														</c:choose>
													</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<br>
							
							<!-- pagination s -->
							<%@include file="../../../common/xdmin/include/pagination.jsp"%>
							<!-- pagination e -->
							
							<br>
							<button type="button" class="left btn btn-success" id="btnExcel"><i class="fa-solid fa-file-excel"></i></button>
							<a class="btn btn2 btn-space" role="button"><i class="fa-solid fa-trash-can"></i></a>							
							<a href="memberForm" class="btn btn2 btn-space" role="button"><i class="fa-solid fa-plus"></i></a>
							<br>
							<br>
							<br>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div> 	
	
	<%@include file="../../../common/xdmin/include/footer.jsp"%>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	
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

	 	$(document).ready(function() {
			$("#chkAll").click(function() {
				if($("#chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});

			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;

				if(total != checked) $("#chkAll").prop("checked", false);
				else $("#chkAll").prop("checked", true); 
			});
		});
		
	 	var goUrlList = "/member/memberList";
	 	var goUrlInst = "/member/memberInst";
	 	var goUrlUpdt = "/member/memberUpdt";
	 	var goUrlUele = "/member/memberUele";
	 	var goUrlDele = "/member/memberDele";
	 	var goUrlForm = "/member/memberForm";
	 	var excelUri = "/member/excelDownload";

		var form = $("form[name=formMem]");

		var seq = $("input:hidden[name=seq]");

		$('#btnForm').on("click", function() {
			goForm(0);                
		});
		 
		 $("#btnSearch").on("click", function(){
			form.attr("action", goUrlList).submit();	 
		 });
		 
		 
		 $("#btnReset").on("click", function(){
			$(location).attr("href", goUrlList);	 
		 });
		 
		 
		$("#btnExcel").click(function() {
			form.attr("action", excelUri).submit();
		});
			
		goForm = function(keyValue) {
		    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
	    	form.attr("action", goUrlForm).submit();
		}

	 	goList = function(thisPage){
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
	 
		$(document).ready(function(){
			 $("input.shDate").datepicker();
		}); 

		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		    showMonthAfterYear: true,
		    yearSuffix: '년'
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