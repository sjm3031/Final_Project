<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




</head>
<body>


<c:set var="before" value="0"/>

<c:forEach var="cart" items="${list}">

<c:set var="present" value="${cart.cart_code}"/>
	
	<c:if test="${before != present}">
	<hr>
	<br><br>
	
	장바구니 코드 : ${cart.cart_code}
	<br>
	
	고객 코드 : ${cart.customer_code}
	<br>
	제품 코드 : ${cart.cafe_product_code}
	<br>
		<c:forEach var="p" items="${productlist}">
			<c:if test="${cart.cafe_product_code == p.cafe_product_code}">
			<br>
			제품명 : ${p.cafe_product_name}
			<br>
				<a href="orderview.cafe?productcode=${p.cafe_product_code}">
					<img src="../sale/upload/${p.cafe_product_img}" style="width:150px">
				</a>
			</c:if>
		</c:forEach>	
	
	
	
		<br><br>
		
	
		수량 :  <input type="number"  name=""  id="aaa"value="${cart.cart_num}"/>
		
		<br><br>
		수량변경버튼 //// 삭제버튼
		
		
		<br><br>

		<c:if test="${cart.product_add_code == 0}">
		<br>
		옵션 추가사항 없음.
	
			
		</c:if>
		
		<c:if test="${cart.product_add_code != 0}">
		
			<c:forEach var="a" items="${addlist}">
				<c:if test="${cart.product_add_code == a.product_add_code}">
					<br>
					추가사항 : ${a.product_add_name}
					<br>
				</c:if>
			</c:forEach>
		
	
	
	
		</c:if>
	</c:if>	
		
		
		
		
		
	<c:if test="${before == present}">	
		<c:if test="${cart.product_add_code != 0}">
		
			<c:forEach var="a" items="${addlist}">
				<c:if test="${cart.product_add_code == a.product_add_code}">
					<br>
				추가 사항 : ${a.product_add_name}
					<br>
				</c:if>
			</c:forEach>
			
		</c:if>
	</c:if>
	

	<c:set var="before" value="${cart.cart_code}"/>



	
	</c:forEach>
<br><br><br><br>
	<button type="button" onclick="location.href='order.cafe?customer_code=${customer_code}'">주문하기</button>
	

</body>
</html>