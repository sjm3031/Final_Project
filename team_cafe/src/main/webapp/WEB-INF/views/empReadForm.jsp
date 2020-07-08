<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	th { text-align: left ; background:orange;}
	textarea { background-color: #ddd; border:1px solid blick;}
</style>
<script type="text/javascript">
function emp_update(){
	//alert("수정");
	location.href="empUpdateForm.cafe?num=${num}&pg=${pg}";
	
	
}
function emp_delete(){
	//alert("삭제");
	location.href="empDelete.cafe?num=${emp.employee_code}&pg=${pg}";
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 읽기</title>
</head>
<body>
<h1>글 읽기</h1>

<a href="empList.cafe?pg=${pg}"> 리스트 </a>
<table width="500">

	<tr>		
				<tr><td><input type="text" name="employee_code" value=${emp.employee_code }></td></tr>
				<tr><td><input type="text" name="employee_name"  value="${emp.employee_name}"></td><tr>
				<tr><td><input type="password" name="employee_jumin" value="${emp.employee_jumin }"></td><tr>
				<tr><td><input type="text" name="employee_phone"  value="${emp.employee_phone}"></td><tr>
				<tr><td><input type="text" name="employee_address" value="${emp.employee_address}"></td><tr>
				<tr><td><input type="text" name="employee_startdate" value="${emp.employee_startdate}"></td><tr>
				<tr><td><input type="text" name="employee_bank" value="${emp.employee_bank}"></td><tr>
				<tr><td><input type="text" name="employee_bankaddress" value="${emp.employee_bankaddress}"></td><tr>
				<tr><td><input type="text" name="employee_jobname" value="${emp.employee_jobname}"> </td><tr>
			</tr>
	<tr>
		<td colspan="4" align="right">
			<input type="button" value="직원정보수정" onclick="emp_update()"/>
			<input type="button" value="직원퇴사" onclick="emp_delete()"/>
			
		</td>
	</tr>
	
</table>



</body>
</html>