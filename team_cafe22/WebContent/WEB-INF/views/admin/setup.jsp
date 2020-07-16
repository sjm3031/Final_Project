<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
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
      <div class="card card-register mx-auto mt-5">
        <div class="card-header bg-primary text-white">정보입력</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="hostName" class="form-control" placeholder="Enter hostname here" required="required" autofocus="autofocus">
                    <label for="hostName">관리자 명</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="dbName" class="form-control" placeholder="Enter database name" required="required">
                    <label for="dbName">데이터베이스 명</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="dbUser" class="form-control" placeholder="Enter name of your Database User" required="required" autofocus="autofocus">
                    <label for="dbUser">데이터베이스 사용자 명</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="dbPassword" class="form-control" placeholder="Enter username" required="required">
                    <label for="dbPassword">데이터베이스 비밀번호</label>
                  </div>
                </div>
              </div>
            </div>
            <hr>
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="storeName" class="form-control" placeholder="Enter your store name" required="required">
                <label for="storeName">사업장 명</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="fullName" class="form-control" placeholder="Your name" required="required" autofocus="autofocus">
                    <label for="fullName">사용자 풀네임</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="username" class="form-control" placeholder="Enter your username" required="required">
                    <label for="username">사용자 명</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                    <label for="inputPassword">비밀번호</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                    <label for="confirmPassword">비밀번호 확인</label>
                  </div>
                </div>
              </div>
            </div>
            <input type="submit" class="btn btn-primary btn-block" href="" value="Install">
          </form>
          <div class="text-center">
            <br>
            무엇을 해야할 지 모르시나요? <a class="d-block small" href="https://github.com/vruqa/rc-pos/"> 문의하기</a>
          </div>
        </div>
      </div>
    </div>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/jquery.easing.min.js"></script>
 </body>
</html>
