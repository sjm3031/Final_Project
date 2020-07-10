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
<table>
	<tr>
		<th width="50">번호</th>
		<th width="120">품명</th>
		<th width="120">상세명</th>
		<th width="120">금액</th>
		<th width="120">수량</th>

	</tr>	

<c:forEach var="c" items="${order_list}">

	<tr>
		<td align="center">${c.cart_number}</td>
		<td align="center">${c.cart_stock_productname}</td>
		<td align="center">${c.cart_stock_detailname}</td>
		<td align="center">${c.cart_stock_price}</td>
		<td align="center">${c.cart_stock_quantity}</td>
		<td><input type="button" value="수정" onclick=""/></td>
		<td><input type="button" value="삭제" onclick=""/></td>
	</tr>
</c:forEach>
	
	<tr>
		<td>
		<input type="button" value="발주신청" onclick="location.href='accountinsert'"/>
		</td>
	</tr>
</table>

<table width="600">
<tr>
	<td align="center">
		<!-- 처음 이전 링크 -->
		<c:if test="${pg>block}">  <!-- 5>10 : false / 15>10 : true -->
			[<a href="accountlist?pg=1">◀◀</a>]
			[<a href="accountlist?pg=${fromPage-1}">◀</a>]		
		</c:if>
		<c:if test="${pg<=block}"> <!-- 5<=10 :true / 15<=10:false -->
			[<span style="color:gray">◀◀</span>]	
			[<span style="color:gray">◀</span>]
		</c:if>
		
		<!-- 블록 범위 찍기 -->
		<c:forEach begin="${fromPage}" end="${toPage}" var="i">
			<c:if test="${i==pg}">[${i}]</c:if>
			<c:if test="${i!=pg}">
				[<a href="accountlist?pg=${i}">${i}</a>]
			</c:if>
		</c:forEach>
		
		<!-- 다음, 이후 -->
		<c:if test="${toPage<allPage}"> <!-- 20<21 : true -->
				[<a href="accountlist?pg=${toPage+1}">▶</a>]
				[<a href="accountlist?pg=${allPage}">▶▶</a>]
		
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