<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="update.cafe" method="post">
	<table border="1">
		<tr>
			<th>직원코드</th><th>직급</th><th>시급</th><th>월급</th>
		</tr>
		
		<tr>
			<td><input type="text" name="job_code" id="job_code" value="${dto.job_code }" readonly="readonly"></td>
			<td><input type="text" name="job_name" id="job_name" value="${dto.job_name }" ></td>
			<td><input type="text" name="job_tpay" id="job_tpay" value="${dto.job_tpay }"></td>
			<td><input type="text" name="job_mpay" id="job_mpay" value="${dto.job_mpay }"></td>
			<td><input type="submit" value="수정" onclick="location.href='hr/job/list.cafe'"></td>
			<td><input type="reset" value="취소" onclick="history.back()"></td>
		</tr>
	</table>
</form>

</body>
</html>