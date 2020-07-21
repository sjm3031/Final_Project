<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>aaKartRider 매장관리시스템</title>
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="resources/css/styles.css" rel="stylesheet">
  </head>
  <body id="page-top">
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
      <a class="navbar-brand mr-1" href="index.do">Cafe Home</a>
      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fa fa-bars"></i>
      </button>
      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="검색어 입력" aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button" style="background-color: #212529 !important; border-color: #212529 !important;  ">
              <i class="fa fa-search"></i>
            </button>
          </div>
        </div>
      </form>
      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-plus fa-fw"></i>
          </a>
         <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addSaleModal"> <i class="fa fa-money"></i> 판매등록</a>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductModal"> <i class="fa fa-tag"></i> 상품등록</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductTypeModal"> <i class="fa fa-tags"></i> 상품타입 등록</a>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductVendorModal"> <i class="fa fa-user"></i> 거래처등록</a>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductBrandModal"> <i class="fa fa-industry"></i> 브랜드등록</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addExpenseAccountModal"> <i class="fa fa-dollar"></i> 지출등록</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-flash fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
            <a class="dropdown-item" href="products.do"> <i class="fa fa-tag"></i> 상품관리</a>
            <a class="dropdown-item" href="product-types.do"> <i class="fa fa-tags"></i> 제품 타입</a>
            <a class="dropdown-item" href="product-vendors.do"> <i class="fa fa-user"></i> 거래처</a>
            <a class="dropdown-item" href="product-brands.do"> <i class="fa fa-industry"></i> 제품 브랜드</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="revenue.do"> <i class="fa fa-money"></i> 수익</a>
            <a class="dropdown-item" href="improvements.do"> <i class="fa fa-rocket"></i> 월별현황</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="accounts.do"> <i class="fa fa-dollar"></i> 지출내역</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow ml-3">
          <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="badge badge-warning">9+</span>
            <i class="fa fa-fw fa-bell"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
            <a class="dropdown-item text-danger no-text-decorations" href="#"> <i class="fa fa-info-circle"></i> 오류</a>
            <a class="dropdown-item text-danger no-text-decorations" href="#"> <i class="fa fa-info-circle"></i> 오류</a>
            <a class="dropdown-item text-danger no-text-decorations" href="#"> <i class="fa fa-info-circle"></i> 오류</a>
            <a class="dropdown-item text-danger no-text-decorations" href="#"> <i class="fa fa-info-circle"></i> 오류</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="notifications.do">오류 더 보기</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow ml-3">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="profile.do"> <i class="fa fa-user"></i> 관리자 정보</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#"> <i class="fa fa-cog"></i> 설정</a>
            <a class="dropdown-item" href="history.do"> <i class="fa fa-line-chart"></i> 활동기록</a>
            <div class="dropdown-divider"></div>
         <!--    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"> <i class="fa fa-power-off"></i> 로그아웃</a> -->
            

            
            
          </div>
        </li>
      </ul>
    </nav>
    <div id="wrapper">
      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="admin.do">
            <i class="fa fa-fw fa-home"></i>
            <span>홈</span>
          </a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="cs/customer/list.cafe">
            <i class="fa fa-fw fa-users"></i>
            <span>고객관리</span>
          </a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-user"></i>
            <span>
              인사관리
              <i class="float-right fa fa-angle-down"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">직원</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductModal"> <i class="fa fa-plus"></i> 직원등록</a>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductVendorModal"> <i class="fa fa-user"></i> 직원조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">근태	</h6>
            <a class="dropdown-item" href="#"> <i class="fa fa-tags"></i> 근태일지 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">급여</h6>
            <a class="dropdown-item" href="#"> <i class="fa fa-tags"></i> 급여 조회</a>
          </div>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-table"></i>
            <span>
              제품관리
              <i class="float-right fa fa-angle-down"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">상품 타입</h6>
            <a class="dropdown-item" href="sale/productCategory/list.cafe"> <i class="fa fa-tags"></i> 상품 카테고리 조회</a>
            <a class="dropdown-item" href="sale/productAdd/list.cafe"> <i class="fa fa-tags"></i> 상품 옵션 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">판매 상품</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addCafeProductModal"> <i class="fa fa-plus"></i> 판매 상품 추가</a>
            <a class="dropdown-item" href="sale/product/list.cafe"> <i class="fa fa-tags"></i> 상품 조회</a>
          </div>
        </li>
        
         
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-line-chart"></i>
            <span>
              매출관리
              <i class="float-right fa fa-angle-down"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">매출</h6>
            <a class="dropdown-item" href="#"> <i class="fa fa-fw fa-bar-chart"></i> 판매 현황</a>
            <a class="dropdown-item" href="#"> <i class="fa fa-tags"></i> 뭘넣을까</a>
          </div>
        </li>
        
         <li class="nav-item dropdown">
          <a class="nav-link" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-folder"></i>
            <span>
              재고관리
              <i class="float-right fa fa-angle-down"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">거래처</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductModal"> <i class="fa fa-plus"></i> 거래처 등록</a>
            <a class="dropdown-item" href="products.do"> <i class="fa fa-industry"></i>거래처 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">원재료 품목</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductTypeModal"> <i class="fa fa-plus"></i> 재료 품목 추가</a>
            <a class="dropdown-item" href="product-types.do"> <i class="fa fa-tags"></i> 재료 품목 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">발주</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductVendorModal"><i class="fa fa-plus"></i> 발주 신청</a>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductBrandModal"> <i class="fa fa-fw fa-calendar"></i> 발주 조회</a>
          </div>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="payment-reports.do">
            <i class="fa fa-fw fa-money"></i>
            <span>회계/재무관리</span></a>
        </li>
        
        
        <li class="nav-item">
          <a class="nav-link" href="export-record.do">
            <i class="fa fa-fw fa-external-link"></i>
            <span>전문가 보고서</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="general-settings.do">
            <i class="fa fa-fw fa-cogs"></i>
            <span>설정</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="help.do">
            <i class="fa fa-fw fa-life-ring"></i>
            <span>도움말</span></a>
        </li>
      </ul>
      <div id="content-wrapper" style="padding: 2em;">
        <div class="container-fluid">
          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item" >
              <a href="index.do" style="color: #A95858 !important;">Home</a>
            </li>
            <li class="breadcrumb-item active">Overview</li>
          </ol>
          <!-- Icon Cards-->
          <div class="row" align="center" style="padding-top: 2em; padding-bottom: 2em;">
            <div class="col-md-6 col-sm-12 col-xs-12 mb-3">
              <div class="card text-white bg-primary o-hidden h-100" style="width:90%;">
                <div class="card-header">
                  <h1>매출 건수</h1>
                  <small class="float-left">최근 2주 동안</small>
                </div>
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fa fa-fw fa-money"></i>
                  </div>
                  <div class="card-text">
                    <h1 class="text-center display-3"><strong>db연결</strong></h1>
                  </div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="sales-count.do">
                  <span class="float-left">세부사항</span>
                  <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-md-6 col-sm-12 col-xs-12 mb-3">
              <div class="card text-white bg-danger o-hidden h-100" style="width:90%;">
                <div class="card-header">
                  <h1>베스트셀러? 최대 매출 품목?</h1>
                  <small class="float-left">설문, 데이터베이스 통계</small>
                </div>
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fa fa-fw fa-flash"></i>
                  </div>
                  <div class="card-text">
                    <h1 class="text-center display-3"><strong>db연결</strong></h1>
                  </div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="top-selling.do">
                  <span class="float-left">세부사항</span>
                  <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-md-6 col-sm-12 col-xs-12 mb-3">
              <div class="card text-white bg-dark o-hidden h-100" style="width:90%;">
                <div class="card-header">
                  <h1>판매상품</h1>
                  <small class="float-left">재고목록</small>
                </div>
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fa fa-fw fa-tags"></i>
                  </div>
                  <div class="card-text">
                    <h1 class="text-center display-3"><strong>db연결</strong></h1>
                  </div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="short-items.do">
                  <span class="float-left">세부사항</span>
                  <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-md-6 col-sm-12 col-xs-12 mb-3">
              <div class="card text-white bg-warning o-hidden h-100" style="width:90%;">
                <div class="card-header">
                  <h1>매출관리</h1>
                  <small class="float-left">월별정산</small>
                </div>
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fa fa-fw fa-shopping-cart"></i>
                  </div>
                  <div class="card-text">
                    <h1 class="text-center display-3"><strong>db연결</strong></h1>
                  </div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="improvements.do">
                  <span class="float-left">세부사항</span>
                  <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
          </div>
          <!-- Area Chart Example-->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fa fa-chart-area"></i>
              월별차트샘플()</div>
            <div class="card-body">
              <canvas id="myAreaChart" width="100%" height="30"></canvas>
            </div>
            <div class="card-footer small text-muted">db연결(마지막상품 업데이트 시간찍기)</div>
          </div>
        </div>
        <br><br><br>
        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto ">
              <br><br><br>
              <small class="text-muted">
                1.0버전을 사용중입니다. <a href="#"> <i class="fa fa-external-link"></i> 업데이트</a>를 확인하세요. 버그 제보 및 건의 <a href="https://github.com/vruqa/rc-pos/issues">here.</a>
                <br><br><br>
                <a href="#">Legal</a> | <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="#">Advertisements</a>
              </small>
              <br><br><br>
              <span>Copyright &copy; 2013-2020 <a href="#">Gasan Digital Complex, Inoplex.</a>, 2013 / <a href="https://vruqa.github.io">LYS Designs</a>, 2020 <a href="https://appzaib.github.io">Copyrights</a>. All rights reserved.</span>
              <br><br><br>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top" style="background: #212529 !important;  ">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Modals -->
    
    
    
    <!-- #addCafeProductModal -->
    <div class="modal fade" id="addCafeProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              판매 상품 등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="" action="sale/product/write.cafe" method="post" enctype="multipart/form-data">
            <div class="modal-body">
              <div class="form-group">
                <label>카테고리</label>
                <select class="form-control text-primary" name="product_category_code" id="product_category_code">
                  <option disabled selected><sub>제품 카테고리를 선택해주세요.</sub></option>
                  <c:forEach var="pcl" items="${productcategorylist}">

		    <option value="${ pcl.product_category_code }">${ pcl.product_category_name }</option>
		    
				</c:forEach>
              
                </select>
                <small class="float-right">찾는 카테고리가 없으신가요?<a href="#"data-toggle="modal" data-target="#addProductTypeModal">추가하기</a> </small>
              </div>
              <div class="form-group">
                <label for="">제품명</label>
                <input type="text" class="form-control" name="cafe_product_name" value="" placeholder="제품명 입력" required>
                <small class="text-muted">정확히 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label for="">제품 가격 <small class="text-muted">(개당 가격)</small> </label>
                <input type="number" class="form-control" name="cafe_product_price" value="" placeholder="단가를 입력해주세요" required>
              </div>
              <div class="form-group">
                <label for="">제품 이미지</label><br>
			<input type="file" name="cafe_product_img_upload">
			<input type="hidden" name="cafe_product_img"  value = ""/><br>
	          <small class="text-muted">재품 이미지를 정확히 입력해주세요.</small>
              </div>
       
              <small class="text-muted"><em>등록을 누르시기전에 한번 더 체크해주세요.</em></small>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="등록">
            </div>
          </form>
        </div>
      </div>
    </div>
   
   

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header bg-danger text-white">
            <h5 class="modal-title" id="exampleModalLabel">끝마치시겠습니까?</h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">세션 종료를 원하시면 아래 "로그아웃" 버튼을 눌러주세요</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
            <a class="btn btn-danger" href="userWeb/logout.cafe">로그아웃</a>
          </div>
        </div>
      </div>
    </div>
    
    
    
    <!-- Add Sale Modal-->
    <div class="modal fade" id="addSaleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-money"></i>
              판매등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="">
            <div class="modal-body">
              <div class="form-group">
                <label>제품 선택</label>
                <select class="form-control text-primary" required>
                  <option disabled selected><sub>이곳을 클릭해주세요.</sub></option>
                  <option disabled><sub>Null &amp; Null</sub></option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option disabled><sub>Null &amp; Null</sub></option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option disabled><sub>Null &amp; Null</sub></option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option disabled><sub>Null &amp; Null</sub></option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                </select>
                <small class="float-right">찾는 상품이 없으신가요? <a href="#" data-toggle="modal" data-target="#addProductModal">추가하기</a> </small>
              </div>
              <div class="form-group">
                <label for="">제품가</label>
                <input type="number" class="form-control" name="" value="" placeholder="가격 입력" required>
              </div>
              <div class="form-group">
                <label for="">설명 <small class="text-muted">(부가)</small></label>
                <textarea name="name" class="form-control" rows="8" cols="80" placeholder="부가설명을 입력해주세요."></textarea>
              </div>
              <small class="text-muted"><em>확인을 누르시기 전에 한번 더 체크해주세요</em></small>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="확인" >
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Add Product Modal-->
    <div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              상품등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="">
            <div class="modal-body">
              <div class="form-group">
                <label>제품 타입</label>
                <select class="form-control text-primary" required>
                  <option disabled selected><sub>제품 타입을 선택해주세요.</sub></option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null &amp; Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null & Null</option>
                  <option>Null</option>
                </select>
                <small class="float-right">찾는 제품타입이 없으신가요?<a href="#"data-toggle="modal" data-target="#addProductTypeModal">추가하기</a> </small>
              </div>
              <div class="form-group">
                <label>제품 브랜드</label>
                <select class="form-control text-primary" required>
                  <option disabled selected><sub>브랜드를 선택해주세요.</sub></option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                </select>
                <small class="float-right">찾는 브랜드가 없으신가요? <a href="#"data-toggle="modal" data-target="#addProductBrandModal">추가하기</a> </small>
              </div>
              <div class="form-group">
                <label>제품 거래처</label>
                <select class="form-control text-primary" required>
                  <option disabled selected><sub>거래처를 선택해주세요</sub></option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                  <option>Null</option>
                </select>
                <small class="float-right">찾는 거래처가 없으신가요? <a href="#"data-toggle="modal" data-target="#addProductVendorModal">추가하기</a> </small>
              </div>
              <div class="form-group">
                <label for="">제품명</label>
                <input type="text" class="form-control" name="" value="" placeholder="제품명 입력" required>
                <small class="text-muted">정확히 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label for="">제품 가격 <small class="text-muted">(개당 가격)</small> </label>
                <input type="number" class="form-control" name="" value="" placeholder="단가를 입력해주세요" required>
              </div>
              <div class="form-group">
                <label for="">제품 재고 <small>수량 입력</small> </label>
                <input type="number" class="form-control" name="" value="" placeholder="갯수를 입력해주세요." required>
                <small class="text-muted">재고의 수량을 정확히 입력해주세요.</small>
              </div>
              지불 방식
              <div class="form-check">
                <label class="form-check-label">
                  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                  매출에서 지불
                </label>
              </div>
              <div class="form-check">
                <label class="form-check-label">
                  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                  다른 방법으로 지불(자산관리에 포함되지 않음.)
                </label>
              </div>
              <br>
              <div class="form-group">
                <label for="">상세설명 <small class="text-muted">(부가설명)</small></label>
                <textarea name="name" class="form-control" cols="80" placeholder="이 제품에 대한 참고사항이나 부가설명을 입력해주세요"></textarea>
              </div>
              <small class="text-muted"><em>확인을 누르시기전에 한번 더 체크해주세요.</em></small>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="확인">
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Add Product Type-->
    <div class="modal fade" id="addProductTypeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tags"></i>
              제품 타입 추가
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="">
            <div class="modal-body">
              <div class="form-group">
                <label for="">제품 타입</label>
                <input type="text" class="form-control" name="" value="" placeholder="제품 타입 입력" required>
              </div>
              <div class="form-group">
                <label for="">상세설명 <small class="text-muted">(부가설명)</small></label>
                <textarea name="name" class="form-control" rows="8" cols="80" placeholder="이 제품에 대한 참고사항이나 부가설명을 입력해주세요"></textarea>
              </div>
              <small class="text-muted"><em>확인을 누르시기전에 한번 더 체크해주세요.</em></small>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="확인">
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Add Product Brand-->
    <div class="modal fade" id="addProductBrandModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-industry"></i>
              브랜드 추가
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="">
            <div class="modal-body">
              <div class="form-group">
                <label for="">제품 브랜드</label>
                <input type="text" class="form-control" name="" value="" placeholder="브랜드 명을 입력해주세요." required>
                
              </div>
              <div class="form-group">
                <label for="">상세설명 <small class="text-muted">(부가설명)</small></label>
                <textarea name="name" class="form-control" rows="8" cols="80" placeholder="이 브랜드에 대한 참고사항이나 부가설명을 입력해주세요."></textarea>
              </div>
              <small class="text-muted"><em>확인을 누르시기전에 한번 더 체크해주세요.</em></small>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="확인">
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Add Product Vendor -->
    <div class="modal fade" id="addProductVendorModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-user"></i>
              제품 거래처 추가
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="">
            <div class="modal-body">
              <div class="form-group">
                <label for="">거래처 명</label>
                <input type="text" class="form-control" name="" value="" placeholder="거래처 명을 입력해주세요." required>
              </div>
              <div class="form-group">
                <label for="">거래처 연락망</label>
                <input type="text" class="form-control" name="" value="" placeholder="거래처 연락망을 입력해주세요.">
              </div>
              <div class="form-group">
                <label for="">이메일 주소</label>
                <input type="email" class="form-control" name="" value="" placeholder="거래처 이메일 주소를 입력해주세요.">
              </div>
              <div class="form-group">
                <label for="">상세설명 <small class="text-muted">(부가설명)</small></label>
                <textarea name="name" class="form-control" rows="8" cols="80" placeholder="이 거래처에 대한 참고사항이나 부가설명을 입력해주세요."></textarea>
              </div>
              <small class="text-muted"><em>확인을 누르시기전에 한번 더 체크해주세요.</em></small>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="확인">
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Add Expense Account Modal -->
    <div class="modal fade" id="addExpenseAccountModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-dollar"></i>
              비용지출 등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="">
            <div class="modal-body">
              <div class="form-group">
                <label for="">지출목적</label>
                <input type="text" class="form-control" name="" value="" placeholder="지출목적을 입력해주세요." required>
                
              </div>
              <div class="form-group">
                <label for="">비용은 얼마나 들었습니까?</label>
                <input type="email" class="form-control" name="" value="" placeholder="지출된 비용을 입력해주세요.">
              </div>
              <div class="form-group">
                <label for="">상세설명 <small class="text-muted">(부가설명)</small></label>
                <textarea name="name" class="form-control" cols="80" placeholder="이 지출에 대한 참고사항이나 부가설명을 입력해주세요."></textarea>
              </div>
              
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="확인">
            </div>
          </form>
        </div>
      </div>
    </div>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/jquery.easing.min.js"></script>
    <script src="resources/js/chart.min.js"></script>
    <script src="resources/js/rc-pos.min.js"></script>
    <script src="resources/js/chart-area-demo.js"></script>
  </body>
</html>
