<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html><head>
	
	<script type="text/javascript">
		function stock_insert(){
			
			if(document.stockinsert.stock_productname.value=="선택하세요"){
				alert("품명을 선택해주세요");
				
			}
			else if(document.stockinsert.stock_detailname.value==""){
				alert("상세명을 입력해주세요");
				document.stockinsert.stock_detailname.focus();
			}
			else if(document.stockinsert.stock_standard.value==""){
				alert("규격을 입력해주세요");
				document.stockinsert.stock_standard.focus();
			}
			else if(document.stockinsert.stock_price.value==""){
				alert("금액을 입력해주세요");
				document.stockinsert.stock_price.focus();
			}
			else if(! document.stockinsert.stock_price.value== /^[0-9]*$/g.test(document.stockinsert.stock_price.value)){
				alert("금액(원) 입력란에 숫자만 입력해주세요");
				document.stockinsert.stock_price.focus();
			}
			else if(document.stockinsert.account_number.value=="회사명을 선택하세요"){
				alert("회사명을 선택해주세요");
				
			}
			else if(! document.stockinsert.stock_upimage.value== /(\.gif|\.png|\.jpg|\.jpeg)$/i.test(document.stockinsert.stock_upimage.value)){
				alert("이미지 형식의 파일을 선택해주세요")
			}
			else{
				document.stockinsert.submit();  //전송
			}
		}
			
			
    </script>
    
    <script type="text/javascript">

function account_insert(){
	
	if(document.accountinsert.account_number.value==""){
		alert("사업자 번호를 입력해주세요");
		document.accountinsert.account_number.focus();
	}
	else if(! document.accountinsert.account_number.value == 
		/^[0-9]*$/g.test(document.accountinsert.account_number.value)){
		alert("사업자 번호 입력란에 숫자만 입력해주세요")
		document.accountinsert.account_number.focus();
	}
	else if(document.accountinsert.account_name.value==""){
		alert("업체명을 입력해주세요");
		document.accountinsert.account_name.focus();
	}
	else if(document.accountinsert.account_ceoname.value==""){
		alert("사업자명을 입력해주세요");
		document.accountinsert.account_ceoname.focus();
	}
	else if(document.accountinsert.account_address.value==""){
		alert("주소를 입력해주세요");
		document.accountinsert.account_address.focus();
	}
	else if(document.accountinsert.account_email.value==""){
		alert("email을 입력해주세요");
		document.accountinsert.account_email.focus();
	}
	else if(! document.accountinsert.account_email.value == 
		/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i.test(document.accountinsert.account_email.value))
	{
		alert("email입력 란에 email형식으로 입력해주세요")
	}
	else{
		document.accountinsert.submit(); //전송
	}
}

</script>
	
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>aaKartRider 매장관리시스템</title>
    <link href="../../../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../../../resources/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="../../../resources/css/styles.css" rel="stylesheet">
  </head>
  <body id="page-top">
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
      <a class="navbar-brand mr-1" href="../../index.cafe">Cafe ERP</a>
      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fa fa-bars"></i>
      </button>
    
    </nav>
    <div id="wrapper">
      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="../../index.cafe">
            <i class="fa fa-fw fa-home"></i>
            <span>홈</span>
          </a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="../../cs/customer/list.cafe">
            <i class="fa fa-fw fa-users"></i>
            <span>고객관리</span>
          </a>
        </li>
        
        <li class="nav-item dropdown active">
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
            <a class="dropdown-item" href="../emp/list.cafe"> <i class="fa fa-user"></i> 직원조회</a>
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
            <a class="dropdown-item" href="list.cafe"> <i class="fa fa-tags"></i> 급여 조회</a>
          </div>
        </li>
        
               <li class="nav-item dropdown ">
          <a class="nav-link" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-table"></i>
            <span>
              제품관리
              <i class="float-right fa fa-angle-down"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">상품 타입</h6>
            <a class="dropdown-item" href="../../sale/productCategory/list.cafe"> <i class="fa fa-tags"></i> 상품 카테고리 조회</a>
            <a class="dropdown-item" href="../../sale/productAdd/list.cafe"> <i class="fa fa-tags"></i> 상품 옵션 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">판매 상품</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addCafeProductModal"> <i class="fa fa-plus"></i> 판매 상품 추가</a>
            <a class="dropdown-item" href="../../sale/product/list.cafe"> <i class="fa fa-tags"></i> 상품 조회</a>
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
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addAccountModal"> <i class="fa fa-plus"></i> 거래처 등록</a>
            <a class="dropdown-item" href="../../store/accountlist.cafe"> <i class="fa fa-industry"></i>거래처 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">원재료 품목</h6>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#addStockModal"> <i class="fa fa-plus"></i> 재료 품목 추가</a>
            <a class="dropdown-item" href="../../store/stocklist.cafe"> <i class="fa fa-tags"></i> 재료 품목 조회</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">발주</h6>
            <a class="dropdown-item" href="../../store/stockorder.cafe"><i class="fa fa-plus"></i> 발주 신청</a>
            <a class="dropdown-item" href="../../store/orderlist.cafe"> <i class="fa fa-fw fa-calendar"></i> 발주 조회</a>
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
                <a href="index.do" style="color: #A95858 !important;">급여</a>
              </li>
              <li class="breadcrumb-item active">급여리스트</li>
            </ol>
            <!-- Page Content -->
            <!-- DataTables Example -->
            <div class="card mb-3">
              <div class="card-header bg-primary text-white" style="background-color:#787878  !important;">
                <i class="fa fa-table"></i>
        급여리스트
                
              </div>
              <div class="card-body">
                <div class="table-responsive">
                <form action="search.cafe" >
	
	<select name="salary_year">
		<option value="">년도를 선택하세요</option>
		<c:forEach var="t" items="${ty }">
		<option value="${t.emptna_year}">${t.emptna_year }</option>
		</c:forEach>
	</select>
	
	<select name="salary_month">
		<option value="">월을 선택하세요</option>
		<c:forEach var="t" items="${tm }">
		<option value="${t.emptna_month}">${t.emptna_month }</option>
		</c:forEach>
	</select>
	
	<input type="submit" value="조회">
	</form>
	<hr><hr>
	
	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		<tr>
			<th>급여코드</th>
			<th>이름</th>
			<th>직급</th>
			<th>근무 년</th>
			<th>근무 월</th>
			<th>알바시급</th>
			<th>직원월급</th>
			<th>월근무시간</th>
			<th>총급여</th>
			<th>월급 지급일</th>
			

		</tr>

		<c:forEach var="list" items="${list1}">


			<tr>
				
				<td>${list.salary_code}</td>
				<td>${list.employee_name}</td>
				<td>${list.employee_jobname}</td>
				<td>${list.salary_year}</td>
				<td>${list.salary_month}</td>
				<td>${list.salary_tpay}</td>
				<td>${list.salary_mpay}</td>
				<td>${list.salary_time}</td>
				<td>${list.salary_totalpay}</td>
				<td>${list.salary_date}</td>
				
				<td> 
				<input type="button" value="수정" onclick="location.href='update.cafe?salary_code=${list.salary_code}&pg=${pg}'">
				<%-- 				<input type="button" value="삭제" onclick="location.href='empDelete.cafe?employee_code=${emp.employee_code}&pg=${pg}'"> --%>
				</td> 
			</tr>
		</c:forEach>

	</table>
	
	<br>
	<br>
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
<!--               <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div> -->
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
          <form action="../../hr/emp/insert.cafe" method="post">
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
						<option value="">선택하세요</option>
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
          <form action="insert.cafe" method="post">
            <div class="modal-body">
              <div class="form-group">
                <label>직원이름</label>
                	<select name="employee_name" required>
					<option value="">이름을 선택하세요</option>
		
					<c:forEach var="t" items="${nameList }">
					<option value="${t.employee_name }">${t.employee_name }</option>
					</c:forEach>
					</select><br><br>
              </div>
              <div class="form-group">
                <label>근무 연도</label>
                <select name="salary_year" required>
					<option value="">연도를 선택하세요</option>
		
					<c:forEach var="t" items="${yearList }">
					<option value="${t.emptna_year }">${t.emptna_year }</option>
					</c:forEach>
				</select><br><br>
              </div>
              
              <div class="form-group">
                <label for="">근무 월</label>
                	<select name="salary_month" required>
						<option value="">월을 선택하세요</option>
		
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
          <form class="" action="../../sale/product/write.cafe" method="post" enctype="multipart/form-data">
            <div class="modal-body">
              <div class="form-group">
                <label>카테고리</label>
                <select class="form-control text-primary" name="product_category_code" id="product_category_code">
                  <option disabled selected><sub>제품 카테고리를 선택해주세요.</sub></option>
                  <c:forEach var="pcl" items="${productcategorylist}">

		    <option value="${ pcl.product_category_code }">${ pcl.product_category_name }</option>
		    
				</c:forEach>
              
                </select>
                <small class="float-right">찾는 카테고리가 없으신가요?<a href="#"data-toggle="modal" data-target="#addCafeProductCategoryModal">추가하기</a> </small>
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
          <form class="" action="../../sale/productCategory/write.cafe" method="post" >
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
          <form class="" action="../../sale/productAdd/write.cafe" method="post">
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
    
     <!-- #addStockModal -->
    <div class="modal fade" id="addStockModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
              재료 품목 등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form class="stockinsert" action="../../store/stockinsert.cafe" method="post" enctype="multipart/form-data">
            <div class="modal-body">
               <div class="form-group">
                <label for="">품명</label>
                 <select class="form-control text-primary" name="stock_productname" id="stock_productname">
                  <option disabled selected>품명을 선택해주세요.</option>
                  <option>음료</option>
                  <option>원두</option>
                  <option>재과</option>
                  <option>기타</option>
                 </select>
              </div>
              <div class="form-group">
                <label>상세명</label>
                <input type="text" placeholder="상세명을 입력해주세요" class="form-control" id="stock_detailname" name="stock_detailname"/>
              </div>
              
              <div class="form-group">
                <label>규격</label>
                <input type="text" placeholder="규격을 입력해주세요" class="form-control" id="stock_standard" name="stock_standard"/>
              </div>
              
              <div class="form-group">
                <label>금액(원)</label>
                <input type="text" placeholder="금액(원)을 입력해주세요" class="form-control" id="stock_price" name="stock_price"/>
              </div>
              <div class="form-group">
                <label>회사명</label>
                <select class="form-control text-primary" name="account_number" id="account_number">
                  <option disabled selected><sub>회사명을 선택해주세요.</sub></option>
                  <c:forEach var="get" items="${account_list}">

		   		 <option value="${ get.account_number }">${ get.account_name }</option>
		    
				</c:forEach>
              
                </select>
                <small class="float-right">찾는 카테고리가 없으신가요?<a href="#"data-toggle="modal" data-target="#addAccountModal">추가하기</a> </small>
              </div>
              
              <div class="form-group">
                <label>이미지 등록</label>
                <input type="file" id="stock_upimage" name="stock_upimage" />
              </div>
              <small class="text-muted"><em>등록을 누르시기전에 한번 더 체크해주세요.</em></small>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="button" class="btn btn-primary" value="등록" onclick="stock_insert()">
            </div>
          </form>
        </div>
      </div>
    </div>
  
   
     <!-- #addAccountModal -->
    <div class="modal fade" id="addAccountModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="exampleModalLabel">
              <i class="fa fa-tag"></i>
             거래처 등록
            </h5>
            <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <form name="accountinsert" action="../../store/accountinsert.cafe" method="post" enctype="multipart/form-data">
            <div class="modal-body">
  
              <div class="form-group">
                <label>사업자 번호</label>
                <input type="text" placeholder="사업자 번호를 입력해주세요" class="form-control" id="account_number" name="account_number"/>
              </div>
              <div class="form-group">
                <label>업체명</label>
                <input type="text" placeholder="업체명을 입력해주세요" class="form-control" id="account_name" name="account_name"/>
              </div>
              <div class="form-group">
                <label>사업자 명</label>
                <input type="text" placeholder="사업자 명을 입력해주세요" class="form-control" id="account_ceoname" name="account_ceoname"/>
              </div>
              <div class="form-group">
                <label>주소</label>
                <input type="text" placeholder="주소을 입력해주세요" class="form-control" id="account_address" name="account_address"/>
              </div>
              <div class="form-group">
                <label>email</label>
                <input type="text" placeholder="email을 입력해주세요" class="form-control" id="account_email" name="account_email"/>
              </div>
              <small class="text-muted"><em>등록을 누르시기전에 한번 더 체크해주세요.</em></small>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
              <input type="button" class="btn btn-primary" value="등록" onclick="account_insert()">
            </div>
          </form>
        </div>
      </div>
    </div>
    
    
    
    
    
      <script src="../../../resources/js/jquery.min.js"></script>
      <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
      <script src="../../../resources/js/jquery.easing.min.js"></script>
      <script src="../../../resources/js/rc-pos.min.js"></script>
    </body>
  </html>
