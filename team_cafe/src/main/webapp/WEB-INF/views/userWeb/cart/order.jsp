<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set  var="path" value="${ pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
</head>
<body>


	
	
	<c:if test="${empty sessionScope.USERCODE }"> <!-- sessionScopre.id가 없으면 -->
	<script type="text/javascript">
	alert("로그인 해주세요~")
	document.location.href="login.htm"
	</script>

	<!-- <a href="login.htm">로그인</a><br/> -->
<%-- 	<form action="${path}/login.htm" method="post">
	
	</form>
 --%>
</c:if>

	<c:if test="${not empty sessionScope.USERCODE }"> <!-- sessionScopre.id가 있으면 -->
	<script type="text/javascript">
	 document.location.href="main.htm"
	</script>


	<a href="order.jsp">주문하기</a><br/>

</c:if>



	

</body>
</html>