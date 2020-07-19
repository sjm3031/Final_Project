<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>


</head>
<body>


<h3>고객관리</h3>
<br>
<button type="button" onclick="">조회</button>
<br>

<hr>

<h3>인사관리</h3>
<br>
<button type="button" onclick="">조회</button>
<br>

<hr>

<h3>매출관리</h3>
<br>
<button type="button" onclick="location.href='sale/productCategory/list.cafe'">판매제품카테고리 리스트</button>
<br>
<button type="button" onclick="location.href='sale/productAdd/list.cafe'">음료의 추가 옵션 항목 리스트</button>
<br>
<button type="button" onclick="location.href='sale/product/list.cafe'">판매제품 리스트</button>
<br>


<hr>
	
<h3>재고관리</h3>
<br>
<button type="button" onclick="location.href='store/stocklist.cafe'">품목조회</button>
<button type="button" onclick="location.href='store/orderlist.cafe'">발주내역 보기</button>
<button type="button" onclick="location.href='store/accountlist.cafe'">거래처 보기</button>
<button type="button" onclick="location.href='store/accountinsertform.cafe'">거래처 등록</button>
<button type="button" onclick="location.href='store/stockorder.cafe'">발주 장바구니</button>
<br>

<hr>

<h3>회계/재무관리</h3>
<br>
<button type="button" onclick="">조회</button>
<br>

<hr>






</body>
</html>