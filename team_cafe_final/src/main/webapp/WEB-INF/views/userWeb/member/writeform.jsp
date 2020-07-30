<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 쓰기</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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


<script type="text/javascript">

	function getCustomerInfo(){
		var customerPhone = document.getElementById('customer_phone').value;
		$.ajax(
		         {
		            url: './customerInfo.cafe',
		            type: 'get',
		            data: {customerPhone : customerPhone},
		            dataType: "json",
		            success: function(data){
		           		if(data.customer_pwd == null){
   				        	alert(data.customer_stamp+" 개의 스탬프를 적립한 회원입니다. \n\n 계속해서 회원가입을 진행해 주세요.");
			            	document.getElementById('customer_stamp').value = data.customer_stamp;
			            }else{
			            	document.getElementById('customer_phone').value = "";
			            	alert("이미 가입한 회원입니다.");
				        }
		        	},
		            error: function(error){
		            document.getElementById('customer_stamp').value = 0;
		            alert("기존에 없는 고객입니다.");
		            }
		         }
		      );
	}


</script>
<script type="text/javascript">
function register(){
	
    if(! document.writeform.customer_phone.value == /^01[0179][0-9]{8}$/.test(document.writeform.customer_phone.value) || document.writeform.customer_phone.value==""){
       alert("전화번호를 형식에 맞춰 입력해 주세요.");
       return false;
    }else if(! document.writeform.customer_birth.value== /([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))/g.test(document.writeform.customer_birth.value) || document.writeform.customer_birth.value==""){
        alert("생년월일을 형식에 맞춰 입력해 주세요.");
        return false;
     }
}
</script>

<body>
   
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form"  name ="writeform" action="write.cafe" method="post" onsubmit="return register();">
               <span class="login100-form-title p-b-26 bbb">
               <img src="resources/images/icon1.png" alt="" ><b style="font-size: xx-large;">Register</b>
               </span>
               <!-- <span class="login100-form-title p-b-48">
                  <i class="zmdi zmdi-font"></i>
               </span> -->
               
   
               <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                  <input class="input100" type="text" name="customer_phone" id="customer_phone" placeholder="전화번호 : 01012341234" required="required">
                  <span class="focus-input100 aaa"></span>
               </div>
               
               <div>
               <button type="button" onclick="getCustomerInfo()">
               <span class="w3-right w3-tag w3-dark-grey w3-round">조회</span>
				</button>
				
               </div>

               <div class="wrap-input100 validate-input aaa" data-validate="Enter password">
                  <span class="btn-show-pass">
                     <i class="zmdi zmdi-eye"></i>
                  </span>
                  <input class="input100" type="password" name="customer_pwd" id="customer_pwd"  placeholder="비밀번호" required="required">
                  <span class="focus-input100 aaa" ></span>
               </div>
               
               <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                  <input class="input100" type="text" name="customer_name" id="customer_name"  placeholder="이름" required="required">
                  <span class="focus-input100 aaa" ></span>
               </div>
               
               <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                  <input class="input100" type="text" name="customer_birth" id="customer_birth"  placeholder="생년월일 : 20200722" required="required">
                  <span class="focus-input100 aaa"></span>
               </div>
               
               <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                  <input class="input100" type="text" name="customer_gender" id="customer_gender"  placeholder="성별 : f or m" required="required">
                  <span class="focus-input100 aaa"></span>
               </div>
               
               <div >
                  <input class="input100" type="hidden" name="customer_stamp" readonly="readonly" id="customer_stamp">
               </div>
               
               

               <div class="container-login100-form-btn">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <input type="submit"  class="login100-form-btn aaa" style="background-color: #a95858;" value="REGISTER">
  
                     
                  </div>
               </div>

               <div class="text-center p-t-115">
                  <span class="txt1 aaa">
<br>
                     계정이 있으신가요?
                  </span>

                  <a class="txt2 aaa" href="login.cafe">
                     <font color="blue">로그인</font>
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