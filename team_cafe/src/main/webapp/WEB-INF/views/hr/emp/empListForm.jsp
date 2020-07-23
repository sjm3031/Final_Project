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
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addEmpModal"> <i class="fa fa-plus"></i> 직원등록</a>
            <a class="dropdown-item" href="list.cafe"> <i class="fa fa-user"></i> 직원조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">직급</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addJobModal"> <i class="fa fa-plus"></i> 직급등록</a>
            <a class="dropdown-item" href="../job/list.cafe"> <i class="fa fa-tags"></i> 직급 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">근태	</h6>
            <a class="dropdown-item" href="../emptna/list.cafe"> <i class="fa fa-tags"></i> 근태일지 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">급여</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addSalaryModal"> <i class="fa fa-plus"></i> 급여정산</a>
            <a class="dropdown-item" href="../salary/list.cafe"> <i class="fa fa-tags"></i> 급여 조회</a>
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
            <a class="dropdown-item" href="../productCategory/list.cafe"> <i class="fa fa-tags"></i> 상품 카테고리 조회</a>
            <a class="dropdown-item" href="../productAdd/list.cafe"> <i class="fa fa-tags"></i> 상품 옵션 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">판매 상품</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addCafeProductModal"> <i class="fa fa-plus"></i> 판매 상품 추가</a>
            <a class="dropdown-item" href="../product/list.cafe"> <i class="fa fa-tags"></i> 상품 조회</a>
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
              <li class="breadcrumb-item">
                <a href="index.do" style="color: #A95858 !important;">직원</a>
              </li>
              <li class="breadcrumb-item active">직원조회</li>
            </ol>
            <!-- Page Content -->
            <!-- DataTables Example -->
            <div class="card mb-3">
              <div class="card-header bg-primary text-white" style="background-color:#787878  !important;">
                <i class="fa fa-table"></i>
               직원리스트
                
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th>직원코드</th>
						<th>이름</th>
						<th>주민번호</th>
						<th>핸드폰번호</th>
						<th>주소</th>
						<th>입사날짜</th>
						<th>퇴사날짜</th>
						<th>퇴사여부</th>
						<th>은행</th>
						<th>계좌번호</th>
						<th>직급</th>
                        <th></th>
                        <th></th>
                      </tr>
                    </thead>
                    
                   
          <c:forEach var="emp" items="${list}">
          
                      <tr>
						<td>${emp.employee_code}</td>
						<td><a href="read.cafe?num=${emp.employee_code}&pg=${pg}">${emp.employee_name}</a></td>
						<td>${emp.employee_jumin}</td>
						<td>${emp.employee_phone}</td>
						<td>${emp.employee_address}</td>
						<td><fmt:formatDate value="${emp.employee_startdate}"
						pattern="yyyy-MM-dd" /></td>
						<td><fmt:formatDate value="${emp.employee_enddate}"
						pattern="yyyy-MM-dd" /></td>
						<td>${emp.employee_endyn}</td>
						<td>${emp.employee_bank}</td>
						<td>${emp.employee_bankaddress}</td>
						<td>${emp.employee_jobname}</td>
                        <td><input type="button" value="수정" onclick="location.href='updateForm.cafe?num=${emp.employee_code}&pg=${pg}'" /></td>
                        <td><input type="button" value="퇴사처리" onclick="location.href='update2.cafe?employee_code=${emp.employee_code}&pg=${pg}'" /></td>
                      </tr>
                      	
                    
                      
            </c:forEach>   
                  
                   
                  </table>
                 
                 <br>
	<br>
	<table width="100%" align="center">
		<tr>
			<td align="center">
				<!-- 처음 이전 링크 --> <c:if test="${pg>block}">
					<!-- 5>10 : false / 15>10 : true -->
			[<a href="emplist.cafe?pg=1">◀◀</a>]
			[<a href="emplist.cafe?pg=${fromPage-1}">◀</a>]		
		</c:if> <c:if test="${pg<=block}">
					<!-- 5<=10 :true / 15<=10:false -->
			[<span style="color: gray">◀◀</span>]	
			[<span style="color: gray">◀</span>]
		</c:if> <!-- 블록 범위 찍기 --> <c:forEach begin="${fromPage}" end="${toPage}"
					var="i">
					<c:if test="${i==pg}">[${i}]</c:if>
					<c:if test="${i!=pg}">
				[<a href="emplist.cafe?pg=${i}">${i}</a>]
			</c:if>
				</c:forEach> <!-- 다음, 이후 --> <c:if test="${toPage<allPage}">
					<!-- 20<21 : true -->
				[<a href="emplist.cafe?pg=${toPage+1}">▶</a>]
				[<a href="emplist.cafe?pg=${allPage}">▶▶</a>]
		
		</c:if> <c:if test="${toPage>=allPage}">
					<!-- 21>=21 :true -->
				[<span style="color: gray">▶</span>]
				[<span style="color: gray">▶▶</span>]
		
		</c:if>

			</td>
			
		</tr>
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
    <a class="scroll-to-top rounded" href="#page-top" style="background: #212529 !important;  ">
      <i class="fa fa-angle-up"></i>
    </a>
      <!-- Modals -->
      
      <!-- #addEmpModal -->
   <div class="modal fade" id="addEmpModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              직원등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form action="insert.cafe" method="post">
            <div class="modal-body">
              <div class="form-group">
                <label>이름</label>
                <input type="text" class="form-control" name="employee_name"  placeholder="이름을 입력하세요" required>
              </div>
              <div class="form-group">
                <label>주민번호</label>
                <input type="text" class="form-control" name="employee_jumin"  placeholder="(-)빼고 입력하세요" required>
              </div>
              <div class="form-group">
                <label for="">핸드폰번호</label>
                <input type="text" class="form-control" name="employee_phone" placeholder="(-)빼고 입력하세요" required>
              </div>
              <div class="form-group">
                <label for="">주소 </label>
                <input type="text" class="form-control" name="employee_address" placeholder="주소를 입력하세요" required>
              </div>
              <div class="form-group">
                <label for="">은행 </label>
                <input type="text" class="form-control" name="employee_bank" placeholder="급여 받을 은행을 입력해주세요." required>
              </div>
              <div class="form-group">
                <label for="">계좌번호</label>
                <input type="text" class="form-control" name="employee_bankaddress" placeholder="계좌번호를 (-)빼고 입력해주세요." required>
              </div>
              <div class="form-group">
                <label for="">직급</label>
                <select name="employee_jobname" required>
						<option>선택하세요</option>
					<c:forEach var="emp" items="${joblist}">
						<option  value="${emp.job_name}">${emp.job_name}</option>
					</c:forEach>
 				</select>
 				<small class="float-right">찾는 카테고리가 없으신가요?<a href="#"data-toggle="modal" data-target="#addJobModal">추가하기</a> </small>
              </div>
              <br>
             </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="확인">
            </div>
          </form>
        </div>
      </div>
    </div>
      <!-- #addjobModal -->
   <div class="modal fade" id="addJobModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              직급등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form action="../../hr/job/list.cafe" method="post">
            <div class="modal-body">
              <div class="form-group">
                <label>직급</label>
                <input type="text" class="form-control" name="job_name"  placeholder="직급을 입력하세요" required>
              </div>
              <div class="form-group">
                <label>시급</label>
                <input type="text" class="form-control" name="job_tpay"  placeholder="없으면 0을 입력하세요" required>
                <small class="text-muted">급여를 계산할 때 필요하니 꼭 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label for="">월급</label>
                <input type="text" class="form-control" name="job_mpay" placeholder="없으면 0을 입력하세요" required>
                <small class="text-muted">급여를 계산할 때 필요하니 꼭 입력해주세요.</small>
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
      <!-- #addSalaryModal -->
   <div class="modal fade" id="addSalaryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              급여정산
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form action="../../hr/salary/insert.cafe" method="post">
            <div class="modal-body">
              <div class="form-group">
                <label>직원이름</label>
                	<select name="employee_name" required>
					<option>이름을 선택하세요</option>
		
					<c:forEach var="t" items="${nameList }">
					<option value="${t.employee_name }">${t.employee_name }</option>
					</c:forEach>
					</select><br><br>
              </div>
              <div class="form-group">
                <label>근무 연도</label>
                <select name="salary_year" required>
					<option>연도를 선택하세요</option>
		
					<c:forEach var="t" items="${yearList }">
					<option value="${t.emptna_year }">${t.emptna_year }</option>
					</c:forEach>
				</select><br><br>
              </div>
              
              <div class="form-group">
                <label for="">근무 월</label>
                	<select name="salary_month" required>
						<option>월을 선택하세요</option>
		
							<c:forEach var="t" items="${monthList }">
							<option value="${t.emptna_month }">${t.emptna_month }</option>
						</c:forEach>
					</select><br><br>
              </div>
              <div class="form-group">
                <label for="">급여일</label>
                <input type="text" class="form-control" name="salary_date" placeholder="급여지급일을 입력하세요" required>
              
              <br>
             </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="submit" class="btn btn-primary" value="확인">
            </div>
          </form>
        </div>
      </div>
    </div>
    
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
    

    <!-- #addCafeProductCategoryModal -->
    <div class="modal fade" id="addCafeProductCategoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              판매 상품 카테고리 등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="" action="write.cafe" method="post" >
            <div class="modal-body">
  
              <div class="form-group">
                <label for="">카테고리명</label>
                <input type="text" class="form-control" name="product_category_name" value="" placeholder="제품명 입력" required>
                <small class="text-muted">정확히 입력해주세요.</small>
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
    
          <!-- #addCafeProductAddModal -->
    <div class="modal fade" id="addCafeProductAddModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              판매 상품 옵션(추가 사항) 등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="" action="write.cafe" method="post">
            <div class="modal-body">
              <div class="form-group">
                <label for="">옵션(추가사항) 명</label>
                <input type="text" class="form-control" name="product_add_name" value="" placeholder="제품명 입력" required>
                <small class="text-muted">정확히 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label for="">옵션(추가사항) 가격 <small class="text-muted">(개당 가격)</small> </label>
                <input type="number" class="form-control" name="product_add_price" value="" placeholder="단가를 입력해주세요" required>
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
