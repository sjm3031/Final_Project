<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="update2.cafe" method="post">
	<table width="1500" cellpadding="3">
		

	

			<tr><td>근태코드</td><td>
			<input type="hidden" name="pg" value="${pg}" />
			<input type="text" name="emptna_code" value="${dto.emptna_code}" readonly="readonly"></td></tr>
				<tr><td>이름</td><td>${dto.employee_name}</td></tr>
				<tr><td>년</td><td>${dto.emptna_year}</td></tr>
				<tr><td>월</td><td>${dto.emptna_month}</td></tr>
				<tr><td>일</td><td>${dto.emptna_day}</td></tr>
				<tr>
				<td>출근시간</td>
				<td>
				<input type="text" name="starttime" value="<fmt:formatDate value="${dto.emptna_starttime}" pattern="yyyy-MM-dd HH:mm" />">
				</td>
				</tr>
				<tr><td>퇴근시간 </td>
				<td><input type="text" name="endtime" value="<fmt:formatDate value="${dto.emptna_endtime}" pattern="yyyy-MM-dd HH:mm" />"></td></tr>
				<tr><td>일일근무시간</td><td>${dto.emptna_daytotaltime}</td></tr>
				
				
				<tr><td colspan="2"><input type="submit" value="수정"></td></tr>
				
				<%-- 				<input type="button" value="삭제" onclick="location.href='empDelete.cafe?employee_code=${emp.employee_code}&pg=${pg}'"> --%>
				<!-- 				</td> -->
			
		
		

	</table>
	</form>
</body>
</html>