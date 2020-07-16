<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>KartRider 매장관리시스템</title>
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="resources/css/styles.css" rel="stylesheet">
  </head>
  <body class="bg-dark">
      <div class="container">
        <div class="card card-login mx-auto mt-5">
          <div class="card-header bg-primary text-white">비밀번호 초기화</div>
          <div class="card-body">
            <div class="text-center mb-4">
              <h4>비밀번호를 잊으셨나요?</h4>
              <p>이메일을 입력해주시면 비밀번호 초기화 절차를 발송해드립니다.</p>
            </div>
            <form>
              <div class="form-group">
                <div class="form-label-group">
                  <input type="email" id="inputEmail" class="form-control" placeholder="Enter email address" required="required" autofocus="autofocus">
                  <label for="inputEmail">이메일을 입력하세요.</label>
                </div>
              </div>
              <a class="btn btn-primary btn-block" href="login.do">비밀번호 초기화</a>
            </form>
            <hr>
            <div class="text-center">
              <br>
              <a class="d-block small" href="login.do">로그인 페이지로 가기 </a>
              <br>
              OR
              <a class="d-block small mt-3" href="https://github.com/vruqa/rc-pos"> 문의하기</a>
            </div>
          </div>
        </div>
      </div>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/jquery.easing.min.js"></script>
  </body>
</html>
