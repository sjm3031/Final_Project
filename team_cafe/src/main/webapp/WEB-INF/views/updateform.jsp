<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정</title>

<script type="text/javascript">
	function board_update(){
		
		if(document.writeform.customer_code.value==" "){
			alert("고객 코드를 입력해주세요");
		}else if(document.writeform.customer_name.value==" "){
			alert("고객 이름을 입력해주세요");
			document.writeform.customer_name.focus();
		}else if(document.writeform.customer_phone.value==" "){
			alert("고객 전화번호를 입력해주세요");
			document.writeform.customer_phone.focus();
		}else if(document.writeform.customer_birth.value==" "){
			alert("고객 생년월일을 입력해주세요");
			document.writeform.customer_birth.focus();
		}else{
			document.writeform.submit(); 
		}
	}
</script>


<style type="text/css">
	th {text-align: right; background: orange}

</style>

</head>
<body>
<h1>고객 정보 수정</h1>
<form name = "writeform" action="update.htm" method="post">
<table width="600">
	<tr>
		<th>고객 코드</th>
		<td>
		
			<input type="hidden" name="pg" value="${pg}"/>
			<input type="hidden" name="customer_code" value="${b.customer_code}"/>
			<input type="text" name="customer_code" value="${b.customer_code}" maxlength="12"  size="15"/>
			
			
		</td>
	</tr>
	
	
		
	<tr>
		<th>고객 이름</th>
		<td>
			<input type="text" name="customer_name" maxlength="12"  size="15"/>
		</td>
	</tr>
	
	
	<tr>
		<th>고객 전화번호</th>
		<td>
			<input type="text" name="customer_phone" maxlength="12"  size="15"/>
		</td>
	</tr>
	<tr>
		<th>고객 생년월일</th>
		<td>
			<input type="text" name="customer_birth" maxlength="30"  size="15"/>
		</td>
	</tr>
	
		<tr>
		<th>고객 성별</th>
		<td>
			<input type="radio" name="customer_gender" name="gender" value="m" checked/>남
			<input type="radio" name="customer_gender" name="gender" value="f" />여
		</td>
	</tr>
	

		<td colspan="2">
			<input type="button" value="수정" onclick="board_update()"/>
			<input type="reset" value="취소" />
		</td>
	</tr>
	

</table>


</form>


</body>
</html>