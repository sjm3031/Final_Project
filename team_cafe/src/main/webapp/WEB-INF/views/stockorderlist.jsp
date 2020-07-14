<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>발주한 목록</h3>
<form action="orderinsert" method="post">
<table>
	<tr>
		<th width="50">번호</th>
		<th width="120">품명</th>
		<th width="120">상세명</th>
		<th width="120">금액</th>
		<th width="200">수량</th>
		<th></th>
	</tr>	

<c:forEach var="c" items="${order_list}">

	<tr>
		<td align="center">
		${c.cart_number}(${c.stock_code})
		<input type="hidden" name="cart_number" id="cart_number" value="${c.cart_number}"/>
		<input type="hidden" name="stock_code" id="stock_code" value="${c.stock_code}"/>
		</td>
		<td align="center">
		${c.cart_stock_productname}
		<input type="hidden" name="cart_stock_productname" id="cart_stock_productname" value="${c.cart_stock_productname}"/>
		</td>
		<td align="center">
		<input type="hidden" name="cart_stock_detailname" id="cart_stock_detailname" value="${c.cart_stock_detailname}"/>
		${c.cart_stock_detailname}
		</td>
		<td align="center">
		<input type="hidden" name="cart_stock_price" id="cart_stock_price" value="${c.cart_stock_price}"/>
		${c.cart_stock_price}
		</td>
		<td align="center">
		<input type="hidden" name="productOrderList_count" id="productOrderList_count" value="${c.cart_stock_quantity}"/>
		<input type="hidden" name="cart_stock_quantity" id="cart_stock_quantity" value="${c.cart_stock_quantity}"/>
		${c.cart_stock_quantity}
		</td>
		<td>
		<input type="button" value="수정" onclick="location.href='stockorderupdateform?cart_number=${c.cart_number}&pg=${pg}'"/>
		<input type="button" value="삭제" onclick="location.href='stockorderdelete?cart_number=${c.cart_number}&pg=${pg}'"/>
		</td>
	</tr>
</c:forEach>
	
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>
<%-- 		<input type="text" name="prodectOrder_total" id="prodectOrder_total" value="총 금액 : ${cart_total}" disabled="disabled"/> --%>
		총 금액 : ${cart_total}
		<input type="hidden" name="prodectOrder_total" id="prodectOrder_total" value="${cart_total}"/>
		</td>
		<td>
		<input type="submit" value="발주신청" />
		</td>
	</tr>
</table>
</form>
<table width="600">
<tr>
	<td align="center">
		<!-- 처음 이전 링크 -->
		<c:if test="${pg>block}">  <!-- 5>10 : false / 15>10 : true -->
			[<a href="stockorderlist?pg=1">◀◀</a>]
			[<a href="stockorderlist?pg=${fromPage-1}">◀</a>]		
		</c:if>
		<c:if test="${pg<=block}"> <!-- 5<=10 :true / 15<=10:false -->
			[<span style="color:gray">◀◀</span>]	
			[<span style="color:gray">◀</span>]
		</c:if>
		
		<!-- 블록 범위 찍기 -->
		<c:forEach begin="${fromPage}" end="${toPage}" var="i">
			<c:if test="${i==pg}">[${i}]</c:if>
			<c:if test="${i!=pg}">
				[<a href="stockorderlist?pg=${i}">${i}</a>]
			</c:if>
		</c:forEach>
		
		<!-- 다음, 이후 -->
		<c:if test="${toPage<allPage}"> <!-- 20<21 : true -->
				[<a href="stockorderlist?pg=${toPage+1}">▶</a>]
				[<a href="stockorderlist?pg=${allPage}">▶▶</a>]
		
		</c:if>	
		<c:if test="${toPage>=allPage}"> <!-- 21>=21 :true -->
				[<span style="color:gray">▶</span>]
				[<span style="color:gray">▶▶</span>]
		
		</c:if>			
		
	</td>
</tr>
</table>
</body>
</html>