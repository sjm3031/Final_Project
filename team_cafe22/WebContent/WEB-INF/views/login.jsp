<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
   <title>Login V2</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<link rel="stylesheet" type="text/css" href="resources/css/myStyle.css">
 <link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
  <link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
   <link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
   <link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
   <link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
   <link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
      <link rel="stylesheet" type="text/css" href="resources/css/loginutil.css">
   <link rel="stylesheet" type="text/css" href="resources/css/loginmain.css">
<body>
   
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form">
               <span class="login100-form-title p-b-26">
               <img src="resources/images/icon1.png" alt="" ><em>Welcome</em>
               </span>
               <!-- <span class="login100-form-title p-b-48">
                  <i class="zmdi zmdi-font"></i>
               </span> -->
               
   
               <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                  <input class="input100" type="text" name="email">
                  <span class="focus-input100" data-placeholder="이메일"></span>
               </div>

               <div class="wrap-input100 validate-input" data-validate="Enter password">
                  <span class="btn-show-pass">
                     <i class="zmdi zmdi-eye"></i>
                  </span>
                  <input class="input100" type="password" name="pass">
                  <span class="focus-input100" data-placeholder="비밀번호"></span>
               </div>

               <div class="container-login100-form-btn">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <button class="login100-form-btn">
                        Login
                     </button>
                  </div>
               </div>

               <div class="text-center p-t-115">
                  <span class="txt1">
                  받아온 결과 ? ${ serverTime } <br>
                     계정이 없으신가요?
                  </span>

                  <a class="txt2" href="signUp.do">
                     <font color="skyblue">회원가입</font>
                  </a><br>
                  <a class="txt2" href="index.do"/>
                     <font color="pink">홈으로</font>
                  </a>
               </div>
            </form>
         </div>
      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
   
<!--===============================================================================================-->
   <script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="resources/vendor/bootstrap/js/popper.js"></script>
   <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
   <script src="resources/vendor/daterangepicker/moment.min.js"></script>
   <script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<!--    <script src="resources/js/main.js"></script> -->

</body>
</html>