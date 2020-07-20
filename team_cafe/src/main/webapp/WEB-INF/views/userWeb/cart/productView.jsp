<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function cart(){
	    var cartForm = document.cartForm;

	    var customer_code = cartForm.customer_code.value;

	    if(customer_code == ""){
	    	alert("로그인 해주세요~")
	    	document.location.href="login.cafe"
	    }else{
	    	cartForm.submit();
	    }
	}

</script>


</head>
<body align="center">

<c:if test="${sessionScope.USERCODE != null}">
		Session value : <c:out value="${sessionScope.USERCODE}" /> 
							<%-- 
								<%= session.getAttribute("USERID") %> 
								<%= request.getContextPath() %>
							--%>
							
		<br>
		<br>				
</c:if>






<c:forEach var="c" items="${categorylist}">

<a href="order.cafe?category=${c.product_category_code}">${c.product_category_name}</a>


</c:forEach>


	
<form name="cartForm" action="cart.cafe" method="post">	
	<br><br>
	
	<input type="hidden" name="customer_code" value="${sessionScope.USERCODE}"/>
	
	<input type="hidden" name="cafe_product_code" value="${vo.cafe_product_code}"/>
	${vo.cafe_product_code}
	<br><br>
	
	
		<img src="../sale/upload/${vo.cafe_product_img}" style="width:150px">
	
	<br><br>
	
	${vo.cafe_product_name}
	<br><br>
	
	${vo.cafe_product_price}
	<br><br>

	<hr>


	<c:forEach var="d" items="${dlist}">
	
	
		<input type="checkbox" name="productAdd" value="${d.product_add_code}">${d.product_add_name}  가격 : ${d.product_add_price} <br>
		
	
	</c:forEach>

		<br><br>
		
		수량 : <input type="number" name="cart_num"  value="0"/>

	<br><br>


	<input type="button" value="장바구니담기" onclick="cart()"/>

</form>



</body>
</html>