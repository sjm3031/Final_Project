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
    <style type="text/css">
    	.label {
    	 display: inline !important;
    	 position: relative;
    	}
    	.gender {
    		display: inline;
    		position: relative;
    		top: 12px;
    		width: 8%;
    	}
    	
    	.gender a {
    		display: inline !important;
    		position: relative;
    		top: 12px;
    		width: 8%;
    	}
    	.stamp {
	    	width: 100%;
   			margin: 12px 0 8px;
    	}
    	.customGen {
    		/* height: 10px !important */
    		/* padding: -50px; */
    		/* width: 100%; */
   			margin: -20px 0 8px; 
   			bottom: -30px;
   			text-align:left;
    	}
    </style>
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
        
        <li class="nav-item active">
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
      <div id="content-wrapper" style="padding: 2em;">	
          <div class="container-fluid">
            <!-- Breadcrumbs-->
            
            <!-- 
            <ol class="breadcrumb">
              <li class="breadcrumb-item">
                <a href="index.do" style="color: #A95858 !important;">제품관리</a>
              </li>
              <li class="breadcrumb-item active">판매상품</li>
            </ol>
             -->
            
            
            <!-- Page Content -->
            <!-- DataTables Example -->
            <div class="card mb-3">
              <div class="card-header bg-primary text-white" style="background-color:#787878  !important;">
                <i class="fa fa-table"></i>
               고객 리스트
                <a href="#" class="text-white" data-toggle="modal" data-target="#addCafeCustomerModal">
                  <span class="float-right">
                    <i class="fa fa-plus"></i>
                   신규 고객 등록
                  </span>
                </a>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th>고객코드</th>
                        <th>고객명</th>
                        <th>고객 전화번호</th>
                        <th>고객 생년월일</th>
                        <th>고객 성별</th>
                        <th>고객 스템프 수</th>
                        <th>고객 비밀번호</th>
                        <th bgcolor=''></th>
                      </tr>
                    </thead>
                    
                   
          <c:forEach var="b" items="${list}">
          
                      <tr>
                        <td>${b.customer_code}</td>
                        <td>${b.customer_name}</td>
                        <td>${b.customer_phone}</td>
                        <td>${b.customer_birth}</td>
                        <td>${b.customer_gender}</td>
                        <td>${b.customer_stamp}</td>
						<td>${b.customer_pwd}</td>
                        <td><input type="button" value="수정" onclick="location.href='updateform.cafe?customer_code=${b.customer_code}&pg=${pg}'" /></td>
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
           <!--    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div> -->
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
       <!-- #addCafeCustomerModal -->
    <div class="modal fade" id="addCafeCustomerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              신규 고객 등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="" action="write.cafe" method="post" enctype="multipart/form-data">
            <div class="modal-body">
      
              <div class="form-group">
                <label for="">고객명</label>
                <input type="text" class="form-control" name="customer_name" value="" placeholder="고객명을 입력해주세요." required>
                <small class="text-muted">정확히 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label for="">고객 전화번호</label>
                <input type="number" class="form-control" name="customer_phone" value="" placeholder="전화번호를 입력해주세요." required>
              </div>
              
                 <div class="form-group">
                <label for="">고객 생년월일</label>
                <input type="number" class="form-control" name="customer_birth" value="" placeholder="생년월일을 입력해주세요." required>
              </div>
        
        
           <div class="form-group">
             <label for="">고객 성별</label><br>
               
             <div style=" float: left; width: 30%;" class="customGen">
             <label for="" class="label">남
			<input type="radio" class="form-control gender" name="customer_gender" value="m" checked required/></div>
			</label>
			<div style=" float: left; width: 30%;" class="customGen">
			<label for="" class="label">여
		    <input type="radio" class="form-control gender" name="customer_gender"  value="f" required/></div>
		    </label>
              </div>
            
              
              <div class="form-group" >
                <label for="" class="stamp">고객 스템프수</label>
                <input type="number" class="form-control" name="customer_stamp" value="" placeholder="스템프수를 입력해주세요." required>
              </div>
              
                <div class="form-group">
                <label for="">고객 비밀번호</label>
                <input type="number" class="form-control" name="customer_pwd" value="" placeholder="비밀번호를 입력해주세요." required>
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
