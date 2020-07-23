<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 쓰기</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


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


	function getCustomerInfo(){
		var customerPhone = document.getElementById('customer_phone').value;
		$.ajax(
		         {
		            url: './customerInfo.cafe',
		            type: 'get',
		            data: {customerPhone : customerPhone},
		            dataType: "json",
		            success: function(data){
		           		if(data.customer_pwd == null){
   				        	alert(data.customer_stamp+" 개의 스탬프를 적립한 회원입니다. \n\n 계속해서 회원가입을 진행해 주세요.");
			            	document.getElementById('customer_stamp').value = data.customer_stamp;
			            }else{
			            	document.getElementById('customer_phone').value = "";
			            	alert("이미 가입한 회원입니다.");
				        }
		        	},
		            error: function(error){
		            document.getElementById('customer_stamp').value = 0;
		            alert("기존에 없는 고객입니다.");
		            }
		         }
		      );
	}


</script>
<style type="text/css">
	th {text-align: right; background: orange}

</style>

</head>
    
    
<body>
<h1>글 쓰기</h1>

<form name = "writeform" action="write.cafe" method="post">
<table width="600">
	<tr>
		<th>전화번호</th>
		<td>
			<input type="text" id="customer_phone" name="customer_phone" maxlength="30" size="30"/>
		
			<button type="button" onclick="getCustomerInfo()">조회</button>
		</td>
		
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>
			<input type="text" id="customer_pwd" name="customer_pwd" maxlength="30" size="30"/>
		</td>
	</tr>	
	<tr>
		<th>이름</th>
		<td>
			<input type="text" id="customer_name"  name="customer_name" maxlength="30"  size="30"/>
		</td>
	</tr>
	
	<tr>
		<th>생년월일</th>
		<td>
			<input type="text" id="customer_birth"  name="customer_birth" maxlength="30"  size="30"/>
		</td>
	</tr>
	<tr>
		<th>성별</th>
		<td>
			<input type="radio" name="customer_gender" value="f">여자
			<input type="radio" name="customer_gender" value="m">남자

		</td>
	</tr>
	
	<tr>
		<th>스탬프</th>
		<td>
			<input type="text" id="customer_stamp"  name="customer_stamp" maxlength="30" value="0"  size="30" readonly="readonly"/>
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