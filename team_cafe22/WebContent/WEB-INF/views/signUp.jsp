<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->   
   <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="resources/css/loginutil.css">
   <link rel="stylesheet" type="text/css" href="resources/css/loginmain.css">
<!--===============================================================================================-->
<body>
<div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form">
               <span class="login100-form-title p-b-26">
               Sign Up
               </span>
               <!-- <span class="login100-form-title p-b-48">
                  <i class="zmdi zmdi-font"></i>
               </span> -->
               
               <div class="wrap-input100 validate-input">
                  <input class="input100" type="text" name="name">
                  <span class="focus-input100" data-placeholder="성함"></span>
               </div>
               
               <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                  <input class="input100" type="text" name="email">
                  <span class="focus-input100" data-placeholder="이메일"></span>
               </div>

               <div class="wrap-input100 validate-input" data-validate="password">
                  <span class="btn-show-pass">
                     <i class="zmdi zmdi-eye"></i>
                  </span>
                  <input class="input100" type="password" name="passset">
                  <span class="focus-input100" data-placeholder="비밀번호"></span>
               </div>
               
               <div class="wrap-input100 validate-input" data-validate="again">
                  <span class="btn-show-pass">
                     <i class="zmdi zmdi-eye"></i>
                  </span>
                  <input class="input100" type="password" name="passcheck">
                  <span class="focus-input100" data-placeholder="비밀번호 확인"></span>
               </div>
               
               <div class="wrap-input100 validate-input">
                  <input class="input100" type="text" name="phone">
                  <span class="focus-input100" data-placeholder="연락처"></span>
               </div>
               
               <div class="wrap-input100 validate-input" data-validdate = "Valid birth is: abcdef">
                  <input class="input100" type="text" name="birth">
                  <span class="focus-input100" data-placeholder="출생연도"></span>
               </div>
               
               <div class="wrap-input100 validate-input">
                  <input class="input100" type="text" name="gender">
                  <span class="focus-input100" data-placeholder="성별"></span>
               </div>

               <div class="container-login100-form-btn">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <button class="login100-form-btn">
                        회원가입 완료
                     </button>
                  </div>
               </div><br><br>
               <div align="center">
               <a class="txt2" href="login.do">로그인<br>
               <a class="txt2" href="#">아이디 찾기&nbsp;&nbsp;&nbsp;&nbsp;<a class="txt2" href="#">비밀번호 찾기
                  <br><a class="txt2" href="index.do">
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
  

</body>
</html>