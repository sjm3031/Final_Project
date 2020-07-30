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
<a href="writeform.cafe">글 쓰기</a>


<table width="600" cellpadding="3">
	<tr>
		<th width="50">카테고리 코드</th>
		<th width="50">카테고리 명</th>

		<th width="120"></th>
	</tr>	

<c:forEach var="b" items="${list}">


	<tr>
		<td>${b.product_category_code}</td>
		<%-- <td>
		
		<c:forEach begin="0" end="${b.tab}">
		&nbsp;&nbsp;&nbsp;
		</c:forEach> --%>
		
	<%-- 	<a href="read.htm?num=${b.cafe_product_code}&pg=${pg}">${b.subject}</a></td> --%>
		<td>${b.product_category_name}</td>
		<td><input type="button" value="수정" onclick="location.href='updateform.cafe?num=${b.product_category_code}'" /></td>
	</tr>
</c:forEach>

</table>
<div style="width:600px;text-align:right"><a href="writeform.cafe">글쓰기</a></div>

</body>
</html>