<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>

<script type="text/javascript">
	function board_update(){
		//alert("쓰기")	;
		if(document.writeform.name.value==""){
			alert("이름을 입력해주세요");
		}else if(document.writeform.pwd.value==""){
			alert("비밀번호을 입력해주세요");
			document.writeform.pwd.focus();
		}else if(document.writeform.email.value==""){
			alert("이메일을 입력해주세요");
			document.writeform.email.focus();
		}else if(document.writeform.subject.value==""){
			alert("제목을 입력해주세요");
			document.writeform.subject.focus();
		}else if(document.writeform.content.value==""){
			alert("내용을 입력해주세요");
			document.writeform.content.focus();
		}else{
			document.writeform.submit(); //전송
		}
	}
</script>
<style type="text/css">
	th {text-align: right; background: orange}

</style>

</head>
<body>
<h1>글 수정</h1>
<form name = "writeform" action="update.cafe" method="post">
<table width="600">
	<tr>
		<th>카테고리명</th>
		<td>
		
	
			<input type="hidden" name="product_category_code" value="${b.product_category_code}"/>
			<input type="text" name="product_category_name" maxlength="5" size="12" value="${b.product_category_name}"/>
		</td>
	</tr>
	<tr>

		
		<td colspan="2">
			<input type="submit" value="수정"/>
			<input type="reset" value="취소" />
			<input type="button" value="삭제" onclick="location.href='delete.cafe?num=${b.product_category_code}'" />
		</td>
	</tr>
	

</table>


</form>


</body>
</html>