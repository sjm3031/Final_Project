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

<c:forEach var="order" items="${list}">

<c:set var="present" value="${order.orderList_web_code}"/>
	
	<c:if test="${before != present}">
	<hr>

	제품 코드 : ${order.cafe_product_code}
	<br>
		<c:forEach var="p" items="${productlist}">
			<c:if test="${order.cafe_product_code == p.cafe_product_code}">
			<br>
			제품명 : ${p.cafe_product_name}
			<br>
				<a href="orderview.cafe?productcode=${p.cafe_product_code}">
					<img src="../sale/upload/${p.cafe_product_img}" style="width:150px">
				</a>
			</c:if>
		</c:forEach>	
	
	
	
		<br><br>
		
	
		수량 : ${order.orderList_web_count}
				
		
		<br><br>

		<c:if test="${order.product_add_code == 0}">
		<br>
		옵션 추가사항 없음.
	
			
		</c:if>
		
		<c:if test="${order.product_add_code != 0}">
		
			<c:forEach var="a" items="${addlist}">
				<c:if test="${order.product_add_code == a.product_add_code}">
					<br>
					추가사항 : ${a.product_add_name}
					<br>
				</c:if>
			</c:forEach>
		
	
	
	
		</c:if>
		

	</c:if>	
		
		
		
		
		
	<c:if test="${before == present}">	

		<c:if test="${order.product_add_code != 0}">
		
			<c:forEach var="a" items="${addlist}">
				<c:if test="${order.product_add_code == a.product_add_code}">
					<br>
				추가 사항 : ${a.product_add_name}
					<br>
				</c:if>
			</c:forEach>
			
		</c:if>
	</c:if>
	<br>

	

	<c:set var="before" value="${order.orderList_web_code}"/>



	</c:forEach>

	<button type="button" onclick="location.href='orderlist.cafe'">List</button> 
	<br><br>
	<button type="button" onclick="location.href='orderconfirm.cafe?orderWebCode=${orderWebCode}'">주문 접수</button> 
	<br><br>

</body>
</html>