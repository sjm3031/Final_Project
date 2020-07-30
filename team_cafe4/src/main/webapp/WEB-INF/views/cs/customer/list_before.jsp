<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리스트</title>
<style type="text/css">
	th{background: orange};
</style>
</head>
<body>
<h1>리스트</h1>
<!-- <a href="writeform.htm">고객 정보 등록</a> -->
<table width="600" cellpadding="3">
	<tr>
		<th width="50">고객코드</th>
		<th width="120">고객명</th>
		<th width="200">고객 전화번호</th>
		<th width="120">고객 생년월일</th>
		<th width="50">고객 성별</th>
		<th width="50">고객 스템프 수</th>
		<th width="50">고객 비밀번호</th>

	</tr>	


<c:forEach var="b" items="${list}">


	<tr>
		<td>${b.customer_code}</td>
		<td>
		<a href="read.cafe?customer_code=${b.customer_code}&pg=${pg}">${b.customer_name}</a></td>

		<td>${b.customer_phone}</td>
		<td>${b.customer_birth}</td>
		<td>${b.customer_gender}</td>
		<td>${b.customer_stamp}</td>
		<td>${b.customer_pwd}</td>
	</tr>
</c:forEach>

</table>
<div style="width:600px;text-align:right"><a href="writeform.cafe">글쓰기</a></div>

<table width="600">
<tr>
	<td align="center">
		<!-- 처음 이전 링크 -->
		<c:if test="${pg>block}">  <!-- 5>10 : false / 15>10 : true -->
			[<a href="list.htm?pg=1">◀◀</a>]
			[<a href="list.htm?pg=${fromPage-1}">◀</a>]		
		</c:if>
		<c:if test="${pg<=block}"> <!-- 5<=10 :true / 15<=10:false -->
			[<span style="color:gray">◀◀</span>]	
			[<span style="color:gray">◀</span>]
		</c:if>
		
		<!-- 블록 범위 찍기 -->
		<c:forEach begin="${fromPage}" end="${toPage}" var="i">
			<c:if test="${i==pg}">[${i}]</c:if>
			<c:if test="${i!=pg}">
				[<a href="list.htm?pg=${i}">${i}</a>]
			</c:if>
		</c:forEach>
		
		<!-- 다음, 이후 -->
		<c:if test="${toPage<allPage}"> <!-- 20<21 : true -->
				[<a href="list.htm?pg=${toPage+1}">▶</a>]
				[<a href="list.htm?pg=${allPage}">▶▶</a>]
		
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