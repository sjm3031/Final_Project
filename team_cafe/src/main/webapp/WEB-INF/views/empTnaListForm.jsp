<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리스트</title>
<style type="text/css">
th {
	background: orange
}
;
</style>

</head>
<body>
	<h1>근태 조회</h1>
	<a href="empTnaDaySearch.cafe">일조회</a>
	<a href="empTnaMonthSearch.cafe">월별조회</a>
	
<!--  	<form name="emptnaForm"action="empTnaDayList.cafe" method="post">	 -->
	
<!--  	<select name="emptna_year" > -->
<!-- 			<option>선택하세요</option>  -->
<%-- 				<c:forEach var="list" items="${list}"> --%>
<%-- 						<option value="${list.emptna_year}">${list.emptna_year}</option> --%>
<%-- 				</c:forEach> --%>
<!--  	</select> &nbsp;&nbsp; -->
 	
<!--   	<select name="emptna_month"> -->
<!-- 			<option>선택하세요</option>  -->
<%-- 				<c:forEach var="list2" items="${list}"> --%>
<%-- 						<option value="${list2.emptna_month}">${list2.emptna_month}</option> --%>
<%-- 					</c:forEach> --%>
<!--  	</select> -->
<!--  	<input type="button" value="조회" onclick="empTna_select()">  -->
<!--  	</form> -->
	<br>
	<br>
	
	<table width="1500" cellpadding="3">
		<tr>
			<th>근태코드</th>
			<th>이름</th>
			<th>년</th>
			<th>월</th>
			<th>일</th>
			<th>출근시간</th>
			<th>퇴근시간</th>
			<th>일일근무시간</th>
			<th>월근무시간</th>

		</tr>

		<c:forEach var="list" items="${list}">


			<tr>
				<td>${list.emptna_code}</td>
				<td>${list.employee_name}</td>
				<td>${list.emptna_year}</td>
				<td>${list.emptna_month}</td>
				<td>${list.emptna_day}</td>
				<td>${list.emptna_starttime}</td>
				<td>${list.emptna_endtime}</td>
				<td>${list.emptna_daytotaltime}</td>
				<td>${list.emptna_monthtotaltime}</td>
				<!-- 				<td> -->
				<%-- 				<input type="button" value="수정" onclick="location.href='empUpdateForm.cafe?num=${emp.employee_code}&pg=${pg}'"> --%>
				<%-- 				<input type="button" value="삭제" onclick="location.href='empDelete.cafe?employee_code=${emp.employee_code}&pg=${pg}'"> --%>
				<!-- 				</td> -->
			</tr>
		</c:forEach>
		

	</table>

	<br>
	<br>
	<table width="1000" align="center">
		<tr>
			<td align="center">
				<!-- 처음 이전 링크 --> <c:if test="${pg>block}">
					<!-- 5>10 : false / 15>10 : true -->
			[<a href="empTnaList.cafe?pg=1">◀◀</a>]
			[<a href="empTnaList.cafe?pg=${fromPage-1}">◀</a>]		
		</c:if> <c:if test="${pg<=block}">
					<!-- 5<=10 :true / 15<=10:false -->
			[<span style="color: gray">◀◀</span>]	
			[<span style="color: gray">◀</span>]
		</c:if> <!-- 블록 범위 찍기 --> <c:forEach begin="${fromPage}" end="${toPage}"
					var="i">
					<c:if test="${i==pg}">[${i}]</c:if>
					<c:if test="${i!=pg}">
				[<a href="empTnaList.cafe?pg=${i}">${i}</a>]
			</c:if>
				</c:forEach> <!-- 다음, 이후 --> <c:if test="${toPage<allPage}">
					<!-- 20<21 : true -->
				[<a href="empTnaList.cafe?pg=${toPage+1}">▶</a>]
				[<a href="empTnaList.cafe?pg=${allPage}">▶▶</a>]
		
		</c:if> <c:if test="${toPage>=allPage}">
					<!-- 21>=21 :true -->
				[<span style="color: gray">▶</span>]
				[<span style="color: gray">▶▶</span>]
		
		</c:if>

			</td>
		</tr>
	</table>
</body>
</html>