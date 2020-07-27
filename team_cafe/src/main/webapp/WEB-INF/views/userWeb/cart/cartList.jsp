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

<script>
	function del(cart_code, customer_code) {
		var chk = confirm("정말 삭제하시겠습니까?");
	//	alert(customer_code);
	/* 	var code = document.getElememtById('customers_code').value;
		alert(code); */
		
		if (chk) {
		
			location.href='delete.cafe?cart_code='+cart_code+'&customer_code='+customer_code; 
		}
	}	



 	function Modify(cart_code, customer_code) {
	 
	 	var Num = cart_code;
	 	
	 	 var Num1 = document.getElementById('cartNum').value; 
	 	// alert(Num1); 
	
		/* var count = update.cart_code.value; */
 		

 		location.href='update.cafe?cart_code='+cart_code+'&cart_num='+Num1+'&customer_code='+customer_code;

	} 

	
</script>

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
  
      <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">Cart List</h1>
 
    <div class="w3-row w3-center w3-border w3-border-dark-grey">

<a href="mypage.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">My Page</div>
      </a>
      
      <a href="cartlist.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red" style="background-color: #a95858 !important;">Cart</div>
      </a>
      
      <a href="orderlist.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red" >Order</div>
      </a>



	
    </div> 
 <c:set var="before" value="0"/>
 <c:set var="totalcount" value="0"/>
 <c:set var="totalprice" value="0"/>

<c:forEach var="cart" items="${list}">



<c:set var="present" value="${cart.cart_code}"/>
	
		<c:if test="${before != present}">
		
		<c:set var="totalcount" value="${totalcount + cart.cart_num}"/>
		
		
 	<input type="hidden" name="customer_code" id="customers_code" value="${cart.customer_code}"/>
	<input type="hidden" name="cartCode" value="${cart.cart_code}">
	
 <c:forEach var="p" items="${productlist}">
<c:if test="${cart.cafe_product_code == p.cafe_product_code}">
		
		 <c:set var="totalprice" value="${ totalprice +  (p.cafe_product_price*cart.cart_num)}"/>
    

    <div align="center" class="w3-container menu w3-white" style="display: block; margin-bottom: 30px; padding-left: 0px;padding-right: 0px;padding-bottom: 2em; ">
     <h1 style="background-color: #a95858;margin: 0px; padding:10px; color: white;"><b class="aaa"> ${p.cafe_product_name}	</b> </h1>
	      
     	<a href="orderview.cafe?productcode=${p.cafe_product_code}">
			<img src="../sale/upload/${p.cafe_product_img}" style="width:30%">
		</a>
	
	</c:if>
		</c:forEach>
		
		
     <br><br>
        <h3 class="aaa">수량 : <input type ="number" id="cartNum" name="cartNum" value="${cart.cart_num}"/></h3>
<br>
   		<input class="w3-button w3-xlarge w3-black aaa" type="button" value="수정" onclick="Modify(${cart.cart_code},${cart.customer_code})">
	    <input class="w3-button w3-xlarge w3-black aaa" type="button" value="삭제" onclick="del(${cart.cart_code},${cart.customer_code})"> 
   <br>
   
      <br>
   <c:if test="${cart.product_add_code == 0}">
		<br>
		<h3 class="aaa"> 옵션 추가사항 없음. </h3>
	
			
	</c:if>
		
      	
   <c:if test="${cart.product_add_code != 0}">
		
      	<c:forEach var="a" items="${addlist}">
	
	<c:if test="${cart.product_add_code == a.product_add_code}">
				
				 <c:set var="totalprice" value="${ totalprice + a.product_add_price}"/>
				
	<table style="text-align: center;">
	<tr>
		<td style="width: 200px;">
			<h3 class="aaa"> ${a.product_add_name} </h3>
		</td>
		<td style="width: 200px;">
			<h3 class="w3 w3-tag w3-dark-grey w3-round">${a.product_add_price} ₩</h3>
		</td>
	</tr>
	</table>
	</c:if>
</c:forEach>


</c:if>
		

	</c:if>
		<c:if test="${before == present}">	

		
		<c:if test="${cart.product_add_code != 0}">
		<c:forEach var="a" items="${addlist}">
	
	<c:if test="${cart.product_add_code == a.product_add_code}">
				
				
	<table style="text-align: center;">
	<tr>
		<td style="width: 200px;">
			<h3 class="aaa"> ${a.product_add_name} </h3>
		</td>
		<td style="width: 200px;">
			<h3 class="w3 w3-tag w3-dark-grey w3-round">${a.product_add_price} ₩</h3>
		</td>
	</tr>
	</table>
	
	<c:set var="totalprice" value="${ totalprice + a.product_add_price}"/>
	</c:if>
</c:forEach>

	</c:if>
	</c:if>
	

	<c:set var="before" value="${cart.cart_code}"/>

	
		
		
	
	</c:forEach>
	<br><br>
	<hr>
      

<h3 class="aaa">총 수량 : ${ totalcount } </h3>
<h3 class="aaa">총 가격 : ${ totalprice } </h3>

   	<br>



         <a class="w3-button w3-xlarge w3-black aaa" href="order.cafe?customer_code=${customer_code}&totalprice=${ totalprice }" onclick="cart()">주문하기</a>

	</div>


</div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-48 w3-xxlarge">
  <p style="font-size: x-large;">Copyright 2020.kosta team3<a href="../pos/main.cafe"> --- pos</a></p>

  </footer>











</body>
</html>
