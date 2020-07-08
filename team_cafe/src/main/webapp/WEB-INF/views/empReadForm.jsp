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

function emp_update2(){
	
	location.href="empUpdate2.cafe?employee_code=${emp.employee_code}&pg=${pg}"
}
// function emp_delete(){
// 	//alert("삭제");
// 	location.href="empDelete.cafe?num=${emp.employee_code}&pg=${pg}";
// }

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 상세보기</title>
</head>
<body>
<h1>직원 상세보기</h1>

<a href="empList.cafe?pg=${pg}"> 직원리스트 </a>
<table width="500" cellspacing="30" border="1">		
				<tr><td>직원코드 : </td><td>${emp.employee_code }</td></tr>
				<tr><td>이름 : </td><td>${emp.employee_name}</td><tr>
				<tr><td>주민번호 : </td><td>${emp.employee_jumin }</td><tr>
				<tr><td>핸드폰번호 :<td>${emp.employee_phone}</td><tr>
				<tr><td>주소 : </td><td>${emp.employee_address}</td><tr>
				<tr><td>입사날짜 : </td><td>${emp.employee_startdate}</td><tr>
				<tr><td>퇴사여부 : </td><td>${emp.employee_endyn }</td></tr>
				<tr>
				<td>퇴사날짜 : </td>
				<td>${emp.employee_enddate}</td>
				<td><input type="button" value="퇴사처리" onclick="emp_update2()"></td>
				</tr>
				<tr><td>은행 : </td><td>${emp.employee_bank}</td><tr>
				<tr><td>계좌번호 : <td>${emp.employee_bankaddress}</td><tr>
				<tr><td>직급 : </td><td>${emp.employee_jobname}</td><tr>
			</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="직원정보수정" onclick="emp_update()"/>
<!-- 			<input type="button" value="직원퇴사" onclick="emp_delete()"/> -->
			
		</td>
	</tr>
	
</table>



</body>
</html>