<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="include/header.jsp" %>
</head>
<body>
	<h2>Welcome!</h2>
	<h2>${msg}</h2>
	
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>생일</th>
			<th>성별</th>
		</tr>
		<tr>
			<td>${dto.customer_id }</td>
			<td>${dto.customer_name }</td>
			<td>${dto.customer_phone }</td>
			<td>${dto.customer_birth }</td>
			<td>${dto.customer_gender }</td>
		</tr>
	</table>
	
	<a href="${path}/admin/">관리자 페이지</a><br>
	<a href="${path}/cs/logout">로그아웃</a>
</body>
</html>

























