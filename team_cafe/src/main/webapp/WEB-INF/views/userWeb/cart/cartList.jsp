<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function del(cart_code, customer_code) {
		var chk = confirm("정말 삭제하시겠습니까?");
		alert(customer_code);
	/* 	var code = document.getElememtById('customers_code').value;
		alert(code); */
		
		if (chk) {
		
			location.href='delete.cafe?cart_code='+cart_code+'&customer_code='+customer_code; 
		}
	}	



 	function Modify(cart_code, customer_code) {
	 
	 	var Num = cart_code;
	 	
	 	 var Num1 = document.getElementById('cartNum').value; 
	 	 alert(Num1); 
	
		/* var count = update.cart_code.value; */
 		

 		location.href='update.cafe?cart_code='+cart_code+'&cart_num='+Num1+'&customer_code='+customer_code;

	} 

	
</script>


</head>
<body>


<c:set var="before" value="0"/>

<c:forEach var="cart" items="${list}">

<c:set var="present" value="${cart.cart_code}"/>
	
	<c:if test="${before != present}">
	<hr>
	<br><br>
	
	<input type="hidden" name="customer_code" id="customers_code" value="${cart.customer_code}"/>
	<input type="hidden" name="cartCode" value="${cart.cart_code}">
	
	
	<br>
	
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
		
			수량 : <input type ="number" id="cartNum" name="cartNum" value="${cart.cart_num}"/>
		
		<%-- ${cart.cart_num} --%>
		<%-- <input type="button" value="수정" onclick="location.href='update.cafe?cart_code=${cart.cart_code} & cart_num='"> --%>
	 <%--   <input type="button" value="수정" onclick="modify(${cart.cart_code})">  --%>
		
		<input type="button" value="수정" onclick="Modify(${cart.cart_code},${cart.customer_code})">
	    <input type="button" value="삭제" onclick="del(${cart.cart_code},${cart.customer_code})"> 
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