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
               Web 주문 상세보기
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th>주문번호</th>
                        <th>제품 명</th>
                        <th>총 수량</th>
                        <th>추가 사항</th>
                      </tr>
                    </thead>
                    
                   
 
<c:set var="before" value="0"/>

<c:forEach var="order" items="${list}">

<c:set var="present" value="${order.orderList_web_code}"/>
	
	<c:if test="${before != present}">
	
           <tr>
           <td>${order.orderList_web_code}</td>
	<c:forEach var="p" items="${productlist}">
			<c:if test="${order.cafe_product_code == p.cafe_product_code}">
			

           
                        <td>${p.cafe_product_name}</td>
                        
      </c:if>
		</c:forEach>	
                        <td>${order.orderList_web_count}</td>
                        
                        
 <c:if test="${order.product_add_code == 0}">
                        
                        <td>추가 사항 없음.</td>
    	</c:if>
		
		<c:if test="${order.product_add_code != 0}">
		   <c:forEach var="a" items="${addlist}">
				<c:if test="${order.product_add_code == a.product_add_code}">
				                 
                        <td>${a.product_add_name}</td>
                       
                   </c:if>
			</c:forEach>    
			
			
		</c:if>
		
</tr>
	</c:if>	
	
	<c:if test="${before == present}">	

		<c:if test="${order.product_add_code != 0}">
		
			<c:forEach var="a" items="${addlist}">
				<c:if test="${order.product_add_code == a.product_add_code}">
					<br>
					<tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>${a.product_add_name}</td>
                      </tr>
					
				
				
				
					<br>
				</c:if>
			</c:forEach>
			
		</c:if>
	</c:if>
	
	<c:set var="before" value="${order.orderList_web_code}"/>



	</c:forEach>
	
		
		 
                
                   
                  </table>
                  
  
		
		
		
                  <div class="row">
	                  <div class="col-sm-12 col-md-5">
		                  <div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">
		              
		                  </div>
	                  </div>
	                  <div class="col-sm-12 col-md-7">
		                  <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
			                 <input class="btn btn-secondary" type="button" value="list" onclick="location.href='orderlist.cafe'" />
			                     
			                 <input class="btn btn-primary" type="button" value="접수" onclick="location.href='orderconfirm.cafe?orderWebCode=${orderWebCode}'" />
			                      
              
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