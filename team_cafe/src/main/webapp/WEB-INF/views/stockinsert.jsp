<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function stock_insert(){
	//alert("쓰기")	;
//		if(document.insertstock.stock_code.value==""){
//			alert("이름을 입력해주세요");
//			document.insertstock.stock_code.focus();
//		}
//		else 
	if(document.stockinsert.stock_productname.value=="선택하세요"){
		alert("품명을 선택해주세요");
		
	}
	else if(document.stockinsert.stock_detailname.value==""){
		alert("상세명을 입력해주세요");
		document.stockinsert.stock_detailname.focus();
	}
	else if(document.stockinsert.stock_standard.value==""){
		alert("규격을 입력해주세요");
		document.stockinsert.stock_standard.focus();
	}
	else if(document.stockinsert.stock_price.value==""){
		alert("금액을 입력해주세요");
		document.stockinsert.stock_price.focus();
	}
	else if(document.stockinsert.account_number.value=="선택하세요"){
		alert("회사명을 선택해주세요");
		
	}
	else{
// 		var acode = document.getElementById("account_number");
// 		var array = acode.value.split("/");
// 		alert(array[0]);
// 		document.getElementById("split").setAttribute("value", array[0]);
		document.stockinsert.submit(); //전송
	}
}

</script>
</head>
<body>
<form name = "stockinsert" action="stockinsert" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<th width="120">품명</th>
		<th width="120">상세명</th>
		<th width="120">규격</th>
		<th width="120">금액(원)</th>
		<th width="150">회사명</th>
		<th width="120">이미지 등록</th>
		

	</tr>	


	<tr>
<!-- 		<td><input type="text" id="stock_productname" name="stock_productname" maxlength="10" size="12"/></td> -->
		<td>
			<select name="stock_productname" id="stock_productname">
				<option>선택하세요</option>
				<option>음료</option>
				<option>원두</option>
				<option>재과</option>
				<option>기타</option>
			</select>
		</td>
		<td><input type="text" id="stock_detailname" name="stock_detailname" maxlength="10" size="12"/></td>
		<td><input type="text" id="stock_standard" name="stock_standard" maxlength="10" size="12"/></td>
		<td><input type="text" id="stock_price" name="stock_price" maxlength="10" size="12"/></td>
		<td>
		<select name="account_number" id="account_number">
			<option>선택하세요</option>
			<c:forEach var="get" items="${account_list}">
			<option value="${get.account_number}">${get.account_name}</option>
			</c:forEach>
		</select>
		</td>
		<td>
		<input type="file" id="stock_upimage" name="stock_upimage" />
		</td>
	</tr>
	
	
	<tr>
		<td>
		<input type="button" value="등록" onclick="stock_insert()"/>
		<input type="reset" value="취소" />
		</td>
	</tr>
</table>
</form>
</body>
</html>