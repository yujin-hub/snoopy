<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>


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
				<th>#</th>
				<th>코드그룹 코드</th>
				<th>코드그룹 이름(한글)</th>
				<th>코드그룹 이름(영문)</th>
				<th>코드갯수</th>
				<th>등록일</th>
				<th>수정일</th>
				<th>사용여부</th>
				<th>삭제여부</th>
			</tr>
		</thead>
		<tbody class="table-group-divider">
			<c:choose>
				<c:when test="${fn:length(list) eq 0 }">
					<td class="text-center" colspan="10">There is no data!</td>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="list" varStatus="status">
						<tr class="cursor">
							<td onClick="event.cancelBubble = true"><input class="form-check-input" type="checkbox" name="chk"></td>
							<td><c:out value="${list.seq }"/></td>
							<td><c:out value="${list.num }"/></td>
							<td>
								<a href="javascript:goForm(<c:out value="${list.seq}"/>)"><c:out value="${list.propertyKor }"/></a>
							</td>
							<td><c:out value="${list.property }"/></td>
							<td><c:out value="${list.codeNum }"/></td>
							<td><c:out value="${list.regDate }"/></td>
							<td><c:out value="${list.modDate }"/></td>
							<td>
								<c:choose>
									<c:when test="${list.useNY eq 0 }">N</c:when>
									<c:otherwise>Y</c:otherwise>
								</c:choose>
								</td>
							<td>
								<c:choose>
									<c:when test="${list.delNY eq 0 }">N</c:when>
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
</div>
	

<script type="text/javascript">
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
	
	goForm = function(keyValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
    	seq.val(keyValue);
    	form.attr("action", goUrlForm).submit();
	}

 	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
 	}
	
</script>