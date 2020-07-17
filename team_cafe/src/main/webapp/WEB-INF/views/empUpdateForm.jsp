<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>

<script type="text/javascript">
	function emp_update(){
		//alert("쓰기")	;
		if(document.empUpdateform.employee_phone.value==""){
			alert("핸드폰번호를 입력해주세요");
		}else if(document.empUpdateform.employee_address.value==""){
			alert("은행을 입력해주세요");
			document.empUpdateform.employee_address.focus();
		}else if(document.empUpdateform.employee_bank.value==""){
			alert("은행을 입력해주세요");
			document.empUpdateform.employee_bank.focus();
		}else if(document.empUpdateform.employee_bankaddress.value==""){
			alert("계좌번호 입력해주세요");
			document.empUpdateform.bankaddress.focus();
		}else{
			document.empUpdateform.submit(); //전송
		}
	}
</script>
<style type="text/css">
	th {text-align: right; background: orange}

</style>

</head>
<body>
<h1>글 수정</h1>
<form name = "empUpdateform" action="empUpdate.cafe" method="post">
<table width="1000">
	<tr>
		<th>이름</th>
		<td>
			<input type="hidden" name="employee_code" value="${emp.employee_code}">
			<input type="text" name="employee_name"  value="${emp.employee_name}" readonly="readonly"/>
		</td>
	</tr>
	
	<tr>
		<th>주민번호</th>
		<td>
		<input type="hidden" name="pg" value="${pg}" />
			<input type="password" name="employee_jumin" value="${emp.employee_jumin }" readonly="readonly"/>
		</td>
	</tr>
	<tr>
		<th>핸드폰번호</th>
		<td>
			<input type="text" name="employee_phone"  value="${emp.employee_phone}" />
		</td>
	</tr>
	
	
	<tr>
		<th>주소</th>
		<td>
			<input type="text" name="employee_address" value="${emp.employee_address}" />
		</td>
	</tr>
	
	<tr>
		<th>은행</th>
		<td>
			<input type="text" name="employee_bank" value="${emp.employee_bank}" />
		</td>
	</tr>
	<tr>
		<th>계좌번호</th>
		<td>
			<input type="text" name="employee_bankaddress" value="${emp.employee_bankaddress}" />
		</td>
	</tr>
	<tr>
		<th>직급</th>
		<td>
			<select name="employee_jobname">
				<c:forEach var="list" items="${list}">
					<option value="${list.job_name }">${list.job_name }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	
<%-- 			<input type="text" name="employee_jobname" value="${emp.employee_jobname}" /> --%>
	<tr>
		
		<td colspan="2">
			<input type="button" value="수정" onclick="emp_update()"/>
			<input type="reset" value="취소" onclick="location.href='empList.cafe'" />
		</td>
	</tr>
	

</table>


</form>


</body>
</html>