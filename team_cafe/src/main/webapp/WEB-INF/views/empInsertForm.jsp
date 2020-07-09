<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 쓰기</title>
<script type="text/javascript">
	function emp_insert() {
		//alert("쓰기")	;
		if (document.empInsertform.employee_name.value == "") {
			alert("이름을 입력해주세요");
		} else if (document.empInsertform.employee_jumin.value == "") {
			alert("주민번호를 입력해주세요");
			document.empInsertform.employee_jumin.focus();
		} else if (document.empInsertform.employee_phone.value == "") {
			alert("핸드폰번호를 입력해주세요");
			document.empInsertform.employee_phone.focus();
		} else {
			document.empInsertform.submit(); //전송
		}
	}
</script>
<style type="text/css">
th {
	text-align: right;
	background: orange
}
</style>

</head>
<body>
	<h1>글 쓰기</h1>
	<a href="empList.cafe">리스트</a>
	<form name="empInsertform" action="empInsert.cafe" method="post">
		<table width="1000">
			<tr>
				<th>이름</th>
				<td><input type="text" name="employee_name" /></td>
			</tr>

			<tr>
				<th>주민번호</th>
				<td><input type="password" name="employee_jumin"  /></td>
			</tr>
			<tr>
				<th>핸드폰번호</th>
				<td><input type="text" name="employee_phone"  />
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="employee_address"  />
				</td>
			</tr>

			<tr>
				<th>은행</th>
				<td><input type="text" name="employee_bank" />
				</td>
			</tr>
			<tr>
				<th>계좌번호</th>
				<td><input type="text" name="employee_bankaddress" ></td>
			</tr>
			<tr>
				<th>직급</th>
				<td>
				
				<select name="employee_jobname"> -->
						<option>선택하세요</option> -->
					<c:forEach var="emp" items="${list}">
						<option  value="${emp.job_name}">${emp.job_name}</option>
					</c:forEach>
 				</select>
				
				
				</td>
			</tr>
			<tr>

				<td colspan="2">
				<input type="button" value="등록하기" onclick="emp_insert()" /> 
				<input type="reset" value="취소" onclick="location.href='empList.cafe'"/></td>
			</tr>





		</table>


	</form>
</body>
</html>