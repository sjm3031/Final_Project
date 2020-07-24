<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set  var="path" value="${ pageContext.request.contextPath}" />

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 화면</title>
</head>
<body>

<button type="button" onclick="location.href='home.cafe' ">main</button>
<br>
<br>

<c:if test="${sessionScope.USERCODE != null}">
		Session value : <c:out value="${sessionScope.USERCODE}" /> 
							<%-- 
								<%= session.getAttribute("USERID") %> 
								<%= request.getContextPath() %>
							--%>
							
		<br>
		<br>				
</c:if>


	<form action="loginCheck.cafe" method="POST">
		<table border="1">
			<tr>
				<td>아이디:</td>
				<td>
					<input type="text" name="customer_phone" size="20">
				</td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td>
					<input type="password" name="customer_pwd" size="20">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">
					<input type="reset"  value="취소">
					<input type="button" value="주문하기" onclick="javascirpt:location.href='order.cafe';">


				</td>
			</tr>
		</table>
	</form>
</body>
</html>