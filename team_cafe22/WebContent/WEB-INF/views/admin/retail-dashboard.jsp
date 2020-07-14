<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
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
            <button class="btn btn-primary" type="button">
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
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"> <i class="fa fa-power-off"></i> 로그아웃</a>
          </div>
        </li>
      </ul>
    </nav>
    <div id="wrapper">
      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="admin.do">
            <i class="fa fa-fw fa-home"></i>
            <span>홈</span>
          </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="retail-dashboard.do">
            <i class="fa fa-fw fa-line-chart"></i>
            <span>매출</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="sales-reports.do">
            <i class="fa fa-fw fa-bar-chart"></i>
            <span>판매현황</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="inventory-reports.do">
            <i class="fa fa-fw fa-tags"></i>
            <span>재고관리</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="payment-reports.do">
            <i class="fa fa-fw fa-money"></i>
            <span>재정관리</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="sales.do">
            <i class="fa fa-fw fa-table"></i>
            <span>수불관리</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="" data-toggle="modal" data-target="#addSaleModal">
            <i class="fa fa-fw fa-plus"></i>
            <span>판매등록</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="" data-toggle="modal" data-target="#addProductModal">
            <i class="fa fa-fw fa-tags"></i>
            <span>상품등록</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="product-brands.do">
            <i class="fa fa-fw fa-industry"></i>
            <span>제품 브랜드</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="product-vendors.do">
            <i class="fa fa-fw fa-users"></i>
            <span>거래처</span></a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-folder"></i>
            <span>
              제품관리
              <i class="float-right fa fa-angle-down"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">재고</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductModal"> <i class="fa fa-plus"></i> 상품추가</a>
            <a class="dropdown-item" href="products.do"> <i class="fa fa-tags"></i> 모든 상품보기</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">상품 타입 추가</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductTypeModal"> <i class="fa fa-plus"></i> 상품 타입 추가</a>
            <a class="dropdown-item" href="product-types.do"> <i class="fa fa-tags"></i> 상품 타입</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">거래처 &amp; 브랜드</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductVendorModal"> <i class="fa fa-user"></i> 거래처 등록</a>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductBrandModal"> <i class="fa fa-industry"></i> 브랜드 등록</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="history.do">
            <i class="fa fa-fw fa-calendar"></i>
            <span>기록</span></a>
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
      <div id="content-wrapper">
        <div class="container-fluid">
          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="admin.do">Home</a>
            </li>
            <li class="breadcrumb-item active">Retails-Dashboard</li>
          </ol>
          <!-- Icon Cards-->
          <div class="row">
            <div class="col-xl-6 col-sm-12 mb-3">
              <div class="card o-hidden h-100">
                <div class="card-header bg-primary text-white">
                  <h1>총 매출</h1>
                </div>
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fa fa-fw fa-money text-white"></i>
                  </div>
                  <div class="card-text text-center">
                    <span class="display-3"><strong>db연결</strong>k</span>
                    <small class="text-danger"> <strong>?% db연결<i class="fa fa-arrow-down"></i> </strong></small>
                  </div>
                </div>
                <a class="card-footer clearfix small z-1" href="revenue.do">
                  <span class="float-left">세부사항</span>
                  <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                  </span>
                </a>
              </div>
              </div>
              <div class="col-xl-6 col-sm-12 mb-3">
                <div class="card o-hidden h-100">
                  <div class="card-header bg-warning text-white">
                    <h1>판매수량</h1>
                  </div>
                  <div class="card-body">
                    <div class="card-body-icon text-white">
                      <i class="fa fa-fw fa-flash"></i>
                    </div>
                    <div class="card-text text-center">
                      <span class="display-3"><strong>db연결</strong></span>
                      <small class="text-primary"> <strong>?% db연결<i class="fa fa-arrow-up"></i> </strong></small>
                    </div>
                  </div>
                  <a class="card-footer clearfix small z-1" href="sales-count.do">
                    <span class="float-left">세부사항</span>
                    <span class="float-right">
                      <i class="fa fa-angle-right"></i>
                    </span>
                  </a>
                </div>
                </div>
                  </div>
                  <div class="row">
                    <div class="col-xl-6 col-sm-12 mb-3">
                      <div class="card o-hidden h-100">
                        <div class="card-header bg-primary text-white">
                          <h1>매출 총이익</h1>
                        </div>
                        <div class="card-body">
                          <div class="card-body-icon text-white">
                            <i class="fa fa-fw fa-shopping-cart"></i>
                          </div>
                          <div class="card-text text-center">
                            <span class="display-3"><strong>db연결</strong>k</span>
                            <small class="text-danger"> <strong>?% db연결<i class="fa fa-arrow-down"></i> </strong></small>
                          </div>
                        </div>
                        <a class="card-footer clearfix small z-1" href="gross-profit.do">
                          <span class="float-left">세부사항</span>
                          <span class="float-right">
                            <i class="fa fa-angle-right"></i>
                          </span>
                        </a>
                      </div>
                      </div>
                    <div class="col-xl-6 col-sm-12 mb-3">
                      <div class="card o-hidden h-100">
                        <div class="card-header bg-dark text-white">
                          <h1>지출내역</h1>
                        </div>
                        <div class="card-body">
                          <div class="card-body-icon text-white">
                            <i class="fa fa-fw fa-dollar"></i>
                          </div>
                          <div class="card-text text-center">
                            <span class="display-3"><strong>db연결</strong>k</span>
                            <small class="text-primary"> <strong>?% db연결<i class="fa fa-arrow-up"></i> </strong></small>
                          </div>
                        </div>
                        <a class="card-footer clearfix small z-1" href="accounts.do">
                          <span class="float-left">세부사항</span>
                          <span class="float-right">
                            <i class="fa fa-angle-right"></i>
                          </span>
                        </a>
                      </div>
                      </div>
                          </div>
          <!-- DataTables Example -->
          <div class="card mb-3">
            <div class="card-header bg-primary text-white">
              <i class="fa fa-table"></i>
              판매기록
              <a href="#" class="text-white" data-toggle="modal" data-target="#addSaleModal">
                <span class="float-right">
                  <i class="fa fa-plus"></i>
                  판매기록 추가
                </span>
              </a>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>송장번호</th>
                      <th>제품</th>
                      <th>재고</th>
                      <th>가격</th>
                      <th>날짜</th>
                      <th>이익</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>송장번호</th>
                      <th>제품</th>
                      <th>재고</th>
                      <th>가격</th>
                      <th>날짜</th>
                      <th>이익</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr>
                    <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr> <tr>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-danger">Null</td>
                      <td>Null</td>
                      <td>Null</td>
                      <td class="text-primary">Null</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
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
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Modals -->
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
            <a class="btn btn-danger" href="login.do">로그아웃</a>
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
              <input type="submit" class="btn btn-primary" value="확인">
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

    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/jquery.easing.min.js"></script>
    <script src="resources/js/chart.min.js"></script>
    <script src="resources/js/jquery.dataTables.js"></script>
    <script src="resources/js/dataTables.bootstrap4.js"></script>
    <script src="resources/js/rc-pos.min.js"></script>
    <script src="resources/js/datatables-demo.js"></script>
    <script src="resources/js/chart-area-demo.js"></script>
  </body>
</html>
