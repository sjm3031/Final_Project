<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>발주 상세내역</h3>
<table>
	<tr>
		<th width="120">발주번호</th>
		<th width="120">품명</th>
		<th width="120">상세명</th>
		<th width="120">금액</th>
		<th width="120">수량</th>
	</tr>	

<c:forEach var="b" items="${orderdetail}">
	<tr>
		<td align="center">${b.productOrder_code}</td>
		<td align="center">${b.stock_productname}</td>
		<td align="center">${b.stock_detailname}</td>
		<td align="center">${b.stock_price}</td>
		<td align="center">${b.productOrderList_count}</td>
	</tr>
</c:forEach>

</table>

<table width="600">
<tr>
	<td align="center">
		<!-- 처음 이전 링크 -->
		<c:if test="${pg>block}">  <!-- 5>10 : false / 15>10 : true -->
			[<a href="store/detaillist.cafe?pg=1">◀◀</a>]
			[<a href="store/detaillist.cafe?pg=${fromPage-1}">◀</a>]		
		</c:if>
		<c:if test="${pg<=block}"> <!-- 5<=10 :true / 15<=10:false -->
			[<span style="color:gray">◀◀</span>]	
			[<span style="color:gray">◀</span>]
		</c:if>
		
		<!-- 블록 범위 찍기 -->
		<c:forEach begin="${fromPage}" end="${toPage}" var="i">
			<c:if test="${i==pg}">[${i}]</c:if>
			<c:if test="${i!=pg}">
				[<a href="store/detaillist.cafe?pg=${i}">${i}</a>]
			</c:if>
		</c:forEach>
		
		<!-- 다음, 이후 -->
		<c:if test="${toPage<allPage}"> <!-- 20<21 : true -->
				[<a href="store/detaillist.cafe?pg=${toPage+1}">▶</a>]
				[<a href="store/detaillist.cafe?pg=${allPage}">▶▶</a>]
		
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