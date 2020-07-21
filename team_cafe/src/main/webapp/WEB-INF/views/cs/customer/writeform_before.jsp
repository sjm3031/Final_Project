<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>등록</title>

<script type="text/javascript">
	function board_write(){
		
		if(document.writeform.customer_name.value==""){
			alert("고객명을 입력해주세요");
		}else if(document.writeform.customer_phone.value==""){
			alert("전화번호를 입력해주세요");
			document.writeform.customer_phone.focus();
		}else if(document.writeform.customer_birth.value==""){
			alert("생년월일을 입력해주세요");
			document.writeform.customer_birth.focus();
		}else if(document.writeform.customer_gender.value==""){
			alert("성별을 체크해주세요.");
			document.writeform.customer_gender.focus();
		}else if(document.writeform.customer_stamp.value==""){
			alert("스템프 수를 체크해주세요.");
			document.writeform.customer_stamp.focus();
		}else if(document.writeform.customer_pwd.value==""){
			alert("비밀번호를 체크해주세요.");
			document.writeform.customer_pwd.focus();
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
<h1>고객등록</h1>
<a href="list.cafe">리스트</a>
<form name = "writeform" action="write.cafe" method="post">
<table width="600">


	<tr>
		<th> customer_name</th>
		<td>
			<input type="text" name="customer_name" maxlength="5" size="15"/>
		</td>
	</tr>
	
	<tr>
		<th>customer_phone</th>
		<td>
			<input type="text" name="customer_phone" maxlength="15"  size="15"/>
		</td>
	</tr>
	<tr>
		<th>customer_birth</th>
		<td>
			<input type="text" name="customer_birth" maxlength="15"  size="15"/>
		</td>
	</tr>
	
	
		<tr>
		<th>customer_gender</th>
		<td>
			
			<input type="radio" name="customer_gender"  value="m" checked/>남
			<input type="radio" name="customer_gender"  value="f" />여
		</td>
	</tr>
	
		<tr>
		<th>customer_stamp</th>
			<td>
			<input type="text" name="customer_stamp" maxlength="30"  size="15"/>
		</td>
	
	</tr>
	
		<tr>
		<th>customer_pwd</th>
			<td>
			<input type="text" name="customer_pwd" maxlength="30"  size="15"/>
		</td>
	</tr>
	
	<tr>
		
		<td colspan="2">

			<input type="button" value="쓰기" onclick="board_write()"/>
			<input type="reset" value="취소" />
		</td>
	</tr>
	

</table>


</form>
</body>
</html>