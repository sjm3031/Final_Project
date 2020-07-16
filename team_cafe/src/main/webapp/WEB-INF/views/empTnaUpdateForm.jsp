<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript">
	function empTna_update(){
		//alert("쓰기")	;
		if(document.empTnaUpdate.employee_name.value==""){
			alert("이름을 입력해주세요");
		}else if(document.empTnaUpdate.employee_jumin.value==""){
			alert("주민번호 입력해주세요");
			document.empTnaUpdate.employee_jumin.focus();
		}else{
			document.empTnaUpdate.submit(); //전송
		}
	}
</script>
<title>Insert title here</title>

</head>
<body>
	<form name="empTnaUpdate" action="empTnaUpdate.cafe" method="post">
	
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
				<input type="button" value="정보입력완료" onclick="empTna_update()">
 				<input type="reset" value="취소" onclick="history.back()">
			</tr>
		</table>
	</form>
</body>
</html>