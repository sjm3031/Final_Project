<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript">
	function empTna_select() {
		//alert("쓰기")	;
		if (document.emptnaForm.emptna_year.value == "") {
			alert("년도를 선택해주세요");
		} else if (document.emptnaForm.emptna_month.value == "") {
			alert("달을 선택해주세요");
			document.emptnaForm.emptna_month.focus();
		} else {
			document.emptnaForm.submit(); //전송
		}
	}
</script> -->
</head>
<body>
	<form action="empTnaMonthRead.cafe" >	
	
	
 	<select name="emptna_year" >
			<option>선택하세요</option> 
				<c:forEach var="list" items="${list}">
						<option value="${list.emptna_year}">${list.emptna_year}</option>
										</c:forEach>
 	</select> &nbsp;&nbsp;
 	
  	<select name="emptna_month">
			<option>선택하세요</option> 
				<c:forEach var="list" items="${list1}">
						<option value="${list.emptna_month}">${list.emptna_month}</option>
				</c:forEach>
 	</select>
 	
 	<input type="submit" value="조회">
 	</form>
 	
</body>
</html>