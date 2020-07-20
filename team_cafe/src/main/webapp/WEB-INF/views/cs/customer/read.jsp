<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	th { text-align: left ; background:orange;}
	textarea { background-color: #ddd; border:1px solid blick;}
</style>
<script type="text/javascript">
function board_update(){
	//alert("수정");
	location.href="updateform.cafe?customer_code=${b.customer_code}&pg=${pg}";
	
}
function board_delete(){
	//alert("삭제");
	location.href="deleteform.cafe?customer_code=${b.customer_code}&pg=${pg}";
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 정보 읽기</title>
</head>
<body>
<h1>상품 정보 읽기</h1>

<a href="list.cafe?pg=${pg}"> 리스트 </a>
<table width="500">

	<tr>
	    <td width="20%">${b.customer_code}</td>
		<td width="20%">${b.customer_name}</td>
		<td>${b.customer_phone}</td>
		<td width="20%">${b.customer_birth}</td>
		<td width="20%">${b.customer_gender}</td>
		<td width="20%">${b.customer_stamp}</td>
		<td width="20%">${b.customer_pwd}</td>
	</tr>
	

	<tr>
		<td colspan="4" align="right">
			<input type="button" value="수정" onclick="board_update()"/>
			<input type="button" value="삭제" onclick="board_delete()"/>
		</td>
	</tr>
	
</table>



</body>
</html>