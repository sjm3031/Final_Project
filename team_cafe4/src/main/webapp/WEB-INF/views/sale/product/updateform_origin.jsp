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
		<th>상품명</th>
		<td>
		
		
			<input type="hidden" name="cafe_product_code" value="${b.cafe_product_code}"/>
			<input type="text" name="cafe_product_name" maxlength="5" size="12" value="${b.cafe_product_name}"/>
		</td>
	</tr>
	

	<tr>
		<th>가격</th>
		<td>
			<input type="text" name="cafe_product_price" maxlength="30"  size="30" value="${b.cafe_product_price }" />
		</td>
	</tr>
	
	
	<tr>
		<th>이미지</th>
		<td>
			<input type="text" name="cafe_product_img" maxlength="50" size="65" value="${b.cafe_product_img}" />
		</td>
	</tr>
	<tr>
		<th>카테고리</th>
		<td>
		
		  <select name="product_category_code" id="product_category_code">
		<c:forEach var="c" items="${categorylist}">

	
			 <c:if test="${ c.product_category_code == b.product_category_code }">
			 
			  <option value="${ c.product_category_code }" selected >${ c.product_category_name }</option>
			 
			 </c:if>
			
			
		    <option value="${ c.product_category_code }"  >${ c.product_category_name }</option>
		    
		</c:forEach>
		  </select>

<%-- 			<input type="text" name="product_category_code" maxlength="50" size="65" value="${b.product_category_code}" />
	 --%>	
	 </td>
	</tr>
	<tr>
		
		<td colspan="2">
			<input type="submit" value="수정"/>
			<input type="reset" value="취소" />
			<input type="button" value="삭제" onclick="location.href='delete.cafe?num=${b.cafe_product_code}'" />
		</td>
	</tr>
	

</table>


</form>


</body>
</html>