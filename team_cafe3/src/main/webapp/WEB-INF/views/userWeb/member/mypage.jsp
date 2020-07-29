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

<script type="text/javascript">
	function login(){
		alert("로그인 해주세요~")
		document.location.href="login.cafe"
	}

</script>


<body>

<!-- Navbar (sit on top) -->
<div class="w3-top w3-hide-small">
  <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
    <a href="home.cafe" class="w3-bar-item w3-button">HOME</a>
    <a href="#menu" class="w3-bar-item w3-button">MENU</a>

    
    <c:if test="${sessionScope.USERCODE != null}">
    <a href="mypage.cafe?customer_code=${sessionScope.USERCODE}" class="w3-bar-item w3-button">MY PAGE</a>
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
  
      <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">MY PAGE</h1>
    <div class="w3-row w3-center w3-border w3-border-dark-grey">
	
	<a href="mypage.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red" style="background-color: #a95858 !important;">My Page</div>
      </a>
      
      <a href="cartlist.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red" >Cart</div>
      </a>
      
      <a href="orderlist.cafe?customer_code=${sessionScope.USERCODE}" >
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red" >Order</div>
      </a>

    </div> 
    
    
     <!-- Profile -->
      <div class="w3-card w3-round w3-white">
        <div class="w3-container">
<c:choose>
        
	<c:when test="${ 'f' eq dto.customer_gender }">   
         
         <p class="w3-center"><img src="https://www.w3schools.com/w3images/avatar6.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
     </c:when>
    <c:otherwise>
    
      <p class="w3-center"><img src="https://www.w3schools.com/w3images/avatar2.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
    
    </c:otherwise>
           
</c:choose>
         <hr>
         <h1 class="w3-center">${ dto.customer_name }</h1> 
 
         <p class="aaa" style="font-size: large;">전화번호 : ${ dto.customer_phone }</p>
         <p class="aaa" style="font-size: large;">생년월일 : ${ dto.customer_birth }</p>
         
       <div >
      <br>
          <p class="aaa" style="font-size: x-large; margin-bottom: 0px;" >스탬프 적립 현황 : ${dto.customer_stamp }</p>
          <hr>
        </div>
        <!--스탬프 현황판-->
      	<div align="center" class="stamp_status" style="float: left; margin-bottom: 30px;">
      	<c:forEach var="index" begin="1" end="10">
  		
  		<c:if test="${dto.customer_stamp+0 >= index+0}">
      		<img src="../resources/images/stamp.png" alt="스탬프 없음" style="width: 150px; margin: 10px;">	
      	</c:if>
      
      	<c:if test="${dto.customer_stamp+0 < index+0}">
      		<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 10px;">
      	</c:if> 
      	
      	</c:forEach>
<!--         	 <img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
					<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
				<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
				<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
				<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
				<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
				<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
				<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
				<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">
				<img src="../resources/images/heart.png" alt="스탬프 없음" style="width: 150px; margin: 15px;">						
 -->

        </div>
        </div>
      </div>
      <br>



</div>


<!-- Footer -->
<footer class="w3-center w3-black w3-padding-48 w3-xxlarge">
  <p style="font-size: x-large;">Copyright 2020.kosta team3<a href="../pos/main.cafe"> --- pos</a></p>

  </footer>











</body>
</html>
