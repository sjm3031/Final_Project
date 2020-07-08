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
<h3>발주</h3>
<form action="">
<table >
	<tr>
		<th width="100"></th>
		<th width="50">품명</th>
		<th width="100">상세명</th>
		<th width="50">규격</th>
		<th width="100">금액</th>
		<th width="100">이미지</th>
		<th width="80">수량</th>

	</tr>	

<c:forEach var="b" items="${list}">

	<tr>
		<td><input type="hidden" name="stock_code" value="${b.stock_code}"></td>
		<td>${b.stock_productname}</td>
		<td>${b.stock_detailname}</td>
		<td>${b.stock_standard}</td>
		<td align="right">${b.stock_price}</td>
<%-- 		<td align="right"><img alt="제품" src="./resources/img/${b.stock_image}" height="50" width="60"></td> --%>
		<td align="center"><img alt="제품" src="./resources/img/${b.stock_image}" height="50" width="60"></td>
		<td>
		<input type="text" value="0" size="5"/>
		</td>
		<td>
		<input type="button" value="품목담기"/>
		</td>
	</tr>
</c:forEach>
	
	<tr>
		<td>
		<input type="button" value="발주확인" />
		</td>
	</tr>
</table>

<table width="600">
<tr>
	<td align="center">
		<!-- 처음 이전 링크 -->
		<c:if test="${pg>block}">  <!-- 5>10 : false / 15>10 : true -->
			[<a href="stocklist?pg=1">◀◀</a>]
			[<a href="stocklist?pg=${fromPage-1}">◀</a>]		
		</c:if>
		<c:if test="${pg<=block}"> <!-- 5<=10 :true / 15<=10:false -->
			[<span style="color:gray">◀◀</span>]	
			[<span style="color:gray">◀</span>]
		</c:if>
		
		<!-- 블록 범위 찍기 -->
		<c:forEach begin="${fromPage}" end="${toPage}" var="i">
			<c:if test="${i==pg}">[${i}]</c:if>
			<c:if test="${i!=pg}">
				[<a href="stocklist?pg=${i}">${i}</a>]
			</c:if>
		</c:forEach>
		
		<!-- 다음, 이후 -->
		<c:if test="${toPage<allPage}"> <!-- 20<21 : true -->
				[<a href="stocklist?pg=${toPage+1}">▶</a>]
				[<a href="stocklist?pg=${allPage}">▶▶</a>]
		
		</c:if>	
		<c:if test="${toPage>=allPage}"> <!-- 21>=21 :true -->
				[<span style="color:gray">▶</span>]
				[<span style="color:gray">▶▶</span>]
		
		</c:if>			
		
	</td>
</tr>
</table>
</form>
</body>
</html>