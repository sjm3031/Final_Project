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
</style>

<script type="text/javascript">
	function cart(){
	    var cartForm = document.cartForm;

	    var customer_code = cartForm.customer_code.value;

	    if(customer_code == ""){
	    	alert("로그인 해주세요~")
	    	document.location.href="login.cafe"
	    }else{
	    	cartForm.submit();
	    }
	}

</script>



<body>


<!-- Navbar (sit on top) -->
<div class="w3-top w3-hide-small">
  <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
    <a href="home.cafe" class="w3-bar-item w3-button">HOME</a>
    <a href="#menu" class="w3-bar-item w3-button">MENU</a>

    
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
  
      <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">ORDER</h1>
    <div class="w3-row w3-center w3-border w3-border-dark-grey">

	
	<a href="" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red aaa" style="background-color: #a95858 !important; width: 100% !important;">${vo.cafe_product_name}</div>
      </a>


	
    </div> 
    
    <form name="cartForm" action="cart.cafe" method="post">	

	
	<input type="hidden" name="customer_code" value="${sessionScope.USERCODE}"/>
	
	<input type="hidden" name="cafe_product_code" value="${vo.cafe_product_code}"/>
    
    <div align="center" class="w3-container menu w3-padding-32 w3-white" style="display: block; margin-bottom: 60px; ">
     <img src="../sale/upload/${vo.cafe_product_img}" style="width:50%">
	
     <br><br><fmt:formatNumber value="${ vo.cafe_product_price }" var="cafe_product_price" pattern="#,###" />
      <h1> <span class="w3-right w3-tag w3-dark-grey w3-round">${cafe_product_price} ₩</span></h1>
      <br>
      	<c:forEach var="d" items="${dlist}">
	
	<table style="text-align: center;">
	<tr>
		<td style="width: 200px;">
			<h3 class="aaa"><input type="checkbox" name="productAdd" value="${d.product_add_code}">  ${d.product_add_name} </h3>
		</td>
		<td style="width: 200px;">
			<h3 class="w3 w3-tag w3-dark-grey w3-round">${d.product_add_price} ₩</h3>
		</td>
	</tr>
	</table>
		
	
	</c:forEach>
	<br><br>
      
   <h3 class="aaa">수량  : <input type="number" name="cart_num"  value="0"/></h3>

   
   	<br>



         <a class="w3-button w3-xlarge w3-black aaa" onclick="cart()">장바구니 담기</a>

	</div>
	</form>

</div>
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-48 w3-xxlarge">
  <p style="font-size: x-large;">Copyright 2020.kosta team3<a href="../pos/main.cafe"> --- pos</a></p>

  </footer>

</body>
</html>
