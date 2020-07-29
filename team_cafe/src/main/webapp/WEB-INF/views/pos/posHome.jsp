<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>

<style type="text/css">
	.area {
		width: 400px;
		height: 400px;
		display: inline-block;
	}
	
	#one {
		background-color: black;
	}
	
	#two {
		background-color: olive;
	}
</style>

</head>
<body>
<a href="${path }/pos/login">관리자 로그인</a>

<hr>
<div class="area" id="one">
	<table>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
</div>

<div class="area" id="two">

</div>

</body>
</html>