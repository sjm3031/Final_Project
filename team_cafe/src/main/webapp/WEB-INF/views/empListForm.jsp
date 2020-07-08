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
	<h1>직원리스트</h1>
	<br>
	<br>

	<table width="1500" cellpadding="3">
		<tr>
			<th>직원코드</th>
			<th>이름</th>
			<th>주민번호</th>
			<th>핸드폰번호</th>
			<th>주소</th>
			<th>입사날짜</th>
			<th>퇴사날짜</th>
			<th>퇴사여부</th>
			<th>은행</th>
			<th>계좌번호</th>
			<th>직급</th>

		</tr>

		<c:forEach var="emp" items="${list}">


			<tr>
				<td>${emp.employee_code}</td>
				<td><a href="empRead.cafe?num=${emp.employee_code}&pg=${pg}">${emp.employee_name}</a></td>
				<td>${emp.employee_jumin}</td>
				<td>${emp.employee_phone}</td>
				<td>${emp.employee_address}</td>
				<td><fmt:formatDate value="${emp.employee_startdate}"
						pattern="yyyy-MM-dd" /></td>
				<td><fmt:formatDate value="${emp.employee_enddate}"
						pattern="yyyy-MM-dd" /></td>
				<td>${emp.employee_endyn}</td>
				<td>${emp.employee_bank}</td>
				<td>${emp.employee_bankaddress}</td>
				<td>${emp.employee_jobname}</td>
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
			[<a href="emplist.cafe?pg=1">◀◀</a>]
			[<a href="emplist.cafe?pg=${fromPage-1}">◀</a>]		
		</c:if> <c:if test="${pg<=block}">
					<!-- 5<=10 :true / 15<=10:false -->
			[<span style="color: gray">◀◀</span>]	
			[<span style="color: gray">◀</span>]
		</c:if> <!-- 블록 범위 찍기 --> <c:forEach begin="${fromPage}" end="${toPage}"
					var="i">
					<c:if test="${i==pg}">[${i}]</c:if>
					<c:if test="${i!=pg}">
				[<a href="emplist.cafe?pg=${i}">${i}</a>]
			</c:if>
				</c:forEach> <!-- 다음, 이후 --> <c:if test="${toPage<allPage}">
					<!-- 20<21 : true -->
				[<a href="emplist.cafe?pg=${toPage+1}">▶</a>]
				[<a href="emplist.cafe?pg=${allPage}">▶▶</a>]
		
		</c:if> <c:if test="${toPage>=allPage}">
					<!-- 21>=21 :true -->
				[<span style="color: gray">▶</span>]
				[<span style="color: gray">▶▶</span>]
		
		</c:if>

			</td>
			<td>
				<div style="width: 100px; text-align: right">
					<a href="empInsertForm.cafe">직원등록</a>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>