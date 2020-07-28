<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>aaKartRider 매장관리시스템</title>
    <link href="/erp/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/erp/resources/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="/erp/resources/css/styles.css" rel="stylesheet">
<title>productList</title>
</head>
<body>
      <div id="content-wrapper" style="padding: 2em;">	
          <div class="container-fluid">
            <!-- Breadcrumbs-->
            
            
           
             
            
            
            <!-- Page Content -->
            <!-- DataTables Example -->
            <div class="card mb-3">
              <div class="card-header bg-primary text-white" style="background-color:#787878  !important;">
                <i class="fa fa-table"></i>
               Web 주문 List
                
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th>주문번호</th>
                        <th>총 주문 상품 수량</th>
                        <th>총 금액</th>
                        <th>날짜</th>
                        <th>접수 상태</th>
                      </tr>
                    </thead>
                    
                   
          <c:forEach var="o" items="${orderlist}">

                      <tr onclick="location.href='orderlistview.cafe?orderWebCode=${o.order_web_code}'">
                        <td>${o.order_web_code}</td>
                        <td>${o.order_web_count}</td>
                        <td>${o.order_web_total}</td>
                        <td>${o.order_web_date}</td>
                        
                   <c:if test="${o.order_web_check == 0}">
                          <td><input class="btn btn-primary" type="button" value="미접수" onclick="location.href='orderlistview.cafe?orderWebCode=${o.order_web_code}'" /></td>        
                   </c:if>   
                   <c:if test="${o.order_web_check == 1}">
                          <td><input class="btn btn-secondary" type="button" value="접수 완료" onclick="location.href='orderlistview.cafe?orderWebCode=${o.order_web_code}'" /></td>
            
                   </c:if>    
                        
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
             
            </div>
          </div>
        </footer>
      </div>

	


</body>
</html>