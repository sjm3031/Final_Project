<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function account_update(){
		//alert("쓰기")	;
// 		if(document.insertstock.stock_code.value==""){
// 			alert("이름을 입력해주세요");
// 			document.insertstock.stock_code.focus();
// 		}
// 		else 
		if(document.accountupdate.account_number.value==""){
			alert("품명을 입력해주세요");
			document.accountupdate.account_number.focus();
		}
		else if(document.accountupdate.account_name.value==""){
			alert("상세명을 입력해주세요");
			document.accountupdate.account_name.focus();
		}
		else if(document.accountupdate.account_ceoname.value==""){
			alert("규격을 입력해주세요");
			document.accountupdate.account_ceoname.focus();
		}
		else if(document.accountupdate.account_address.value==""){
			alert("금액을 입력해주세요");
			document.accountupdate.account_address.focus();
		}
		else if(document.accountupdate.account_email.value==""){
			alert("내용을 입력해주세요");
			document.accountupdate.account_email.focus();
		}
		else{
			document.accountupdate.submit(); //전송
		}
	}
</script>
</head>
<body>
<h3>거래처 수정</h3>
<form name = "accountupdate" action="accountupdate" method="post">
<table>
	<tr>
		<th width="120">사업자 번호</th>
		<th width="120">업체명</th>
		<th width="120">사업자명</th>
		<th width="120">주소</th>
		<th width="120">email</th>

	</tr>	


	<tr>
		<td width="120">
		<input type="hidden" name="pg" value="${pg}"/>
<%-- 		<input type="hidden" name="stock_code" value="${stock_code}"/> --%>
<%-- 		<input type="hidden" id="stock_code" name="stock_code" value="${b.stock_code}"/> --%>
		<input type="text" id="account_number" name="account_number" value="${c.account_number}"/>
		</td>
		<td><input type="text" id="account_name" name="account_name" value="${c.account_name}"/></td>
		<td><input type="text" id="account_ceoname" name="account_ceoname" value="${c.account_ceoname}"/></td>
		<td><input type="text" id="account_address" name="account_address" value="${c.account_address}"/></td>
		<td><input type="text" id="account_email" name="account_email" value="${c.account_email}"/></td>
	</tr>
	
	
	<tr>
		<td></td>
		<td></td>
		<td></td>	
		<td></td>
		<td></td>
		<td></td>
		<td>
		<input type="button" value="등록" onclick="account_update()"/>&nbsp;<input type="reset" value="취소" />
		</td>
	</tr>
</table>
</form>
</body>
</html>