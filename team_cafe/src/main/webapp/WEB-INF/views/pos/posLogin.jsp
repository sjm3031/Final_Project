<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<h2>로그인 페이지</h2>
<form action="${path }/j_spring_security_check" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="j_username"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="j_password"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="로그인">
		</td>
	</tr>
</table>
</form>
</body>
</html>



















