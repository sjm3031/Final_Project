<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>




</head>
<body>
<c:if test="${sessionScope.USERCODE != null}">
		Session value : <c:out value="${sessionScope.USERCODE}" /> 
							<%-- 
								<%= session.getAttribute("USERID") %> 
								<%= request.getContextPath() %>
							--%>
							
		<br>
		<br>				
</c:if>

<h2>User Main Home</h2>

<button type="button" onclick="location.href='memberwriteform.cafe'">회원가입</button>
<br>
<br>


<button type="button" onclick="location.href='login.cafe' ">로그인</button>
<br>
<br>

<button type="button" onclick="location.href='logout.cafe' ">로그아웃</button>
<br>
<br>

<a href="productlist.cafe"> order </a>
<br>
<br>

<c:if test="${sessionScope.USERCODE != null}">
<button type="button" onclick="location.href='cartlist.cafe?customer_code=${sessionScope.USERCODE}'"> 장바구니 list </button>

<button type="button" onclick="location.href='orderlist.cafe?customer_code=${sessionScope.USERCODE}'"> 주문 list </button>

</c:if>

<c:if test="${sessionScope.USERCODE == null}">
<button onclick="login()"> 장바구니 list </button>

<button onclick="login()"> 주문 list </button>

<script type="text/javascript">
	function login(){
		alert("로그인 해주세요~")
		document.location.href="login.cafe"
	}

</script>

<br>
<br>
<button type="button" onclick="location.href='../pos/main.cafe'">POS</button>
<br>
<br>


</c:if>


</body>
</html>