<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function stock_update(){
	//alert("쓰기")	;
//		if(document.insertstock.stock_code.value==""){
//			alert("이름을 입력해주세요");
//			document.insertstock.stock_code.focus();
//		}
//		else 
	if(document.stockupdate.stock_productname.value==""){
		alert("품명을 입력해주세요");
		document.stockupdate.stock_productname.focus();
	}
	else if(document.stockupdate.stock_detailname.value==""){
		alert("상세명을 입력해주세요");
		document.stockupdate.stock_detailname.focus();
	}
	else if(document.stockupdate.stock_standard.value==""){
		alert("규격을 입력해주세요");
		document.stockupdate.stock_standard.focus();
	}
	else if(document.stockupdate.stock_price.value==""){
		alert("금액을 입력해주세요");
		document.stockupdate.stock_price.focus();
	}
	else if(document.stockupdate.account_number.value==""){
		alert("내용을 입력해주세요");
		document.stockupdate.account_number.focus();
	}
	else{
		document.stockupdate.submit(); //전송
	}
}
</script>
</head>
<body>
<form name = "stockupdate" action="stockupdate" method="post">
<table>
	<tr>
		<th width="80">코드</th>
		<th width="100">품명</th>
		<th width="100">상세명</th>
		<th width="100">규격</th>
		<th width="100">금액</th>
		<th width="100">회사명</th>
		<th width="100">이미지 등록</th>

	</tr>	


	<tr>
		<td width="80">
		<input type="hidden" name="pg" value="${pg}"/>
<%-- 		<input type="hidden" name="stock_code" value="${stock_code}"/> --%>
		<input type="hidden" id="stock_code" name="stock_code" value="${b.stock_code}"/>
		<input type="text" id="stock_code" name="stock_code" value="${b.stock_code}" disabled="disabled"/>
		</td>
		<td><input type="text" id="stock_productname" name="stock_productname" value="${b.stock_productname}"/></td>
		<td><input type="text" id="stock_detailname" name="stock_detailname" value="${b.stock_detailname}"/></td>
		<td><input type="text" id="stock_standard" name="stock_standard" value="${b.stock_standard}"/></td>
		<td><input type="text" id="stock_price" name="stock_price" value="${b.stock_price}"/></td>
		<td>
		<select name="account_number" id="account_number">
			<option>선택하세요</option>
			<c:forEach var="get" items="${account_list}">
			<option value="${get.account_number}">${get.account_name}</option>
			</c:forEach>
		</select>
		</td>
		<td><input type="file" id="stock_image" name="stock_image"/></td>
	</tr>
	
	
	<tr>
		<td></td>
		<td></td>
		<td></td>	
		<td></td>
		<td></td>
		<td></td>
		<td>
		<input type="button" value="등록" onclick="stock_update()"/>&nbsp;<input type="reset" value="취소" />
		</td>
	</tr>
</table>
</form>
</body>
</html>