<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 정보 삭제</title>
<script type="text/javascript">
	function deletepro(){
		if(document.f.customer_code.value ==" "){
			alert("고객번호를 입력해주세요!");
			document.f.customer_code.focus();
		}else{
			document.f.submit();
		}
	}
</script>

<style type="text/css">
	th {text-align: left; background: orange ; width:80px}

</style>
</head>
<body>
<h1>고객 정보 삭제</h1>
<a href="list.htm?pg=${param.pg}">고객 정보 리스트</a>
<form name="f" action ="delete.htm" method="post">
<table width="400">
	<tr>
		<th>고객 코드</th>
		<td>
			<input type="hidden" name="pg" value="${param.pg}" />
			<input type="hidden" name="customer_code" value="${param.customer_code}" />
			<input type="text" name="customer_code" size="15" maxlength="12"/>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="left">
			<input type="button" value="삭제" onclick="deletepro()"/>
			<input type="button" value="취소"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>