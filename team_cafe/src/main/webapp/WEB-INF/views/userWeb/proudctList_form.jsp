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

<c:set var="custormer" value="1"/>			<!-- 고객코드 세션값받아서 수정하기 -->

<c:forEach var="c" items="${categorylist}">

<a href="order.cafe?category=${c.product_category_code}">${c.product_category_name}</a>


</c:forEach>



<form action="cart.cafe" method="post">
	
	<c:set var="i" value="0"/>
	<c:forEach var="b" items="${list}" >
	
	
		<input type="hidden" name="productCartDTOs[${i}].customer_code" value="${custormer}"/>
		<br><br>
		<input type="hidden" name="productCartDTOs[${i}].cafe_product_code" value="${b.cafe_product_code}"/>
		${b.cafe_product_code}
		<br><br>
		
		<img src="../sale/upload/${b.cafe_product_img}" style="width:150px">
		<br><br>
		
		${b.cafe_product_name}
		<br><br>
		
		${b.cafe_product_price}
		<br><br>
		
		수량 : <input type="number" name="productCartDTOs[${i}].cart_num"  value="0"/>
	
	
	<c:set var="i" value="${i + 1}"/>

		<hr>
	</c:forEach>

	<input type="submit" value="장바구니담기"/>

</form>
	



</body>
</html>