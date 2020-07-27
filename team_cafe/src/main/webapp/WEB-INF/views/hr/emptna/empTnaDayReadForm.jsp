<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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

		</tr>

			<c:forEach var="list" items="${list }">
			<tr>
				<td>${list.emptna_code}</td>
				<td>${list.employee_name}</td>
				<td>${list.emptna_year}</td>
				<td>${list.emptna_month}</td>
				<td>${list.emptna_day}</td>
				<td>${list.emptna_starttime}</td>
				<td>${list.emptna_endtime}</td>
				<td>${list.emptna_daytotaltime}</td>
				
				<!-- 				<td> -->
				<%-- 				<input type="button" value="수정" onclick="location.href='empUpdateForm.cafe?num=${emp.employee_code}&pg=${pg}'"> --%>
				<%-- 				<input type="button" value="삭제" onclick="location.href='empDelete.cafe?employee_code=${emp.employee_code}&pg=${pg}'"> --%>
				<!-- 				</td> -->
			</tr>
			</c:forEach>
			
	</table>
	
	</table>

	<br>
	<br>
	<table width="1000" align="center">
		<tr>
			<td align="center">
				<!-- 처음 이전 링크 --> <c:if test="${pg>block}">
					<!-- 5>10 : false / 15>10 : true -->
			[<a href="dayRead.cafe?pg=1">◀◀</a>]
			[<a href="dayRead.cafe?pg=${fromPage-1}">◀</a>]		
		</c:if> <c:if test="${pg<=block}">
					<!-- 5<=10 :true / 15<=10:false -->
			[<span style="color: gray">◀◀</span>]	
			[<span style="color: gray">◀</span>]
		</c:if> <!-- 블록 범위 찍기 --> <c:forEach begin="${fromPage}" end="${toPage}"
					var="i">
					<c:if test="${i==pg}">[${i}]</c:if>
					<c:if test="${i!=pg}">
				[<a href="dayRead.cafe?pg=${i}">${i}</a>]
			</c:if>
				</c:forEach> <!-- 다음, 이후 --> <c:if test="${toPage<allPage}">
					<!-- 20<21 : true -->
				[<a href="dayRead.cafe?pg=${toPage+1}">▶</a>]
				[<a href="dayRead.cafe?pg=${allPage}">▶▶</a>]
		
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