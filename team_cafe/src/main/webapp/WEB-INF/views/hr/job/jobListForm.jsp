<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, com.cafe.erp.hr.mapper.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
<form action="list.cafe" method="post">
	<table border="1">
		<tr>
			<th>직급코드</th><th>직급</th><th>시급</th><th>월급</th>
		</tr>
		
		<tr>
			<td></td>
			<td><input type="text" name="job_name" id="job_name"></td>
			<td><input type="text" name="job_tpay" id="job_tpay"></td>
			<td><input type="text" name="job_mpay" id="job_mpay"></td>
			<td><input type="submit" value="추가"></td>
		</tr>
		
		<c:forEach items="${list }" var="list">
			<tr>
				<td>${list.job_code }</td>
				<td>${list.job_name }</td>
				<td>${list.job_tpay }</td>
				<td>${list.job_mpay }</td>
				<td>
					<input type="button" value="수정" onclick="location.href='update.cafe?job_code=${list.job_code}'">
					<input type="button" value="삭제" onclick="location.href='delete.cafe?job_code=${list.job_code}'">
				</td>
			</tr>
		</c:forEach>
	</table>
				<input type="button" value="취소" onclick="history.back()">
</form>
</body>
</html>