<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
	function hello(){
		alert('어드민님 환영합니다.');
	}
</script>

</head>
<body onload="hello()">
<h2>관리자 페이지입니다.</h2>
<a href="${path }/j_spring_security_logout">로그아웃</a>
</body>
</html>



















