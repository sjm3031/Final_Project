<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function stockorder_update(){
		if(document.stockorderlistupdate.cart_stock_quantity.value==""){
			alert("내용을 입력해주세요");
			document.stockorderlistupdate.cart_stock_quantity.focus();
		}
		else{
			document.stockorderlistupdate.submit(); //전송
		}
	}
</script>
</head>
<body>
<h3>발주 수량 수정 페이지</h3>

<form action="stockorderlistupdate.cafe" name="stockorderlistupdate" method="post">
<table>
	<tr>
		<th width="50">번호</th>
		<th width="120">품명</th>
		<th width="120">상세명</th>
		<th width="120">금액</th>
		<th width="120">수량</th>

	</tr>	


	<tr>
		<td align="center">
		<input type="hidden" name="pg" value="${pg}"/>
		<input type="hidden" name="cart_number" value="${c.cart_number}"/>
		${c.cart_number}
		</td>
		<td align="center">${c.cart_stock_productname}</td>
		<td align="center">${c.cart_stock_detailname}</td>
		<td align="center">${c.cart_stock_price}</td>
		<td align="center"><input type="text" name="cart_stock_quantity" id="cart_stock_quantity" value="${c.cart_stock_quantity}"/></td>
	</tr>
	
	<tr>
		<td>
		<input type="button" value="수정확인" onclick="stockorder_update()"/>
		</td>
	</tr>
</table>

</form>

</body>
</html>