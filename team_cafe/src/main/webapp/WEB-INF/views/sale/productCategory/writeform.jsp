<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 쓰기</title>
<script type="text/javascript">
	function board_write(){
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
<h1>글 쓰기</h1>
<a href="list.cafe">리스트</a>
<form name = "writeform" action="write.cafe" method="post"  enctype="multipart/form-data">
<table width="600">
	<tr>
		<th>카테고리명</th>
		<td>
			<input type="text" name="product_category_name" maxlength="30" size="30"/>
		</td>
	</tr>
	
	
	<tr>
		
		<td colspan="2">
			<input type="submit" value="insert"/>
			<input type="reset" value="취소" />
		</td>
	</tr>
	

</table>


</form>
</body>
</html>