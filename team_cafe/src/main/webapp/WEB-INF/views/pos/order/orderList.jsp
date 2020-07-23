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
<c:if test="${sessionScope.USERCODE != null}">
		Session value : <c:out value="${sessionScope.USERCODE}" /> 
							<%-- 
								<%= session.getAttribute("USERID") %> 
								<%= request.getContextPath() %>
							--%>
							
		<br>
		<br>				
</c:if>

<br>

<table width="600" cellpadding="3">
	<tr>
		<th width="50">주문번호</th>
		<th width="50">총 주문 상품 수량</th>
		<th width="50">총 금액</th>
		<th width="50">날짜</th>
		<th width="50">접수상태</th>
		<th width="50"></th>
	</tr>	

<c:forEach var="o" items="${orderlist}">


	<tr>
		<td><a href="orderlistview.cafe?orderWebCode=${o.order_web_code}"> 
		${o.order_web_code}
		</a>
		</td>
		<td>${o.order_web_count}</td>
		<td>${o.order_web_total}</td>
		<td>${o.order_web_date}</td>
		<td>${o.order_web_check}</td>
		<td></td>
		
	</tr>
</c:forEach>

</table>



	


</body>
</html>