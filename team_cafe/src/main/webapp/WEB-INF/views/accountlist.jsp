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
<h3>거래처 목록</h3>
<table>
	<tr>
		<th width="50">사업자 번호</th>
		<th width="120">회사명</th>
		<th width="120">사업자명</th>
		<th width="120">주소</th>
		<th width="120">email</th>

	</tr>	

<c:forEach var="c" items="${account_list}">

	<tr>
		<td align="center">${c.account_number}</td>
		<td align="center">${c.account_name}</td>
		<td align="center">${c.account_ceoname}</td>
		<td align="center">${c.account_address}</td>
		<td align="center">${c.account_email}</td>
		<td>
		<input type="button" value="삭제" onclick="location.href='accountdelete?account_number=${c.account_number}&pg=${pg}'"/>
		</td>
		<td>
		<input type="button" value="수정" onclick="location.href='accountupdateform?account_number=${c.account_number}&pg=${pg}'"/>
		</td>
	</tr>
</c:forEach>
	
	<tr>
		<td>
		<input type="button" value="제품등록" onclick="location.href='accountinsert'"/>
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