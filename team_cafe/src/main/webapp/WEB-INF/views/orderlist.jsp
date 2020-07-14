<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>발주 내역</h3>
<form method="post" action="detaillist">
<table>
	<tr>
		<th width="120">발주번호</th>
		<th width="120">발주 날짜</th>
		<th width="120">총 금액</th>
	</tr>	

<c:forEach var="b" items="${list}">

	<tr>
		<td align="center">
		<input type="hidden" name="productOrder_code" id="productOrder_code" value="${b.productOrder_code}"/>
		${b.productOrder_code}
		</td>
		<td align="center">
		<fmt:formatDate value="${b.productOrder_date}" pattern="yyyy-MM-dd"/>
		</td>
		<td align="center">${b.prodectOrder_total}</td>
		<td>
		<input type="button" value="상세내역보기" onclick="location.href='detaillist?productOrder_code=${b.productOrder_code}&pg=${pg}'"/>
		</td>
	</tr>
</c:forEach>
</table>
</form>
<table width="600">
<tr>
	<td align="center">
		<!-- 처음 이전 링크 -->
		<c:if test="${pg>block}">  <!-- 5>10 : false / 15>10 : true -->
			[<a href="orderlist?pg=1">◀◀</a>]
			[<a href="orderlist?pg=${fromPage-1}">◀</a>]		
		</c:if>
		<c:if test="${pg<=block}"> <!-- 5<=10 :true / 15<=10:false -->
			[<span style="color:gray">◀◀</span>]	
			[<span style="color:gray">◀</span>]
		</c:if>
		
		<!-- 블록 범위 찍기 -->
		<c:forEach begin="${fromPage}" end="${toPage}" var="i">
			<c:if test="${i==pg}">[${i}]</c:if>
			<c:if test="${i!=pg}">
				[<a href="orderlist?pg=${i}">${i}</a>]
			</c:if>
		</c:forEach>
		
		<!-- 다음, 이후 -->
		<c:if test="${toPage<allPage}"> <!-- 20<21 : true -->
				[<a href="orderlist?pg=${toPage+1}">▶</a>]
				[<a href="orderlist?pg=${allPage}">▶▶</a>]
		
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