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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 상세보기</title>
</head>
<body>
<h1>직원 상세보기</h1>
<h1>${emp.employee_name}님 안녕하세요<h1>

<form name="empTnaInsertform" action="empTnaInsert.cafe" method="post">
	<input name="emptna_empcode" type="hidden" value="${emp.employee_code}">
	<input type="submit" value="출근하기">
</form>

<form action="empTnaUpdate.cafe" method="post">
	<input name="emptna_empcode" type="hidden" value="${emp.employee_code}" >
	
	<input type="submit" value="퇴근하기">
</form>

</body>
</html>