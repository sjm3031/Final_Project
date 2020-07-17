<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>

<script type="text/javascript">
	function salary_update(){
		//alert("쓰기")	;
		if(document.salaryUpdateform.salary_month.value==""){
			alert("직급을 입력해주세요");
		}else if(document.salaryUpdateform.salary_time.value==""){
			alert("월 근무시간을 입력해주세요");
			document.salaryUpdateform.salary_time.focus();
		}else if(document.salaryUpdateform.salary_month.value==""){
			alert("근무 월을 입력해주세요");
			document.salaryUpdateform.salary_month.focus();
		}else if(document.salaryUpdateform.salary_tpay.value==""){
			alert("알바시급을 입력해주세요");
			document.salaryUpdateform.salary_tpay.focus();
		}else if(document.salaryUpdateform.salary_mpay.value==""){
			alert("직원월급을 입력해주세요");
			document.salaryUpdateform.salary_mpay.focus();
		}else if(document.salaryUpdateform.salary_totalpay.value==""){
			alert("총급여를 입력해주세요");
			document.salaryUpdateform.salary_totalpay.focus();
		}else if(document.salaryUpdateform.salary_date.value==""){
			alert("월급지급을 입력해주세요");
			document.salaryUpdateform.salary_date.focus();
		}else{
			document.salaryUpdateform.submit(); //전송
		}
	}
</script>
<style type="text/css">
	th {text-align: right; background: orange}

</style>

</head>
<body>
<h1>글 수정</h1>
<form name = "salaryUpdateform" action="salaryUpdate.cafe" method="post">
<table width="1000">
	<tr>
		<th>이름</th>
		<td>
			<input type="hidden" name="salary_code" value="${salary.salary_code}">
			<input type="text" name="employee_name"  value="${salary.employee_name}" readonly="readonly"/>
		</td>
	</tr>
	<tr>
		<th>직급</th>
		<td>
			<input type="text" name="employee_jobname" value="${salary.employee_jobname}" readonly="readonly"/>
		</td>
	</tr>
	<tr>
		<th>근무 월</th>
		<td>
		<input type="hidden" name="pg" value="${pg}" />
			<input type="text" name="salary_month" value="${salary.salary_month }" readonly="readonly"/>
		</td>
	</tr>
	
	<tr>
		<th>알바시급</th>
		<td>
			<input type="text" name="salary_tpay" value="${salary.salary_tpay}" readonly="readonly"/>
		</td>
	</tr>
	
	<tr>
		<th>직원월급</th>
		<td>
			<input type="text" name="salary_mpay" value="${salary.salary_mpay}" readonly="readonly"/>
		</td>
	</tr>
	
	<tr>
		<th>월 근무시간</th>
		<td>
			<input type="text" name="salary_time"  value="${salary.salary_time}"readonly="readonly" />
		</td>
	</tr>
	
	<tr>
		<th>총급여</th>
		<td>
			<input type="text" name="salary_totalpay" value="${salary.salary_totalpay}"readonly="readonly" />
		</td>
	</tr>
	<tr>
		<th>월급지급일</th>
		<td>
			<input type="text" name="salary_date" value="${salary.salary_date}" />
			
		</td>
	</tr>
	
	<tr>
		
		<td colspan="2">
			<input type="button" value="수정" onclick="salary_update()"/>
			<input type="reset" value="취소" onclick="location.href='salaryList.cafe'" />
		</td>
	</tr>
	

</table>


</form>


</body>
</html>