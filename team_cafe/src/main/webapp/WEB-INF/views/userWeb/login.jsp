<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="UTF-8">
<head>
   <title>Login V2</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<link rel="stylesheet" type="text/css" href="../resources/css/myStyle.css">
 <link rel="stylesheet" type="text/css" href="../resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" type="text/css" href="../resources/fonts/iconic/css/material-design-iconic-font.min.css">
  <link rel="stylesheet" type="text/css" href="../resources/vendor/animate/animate.css">
   <link rel="stylesheet" type="text/css" href="../resources/vendor/css-hamburgers/hamburgers.min.css">
   <link rel="stylesheet" type="text/css" href="../resources/vendor/animsition/css/animsition.min.css">
   <link rel="stylesheet" type="text/css" href="../resources/vendor/select2/select2.min.css">
   <link rel="stylesheet" type="text/css" href="../resources/vendor/daterangepicker/daterangepicker.css">
      <link rel="stylesheet" type="text/css" href="../resources/css/loginutil.css">
   <link rel="stylesheet" type="text/css" href="../resources/css/loginmain.css">
   
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
   
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form"  action="loginCheck.cafe" method="POST">
               <span class="login100-form-title p-b-26 bbb">
               <img src="resources/images/icon1.png" alt="" ><b style="font-size: xx-large;">Welcome</b>
               </span>
               <!-- <span class="login100-form-title p-b-48">
                  <i class="zmdi zmdi-font"></i>
               </span> -->
               
   
               <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                  <input class="input100" type="text" name="customer_phone" placeholder="전화번호 : 010-1234-1234" required="required" >
                  <span class="focus-input100 aaa" 																></span>
               </div>

               <div class="wrap-input100 validate-input aaa" data-validate="Enter password">
                  <span class="btn-show-pass">
                     <i class="zmdi zmdi-eye"></i>
                  </span>
                  <input class="input100" type="password" name="customer_pwd"  placeholder="비밀번호" required="required" >
                  <span class="focus-input100 aaa"></span>
               </div>

               <div class="container-login100-form-btn">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <input type="submit"  class="login100-form-btn aaa" style="background-color: #a95858;" value="Login">
  
                     
                  </div>
               </div>

               <div class="text-center p-t-115">
                  <span class="txt1 aaa">
<br>
                     계정이 없으신가요?
                  </span>

                  <a class="txt2 aaa" href="memberwriteform.cafe">
                     <font color="blue">회원가입</font>
                  </a><br>
                  <a class="txt2 aaa" href="home.cafe"/>
                     <font color="red">홈으로</font>
                  </a>
               </div>
            </form>
         </div>

      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
   
<!--===============================================================================================-->
   <script src="../resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="../resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="../resources/vendor/bootstrap/js/popper.js"></script>
   <script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="../resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
   <script src="../resources/vendor/daterangepicker/moment.min.js"></script>
   <script src="../resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="../resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<!--    <script src="resources/js/main.js"></script> -->

</body>
</html>