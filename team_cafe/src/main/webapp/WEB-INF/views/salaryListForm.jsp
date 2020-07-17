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
	<h1>급여리스트</h1>
	
	<a href="salaryInsert.cafe">급여정산</a>
	
	<br>
	<br>
	<form action="salaryList.cafe" method="post">
	
	<select name="salary_year">
		<option>년도를 선택하세요</option>
		<c:forEach var="t" items="${ty }">
		<option value="${t.emptna_year}">${t.emptna_year }</option>
		</c:forEach>
	</select>
	
	<select name="salary_month">
		<option>월을 선택하세요</option>
		<c:forEach var="t" items="${tm }">
		<option value="${t.emptna_month}">${t.emptna_month }</option>
		</c:forEach>
	</select>
	
	<input type="submit" value="조회">
	</form>
	<hr><hr>
	
	<table width="1500" cellpadding="3">
		<tr>
			<th>급여코드</th>
			<th>이름</th>
			<th>직급</th>
			<th>근무 년</th>
			<th>근무 월</th>
			<th>알바시급</th>
			<th>직원월급</th>
			<th>월근무시간</th>
			<th>총급여</th>
			<th>월급 지급일</th>
			

		</tr>

		<c:forEach var="list" items="${list1}">


			<tr>
				
				<td>${list.salary_code}</td>
				<td>${list.employee_name}</td>
				<td>${list.employee_jobname}</td>
				<td>${list.salary_year}</td>
				<td>${list.salary_month}</td>
				<td>${list.salary_tpay}</td>
				<td>${list.salary_mpay}</td>
				<td>${list.salary_time}</td>
				<td>${list.salary_totalpay}</td>
				<td>${list.salary_date}</td>
				
				<td> 
				<input type="button" value="수정" onclick="location.href='salaryUpdate.cafe?salary_code=${list.salary_code}&pg=${pg}'">
				<%-- 				<input type="button" value="삭제" onclick="location.href='empDelete.cafe?employee_code=${emp.employee_code}&pg=${pg}'"> --%>
				</td> 
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
			[<a href="salaryList.cafe?pg=1">◀◀</a>]
			[<a href="salaryList.cafe?pg=${fromPage-1}">◀</a>]		
		</c:if> <c:if test="${pg<=block}">
					<!-- 5<=10 :true / 15<=10:false -->
			[<span style="color: gray">◀◀</span>]	
			[<span style="color: gray">◀</span>]
		</c:if> <!-- 블록 범위 찍기 --> <c:forEach begin="${fromPage}" end="${toPage}"
					var="i">
					<c:if test="${i==pg}">[${i}]</c:if>
					<c:if test="${i!=pg}">
				[<a href="salaryList.cafe?pg=${i}">${i}</a>]
			</c:if>
				</c:forEach> <!-- 다음, 이후 --> <c:if test="${toPage<allPage}">
					<!-- 20<21 : true -->
				[<a href="salaryList.cafe?pg=${toPage+1}">▶</a>]
				[<a href="salaryList.cafe?pg=${allPage}">▶▶</a>]
		
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