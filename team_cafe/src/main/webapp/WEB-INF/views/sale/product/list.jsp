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
    <link href="../../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../../resources/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="../../resources/css/styles.css" rel="stylesheet">
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
        
        <li class="nav-item">
          <a class="nav-link" href="retail-dashboard.do">
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
        
        <li class="nav-item dropdown active">
          <a class="nav-link" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-table"></i>
            <span>
              제품관리
              <i class="float-right fa fa-angle-down"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">상품 타입</h6>
            <a class="dropdown-item" href="#"> <i class="fa fa-tags"></i> 상품 카테고리 조회</a>
            <a class="dropdown-item" href="#"> <i class="fa fa-tags"></i> 상품 옵션 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">판매 상품</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addProductTypeModal"> <i class="fa fa-plus"></i> 판매 상품 추가</a>
            <a class="dropdown-item" href="#"> <i class="fa fa-tags"></i> 상품 조회</a>
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
      <div id="content-wrapper" style="margin: 2em;">	
          <div class="container-fluid">
            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
              <li class="breadcrumb-item">
                <a href="index.do" style="color: #A95858 !important;">제품관리</a>
              </li>
              <li class="breadcrumb-item active">판매상품</li>
            </ol>
            <!-- Page Content -->
            <!-- DataTables Example -->
            <div class="card mb-3">
              <div class="card-header bg-primary text-white" style="background-color:#787878  !important;">
                <i class="fa fa-table"></i>
               판매 상품
                <a href="#" class="text-white" data-toggle="modal" data-target="#addCafeProductModal">
                  <span class="float-right">
                    <i class="fa fa-plus"></i>
                    판매 상품 등록
                  </span>
                </a>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th>번호</th>
                        <th>카테고리</th>
                        <th>이미지</th>
                        <th>상품명</th>
                        <th>가격</th>
                        <th></th>
                      </tr>
                    </thead>
                    
                   
          <c:forEach var="b" items="${list}">
          
                      <tr>
                        <td>${b.cafe_product_code}</td>
                        <td>${b.product_category_name}</td>
                        <td><img src="../upload/${b.cafe_product_img}" style="width:150px;"></td>
                        <td>${b.cafe_product_name}</td>
						<td>${b.cafe_product_price}</td>
                        <td><input type="button" value="수정" onclick="location.href='updateform.cafe?num=${b.cafe_product_code}&pg=${pg}'" /></td>
                      </tr>
                      
                    
                      
            </c:forEach>   
                  
                   
                  </table>
                  
  
		
		
		
                  <div class="row">
	                  <div class="col-sm-12 col-md-5">
		                  <div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">
		              
		                  </div>
	                  </div>
	                  <div class="col-sm-12 col-md-7">
		                  <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
			                  <ul class="pagination">
			                  
			                  		<c:if test="${pg>1}">  <!-- 5>10 : false / 15>10 : true -->
										<li class="paginate_button page-item previous disabled" id="dataTable_previous">
								           <a href="list.cafe?pg=${pg-1}" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">
					              	  		  Previous
					                	  </a>
					             	    </li>
									</c:if>
									<c:if test="${pg<=1}"> <!-- 5<=10 :true / 15<=10:false -->
										<li class="paginate_button page-item previous disabled" id="dataTable_previous">
						                  <a aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">
						              	    Previous
						                  </a>
					  	               </li>
									</c:if>          
					          <c:forEach begin="${fromPage}" end="${toPage}" var="i">
								<c:if test="${i==pg}">
					                 <li class="paginate_button page-item active">      
					                  <a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">
					              	    ${i}
					                  </a>
					                 </li>
					            </c:if>
					            <c:if test="${i!=pg}">
		            				  <li class="paginate_button page-item ">
		            				  	<a href="list.cafe?pg=${i}" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">
					             		    ${i}
					        	         </a>
					                 </li>
					    	       </c:if>
					           </c:forEach>
					                 
					                	       
					       <c:if test="${pg<allPage}"> 
					           <li class="paginate_button page-item next disabled" id="dataTable_next">
					                  <a href="list.cafe?pg=${pg+1}" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">
					                  	Next
					                  </a>
				                  </li>
				            </c:if>      
				            
				             <c:if test="${pg>=allPage}"> 
					           <li class="paginate_button page-item next disabled" id="dataTable_next">
					                  <a aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">
					                  	Next
					                  </a>
				                  </li>
				            </c:if>    
				            
				 
				                  
				                  
				                  
				                  
			                  </ul>
		                  </div>
	                  </div>
                  </div>
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
    
    
    
    
      <script src="../../resources/js/jquery.min.js"></script>
      <script src="../../resources/js/bootstrap.bundle.min.js"></script>
      <script src="../../resources/js/jquery.easing.min.js"></script>
      <script src="../../resources/js/rc-pos.min.js"></script>
    </body>
  </html>
