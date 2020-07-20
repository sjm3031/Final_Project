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
<table>
	<tr>
		<th width="50">원료코드</th>
		<th width="120">품명</th>
		<th width="120">상세명</th>
		<th width="120">규격</th>
		<th width="120">금액(원)</th>
		<th width="120">회사명</th>
		<th width="120">이미지</th>

	</tr>	

<c:forEach var="b" items="${list}">

	<tr>
		<td align="center">${b.stock_code}</td>
		<td align="center">${b.stock_productname}</td>
		<td align="center">${b.stock_detailname}</td>
		<td align="center">${b.stock_standard}</td>
		<td align="center">${b.stock_price}</td>
		<td align="center">${b.account_name}</td>
		<td align="center"><img alt="제품" src="./store/upload/${b.stock_image}" height="50" width="60"></td>
		<td>
		<input type="button" value="삭제" onclick="location.href='stockdelete.cafe?stock_code=${b.stock_code}&pg=${pg}'"/>
		</td>
		<td>
		<input type="button" value="수정" onclick="location.href='stockupdateform.cafe?stock_code=${b.stock_code}&pg=${pg}'"/>
		</td>
	</tr>
</c:forEach>
	
	<tr>
		<td>
		<input type="button" value="제품등록" onclick="location.href='stockinsert.cafe'"/>
		</td>
	</tr>
</table>

<table width="600">
<tr>
	<td align="center">
		<!-- 처음 이전 링크 -->
		<c:if test="${pg>block}">  <!-- 5>10 : false / 15>10 : true -->
			[<a href="store/stocklist.cafe?pg=1">◀◀</a>]
			[<a href="store/stocklist.cafe?pg=${fromPage-1}">◀</a>]		
		</c:if>
		<c:if test="${pg<=block}"> <!-- 5<=10 :true / 15<=10:false -->
			[<span style="color:gray">◀◀</span>]	
			[<span style="color:gray">◀</span>]
		</c:if>
		
		<!-- 블록 범위 찍기 -->
		<c:forEach begin="${fromPage}" end="${toPage}" var="i">
			<c:if test="${i==pg}">[${i}]</c:if>
			<c:if test="${i!=pg}">
				[<a href="store/stocklist.cafe?pg=${i}">${i}</a>]
			</c:if>
		</c:forEach>
		
		<!-- 다음, 이후 -->
		<c:if test="${toPage<allPage}"> <!-- 20<21 : true -->
				[<a href="store/stocklist.cafe?pg=${toPage+1}">▶</a>]
				[<a href="store/stocklist.cafe?pg=${allPage}">▶▶</a>]
		
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