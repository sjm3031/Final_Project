<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productList</title>
</head>
<body>
<c:forEach var="c" items="${categorylist}">

<a href="order.cafe?category=${c.product_category_code}">${c.product_category_name}</a>


</c:forEach>
	<c:forEach var="b" items="${list}">
	
	<br><br>
	
	${b.cafe_product_code}
	<br><br>
	
	<a href="productview.cafe?productcode=${b.cafe_product_code}">
		<img src="../sale/upload/${b.cafe_product_img}" style="width:150px">
	</a>
	<br><br>
	
	${b.cafe_product_name}
	<br><br>
	
	${b.cafe_product_price}
	<br><br>
	
	<hr>
	
	</c:forEach>


	


</body>
</html>