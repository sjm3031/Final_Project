<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function account_insert(){
	//alert("쓰기")	;
//		if(document.insertstock.stock_code.value==""){
//			alert("이름을 입력해주세요");
//			document.insertstock.stock_code.focus();
//		}
//		else 
	if(document.accountinsert.account_number.value==""){
		alert("사업자 번호를 입력해주세요");
		document.accountinsert.account_number.focus();
	}
	else if(document.accountinsert.account_name.value==""){
		alert("업체명을 입력해주세요");
		document.accountinsert.account_name.focus();
	}
	else if(document.accountinsert.account_ceoname.value==""){
		alert("사업자명을 입력해주세요");
		document.accountinsert.account_ceoname.focus();
	}
	else if(document.accountinsert.account_address.value==""){
		alert("주소를 입력해주세요");
		document.accountinsert.account_address.focus();
	}
	else if(document.accountinsert.account_email.value==""){
		alert("email을 입력해주세요");
		document.accountinsert.account_email.focus();
	}
	else{
		document.accountinsert.submit(); //전송
	}
}

</script>
</head>
<body>
<h3>거래처 등록</h3>

<form name = "accountinsert" action="accountinsert.cafe" method="post">
<table>
	<tr>
		<th width="120">사업자 번호</th>
		<th width="120">업체명</th>
		<th width="120">사업자명</th>
		<th width="120">주소</th>
		<th width="120">email</th>
		

	</tr>	


	<tr>
		<td><input type="text" id="account_number" name="account_number"/></td>
		<td><input type="text" id="account_name" name="account_name" maxlength="10" size="12"/></td>
		<td><input type="text" id="account_ceoname" name="account_ceoname" maxlength="10" size="12"/></td>
		<td><input type="text" id="account_address" name="account_address" maxlength="10" size="12"/></td>
		<td><input type="text" id="account_email" name="account_email" maxlength="10" size="12" /></td>
	</tr>
	
	
	<tr>
		<td>
		<input type="button" value="등록" onclick="account_insert()"/>
		<input type="reset" value="취소" />
		</td>
	</tr>
</table>
</form>
</body>
</html>