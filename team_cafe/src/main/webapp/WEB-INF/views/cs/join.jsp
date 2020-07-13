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
<h2>회원가입</h2>
<form action="${path}/cs/insertCustomer" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td><input name="customer_id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="customer_pwd"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input name="customer_name"></td>
	</tr>
	
	<tr>
		<td>전화번호</td>
		<td><input name="customer_phone"></td>
	</tr>
	
	<tr>
		<td>생년월일</td>
		<td><input name="customer_birth"></td>
	</tr>
	
	<tr>
		<td>성별</td>
		<td><input name="customer_gender"></td>
	</tr>
	
	<tr>
		<td>사용권한</td>
		<td>
			<select name="authority">
				<option value="ROLE_USER">일반사용자</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">	
			<input type="submit" value="회원가입">
		</td>
	</tr>
</table>
</form>
</body>
</html>



















