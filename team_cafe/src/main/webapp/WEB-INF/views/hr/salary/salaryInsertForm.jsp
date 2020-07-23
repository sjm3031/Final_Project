<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>급여 등록</h1>
	<form action="insert.cafe" method="post">
	이름 : <select name="employee_name">
		<option>이름을 선택하세요</option>
		
		<c:forEach var="t" items="${list }">
			<option value="${t.employee_name }">${t.employee_name }</option>
		</c:forEach>
		</select>
	<br>
	<br>
	근무년도 : <select name="salary_year">
		<option>년도를 선택하세요</option>
		
		<c:forEach var="t" items="${list2 }">
			<option value="${t.emptna_year }">${t.emptna_year }</option>
		</c:forEach>
		</select><br><br>
	근무월 : <select name="salary_month">
		<option>월을 선택하세요</option>
		
		<c:forEach var="t" items="${list3 }">
			<option value="${t.emptna_month }">${t.emptna_month }</option>
		</c:forEach>
		</select><br><br>
	급여일 : <input type="text" name="salary_date" value="10" readonly="readonly"><br><br>
	
	<input type="submit" value="등록">
	</form>
	
</body>
</html>