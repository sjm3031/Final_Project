<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function stock_insert(){
		//alert("쓰기")	;
// 		if(document.insertstock.stock_code.value==""){
// 			alert("이름을 입력해주세요");
// 			document.insertstock.stock_code.focus();
// 		}
		if(document.insertstock.stock_productname.value==""){
			alert("품명을 입력해주세요");
			document.insertstock.stock_productname.focus();
		}
		else if(document.insertstock.stock_detailname.value==""){
			alert("상세명을 입력해주세요");
			document.insertstock.stock_detailname.focus();
		}
		else if(document.insertstock.stock_standard.value==""){
			alert("규격을 입력해주세요");
			document.insertstock.stock_standard.focus();
		}
		else if(document.insertstock.stock_price.value==""){
			alert("금액을 입력해주세요");
			document.insertstock.stock_price.focus();
		}
// 		else if(document.insertstock.stock_image.value==""){
// 			alert("내용을 입력해주세요");
// 			document.insertstock.stock_image.focus();
// 		}
		else{
			document.insertstock.submit(); //전송
		}
	}

	
</script>
</head>
<body>
<form name = "insertstock" action="insertstock.do" method="post" enctype="multipart/form-data">
<table width="600" cellpadding="3">
	<tr>
		<th width="270">품명</th>
		<th width="100">상세명</th>
		<th width="120">규격</th>
		<th width="120">금액</th>
		<th width="120">이미지 등록</th>

	</tr>	


	<tr>
		<td><input type="text" id="stock_productname" name="stock_productname" maxlength="5" size="12"/></td>
		<td><input type="text" id="stock_detailname" name="stock_detailname" maxlength="5" size="12"/></td>
		<td><input type="text" id="stock_standard" name="stock_standard" maxlength="5" size="12"/></td>
		<td><input type="text" id="stock_price" name="stock_price" maxlength="5" size="12"/></td>
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