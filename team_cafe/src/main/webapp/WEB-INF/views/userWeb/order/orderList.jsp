<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<link href="../resources/css/w3.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet">

<style>

body, html {height: 100%}
body,h1,h2,h3,h4,h5,h6 {font-family: "Amatic SC", sans-serif}
.menu {display: none}
.bgimg {
  background-repeat: no-repeat;
  background-size: cover;
  background-image: url("/erp/resources/images/userWeb/main_coffe.jpg");
  min-height: 90%;
}
.aaa {font-family: 'Jeju Gothic', sans-serif}
.bbb {font-family: "Amatic SC", sans-serif}
</style>


<body>

<!-- Navbar (sit on top) -->
<div class="w3-top w3-hide-small">
  <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
    <a href="home.cafe" class="w3-bar-item w3-button">HOME</a>
    <a href="home.cafe" class="w3-bar-item w3-button">MENU</a>

    
    <c:if test="${sessionScope.USERCODE != null}">
    <a href="cartlist.cafe?customer_code=${sessionScope.USERCODE}" class="w3-bar-item w3-button">MY PAGE</a>
    </c:if>
    
    <c:if test="${sessionScope.USERCODE == null}">
    <a onclick="login()" class="w3-bar-item w3-button">MY PAGE</a>
    </c:if>
    
    
    
    <a href="memberwriteform.cafe" class="w3-right w3-bar-item w3-button">REGISTER</a>
    <c:if test="${sessionScope.USERCODE != null}">
    <a href="logout.cafe" class="w3-right w3-bar-item w3-button">LOGOUT</a>

    </c:if>
    <c:if test="${sessionScope.USERCODE == null}">
    <a href="login.cafe" class="w3-right w3-bar-item w3-button">LOGIN</a>
    </c:if>

  </div>
</div>
  


<!-- Menu Container -->
<div class="w3-container w3-black w3-padding-64 w3-xxlarge" id="menu">
  <div class="w3-content">
  
      <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">MY ORDER</h1>
    <div class="w3-row w3-center w3-border w3-border-dark-grey">

<a href="mypage.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">My Page</div>
      </a>
      
      <a href="cartlist.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red" >Cart</div>
      </a>
      
      <a href="orderlist.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red" style="background-color: #a95858 !important;">Order</div>
      </a>

	
    </div> 

 	 <div align="center" class="w3-container menu w3-white" style="display: block; margin-bottom: 30px; padding-left: 0px;padding-right: 0px;padding-bottom: 2em; ">
     <h1 style="background-color: #a95858;margin: 0px; padding:10px; color: white;"><b class="aaa"> 접수중</b> </h1>
<br>
<c:forEach var="o" items="${orderlist}">

<c:if test="${o.order_web_check ==0}">

	<a href="orderlistview.cafe?orderWebCode=${o.order_web_code}"> 
	<div align="left" class="w3-container menu w3-white"  style="display: block;">
	      <h4 class="w3-text-grey aaa">주문번호 : ${o.order_web_code}</h14>
	      <h4 class="w3-text-grey aaa">총 주문 상품 수량 : ${o.order_web_count}</h14>
	      <h4 class="w3-text-grey aaa">총 금액 : ${o.order_web_total}  ₩</h14>
	      <h4 class="w3-text-grey aaa">날짜 : ${o.order_web_date}</h14>
	      <hr>
	</div>
	</a>
</c:if>
</c:forEach> 
</div>



 	 <div align="center" class="w3-container menu w3-white" style="display: block; margin-bottom: 30px; padding-left: 0px;padding-right: 0px;padding-bottom: 2em; ">
     <h1 style="background-color: #a95858;margin: 0px; padding:10px; color: white;"><b class="aaa"> 접수 완료</b> </h1>
<br>
<c:forEach var="o" items="${orderlist}">
<c:if test="${o.order_web_check ==1}">
	
	<a href="orderlistview.cafe?orderWebCode=${o.order_web_code}"> 
	<div align="left" class="w3-container menu w3-white"  style="display: block;">
	      <h4 class="w3-text-grey aaa">주문번호 : ${o.order_web_code}</h14>
	      <h4 class="w3-text-grey aaa">총 주문 상품 수량 : ${o.order_web_count}</h14>
	      <h4 class="w3-text-grey aaa">총 금액 : ${o.order_web_total}  ₩</h14>
	      <h4 class="w3-text-grey aaa">날짜 : ${o.order_web_date}</h14>
	      <hr>
	</div>
	</a>
</c:if>


</c:forEach>  

  	 </div>
  

  </div>
</div>


<!-- Footer -->
<footer class="w3-center w3-black w3-padding-48 w3-xxlarge">
  <p style="font-size: x-large;">Copyright 2020.kosta team3<a href="../pos/main.cafe"> --- pos</a></p>

  </footer>











</body>
</html>
