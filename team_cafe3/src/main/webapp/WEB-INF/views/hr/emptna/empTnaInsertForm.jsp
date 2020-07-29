<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript">
	function empTna_insert(){
		//alert("쓰기")	;
		if(document.empTnaInsert.employee_name.value==""){
			alert("이름을 입력해주세요");
		}else if(document.empTnaInsert.employee_jumin.value==""){
			alert("주민번호 입력해주세요");
			document.empTnaInsert.employee_jumin.focus();
		}else{
			document.empTnaInsert.submit(); //전송
		}
	}
</script>
<title>Insert title here</title>

</head>
<body>
	<form name="empTnaInsert" action="insert.cafe" method="post">
	
		<table>
			<tr>
				<td>이름을 입력하세요 :</td>
				<td><input type="text" name="employee_name"></td>
			</tr>
			<tr>
				<td>주민번호를 입력하세요 :</td>
				<td><input type="password" name="employee_jumin"></td>
			</tr>
			<tr>
				<td rowspan="2">
				<input type="button" value="출근" onclick="empTna_insert()">
 				<input type="reset" value="취소" onclick="history.back()">
			</tr>
		</table>
	</form>
</body>
</html>