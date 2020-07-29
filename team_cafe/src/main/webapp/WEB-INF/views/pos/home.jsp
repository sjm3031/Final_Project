<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Odoo POS</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="content-type" content="text/html, charset=utf-8" />

<meta name="viewport" content=" width=1024, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="mobile-web-app-capable" content="yes" />

<link rel="shortcut icon" sizes="196x196"
   href="/point_of_sale/static/src/img/touch-icon-196.png" />
<link rel="shortcut icon" sizes="128x128"
   href="/point_of_sale/static/src/img/touch-icon-128.png" />
<link rel="apple-touch-icon"
   href="/point_of_sale/static/src/img/touch-icon-iphone.png" />
<link rel="apple-touch-icon" sizes="76x76"
   href="/point_of_sale/static/src/img/touch-icon-ipad.png" />
<link rel="apple-touch-icon" sizes="120x120"
   href="/point_of_sale/static/src/img/touch-icon-iphone-retina.png" />
<link rel="apple-touch-icon" sizes="152x152"
   href="/point_of_sale/static/src/img/touch-icon-ipad-retina.png" />

<style>
body {
   background: #222;
}
</style>


<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" href="/web/static/src/img/favicon.ico"
   type="image/x-icon" />
<link type="text/css" rel="stylesheet"
   href="/erp/resources/web/content/302-2b1892c/point_of_sale.assets.css" />



<script type="text/javascript">
	var num = 0;
	var total = 0;
   var original = total;
   var couprice = 0;

	// Opt. 버튼을 눌렀을때 optionList.cafe로 이동하여 옵션 목록을 비동기 처리해여 가져옴
	$(function(){
	   $('.order-button.select-order.selected.option').click(function(){
			
	      info = '';
	       
	      $.ajax(
	         {
	            url: './optionList.cafe',
	            type: 'get',
	            //data: {code : code},
	            dataType: "json",
	            success: function(data){
	               for(var i in data){
	                  info += '<article class="product option" data-product-id="'
	                     + data[i].product_add_code +'" tabindex="0" aria-labelledby="article_product_' + data[i].product_add_code + '">';
	                  info += '<div class="product-img"><i class="fa fa-camera fa-5x" role="img" aria-label="Shopping cart" title="Shopping cart"></i>';
	                  info += '<span class="price-tag">' + data[i].product_add_price + '</span>';
	                  info += '</div>';
	                  info += '<div class="product-name" id="article_product_' + data[i].product_add_code + '">' + data[i].product_add_name + '</div>';
	                  info += '</article>';
	               }
	                
	               $('.product-list').html(info);
	                
	            },
	            error: function(error){
	               console.log('error');
	            }
	         }
	      );
	   });
	});

	// 상단에 음료 타입을 클릭시 타입에 맞는 음료 리스트를 비동기 처리하여 가져옴
	$(function(){
	   $('.order-button.select-order.selected.beverage').click(function(){
	      var code = $(this).data('uid');
			
	      info = '';
	       
	      $.ajax(
	         {
	            url: './typeSelect.cafe',
	            type: 'get',
	            data: {code : code},
	            dataType: "json",
	            success: function(data){
	               for(var i in data){
	                  info += '<article class="product beverage" data-product-id="'
	                     + data[i].cafe_product_code +'" tabindex="0" aria-labelledby="article_product_' + data[i].cafe_product_code + '">';
	                  info += '<div class="product-img"><img src="/erp/sale/upload/' + data[i].cafe_product_img + '" alt="Product image">';
	                  info += '<span class="price-tag">' + data[i].cafe_product_price + '</span>';
	                  info += '</div>';
	                  info += '<div class="product-name" id="article_product_' + data[i].cafe_product_code + '">' + data[i].cafe_product_name + '</div>';
	                  info += '</article>';
	               }
	                
	               $('.product-list').html(info);
	                
	            },
	            error: function(error){
	               console.log('error');
	            }
	         }
	      );
	   });
	});

	
	// 왼쪽 리스트에서 항목을 클릭하면 그 항목의 금액만큼 차감한 후 리스트에서 삭제
 	$(document).on('click', '.orderline', function(event){
 		var test = $(this).children('.price').text();
 		total = total - test;
      original = original - test;
 		var info3 = '<div class="summary clearfix"><div class="line"><div class="entry total">';
		if(total < 0){
			info3 += '<span class="badge">Total: </span> <span class="value">' + 0 + ' 원</span>';
		} else {
			info3 += '<span class="badge">Total: </span> <span class="value">' + total + ' 원</span>';
		}
 		
      info3 += '<div class="subentry unit">원가 : <span>' + original + ' 원</span>';
      info3 += '<div class="subentry discount">쿠폰 : <span>' + couprice + ' 원</span>';
		info3 += '</div></div></div>';
		$(".order2").html(info3);	
		$(event.currentTarget).remove();
	});

 	
	// 음료 리스트에서 한 음료를 클릭 시 비동기 처리로 DB에서 음료의 정보를 가져온 뒤 왼쪽 리스트에 추가함
	$(document).on('click', '.product.beverage', function(){
	   var id = $(this).data('product-id');
		var info = '';
	   list = '';
		
	   $.ajax({
	      url: './productSelect.cafe',
	      type: 'get',
	      data: {id : id},
	      dataType: "json",
	      success: function(data){
				if(num == 0){
					/* 단 한번만 초기화 */
					$(".order").empty();
					num=1;
	
					/* 아웃라인 */
					var info2 = '<ul class="orderlines">';
					info2 += '</ul>';
					$(".order").html(info2);	
				}
	
				info = '<li class="orderline">';
				info += '<span class="product-id" hidden="true">' + data.cafe_product_code + '</span>';
				info += '<span class="product-name">' + data.cafe_product_name + '</span>';
				info += '<span class="price">' + data.cafe_product_price + '</span>';
				info += '<span class="info-list">Option : </span>';
				info +='</li>';
				total += data.cafe_product_price;
            original += data.cafe_product_price;
				$(".orderlines").append(info);
			
				/* 토탈화면출력 */
				var info3 = '<div class="summary clearfix"><div class="line"><div class="entry total">';

				if(total < 0){
					info3 += '<span class="badge">Total: </span> <span class="value">' + 0 + ' 원</span>';
				} else {
					info3 += '<span class="badge">Total: </span> <span class="value">' + total + ' 원</span>';
				}
				
            info3 += '<div class="subentry unit">원가 : <span>' + original + ' 원</span>';
            info3 += '<div class="subentry discount">쿠폰 : <span>' + couprice + ' 원</span>';
				info3 += '</div></div></div>';
				$(".order2").html(info3);
	      },
	      error: function(error){
	         console.log('error');
	      }
	   });
	});

	
	// 옵션을 클릭 시 왼쪽리스트에 등록된 음료 리스트의 맨 마지막에 해당 옵션을 부여함
	$(document).on('click', '.product.option', function(){
	   var id = $(this).data('product-id');
	   list = '';

	   if($('.orderline').length == 0){
			return;
		}
		
	   $.ajax({
		      url: './optionSelect.cafe',
		      type: 'get',
		      data: {id : id},
		      dataType: "json",
		      success: function(data){
			      extra = '<span class="option-code" hidden="true">' + data.product_add_code + '</span>';
			      var price = $('.orderline:last').children('.price').text();
			      price = Number(price);
			      price += data.product_add_price;
			      total += data.product_add_price;
               original += data.product_add_price;
			      $('.orderline:last').children('.price').html(price);
			      $('.orderline:last').append(extra);
			      $('.entry.total').children('.value').html(total + ' 원');
               $('.subentry.unit').children('span').html(original + ' 원');
			      $('.info-list:last').append(data.product_add_name + ' ');
		      },
		      error: function(error){
		         console.log('error');
		      }
		});
	});


	// 결제 버튼 클릭시 물품의 여부에 따라 모달 창을 띄움
	$(document).on('click', '.button.pay', function(){
		   if($('.orderline').length == 0){
		      alert('등록된 물품이 없습니다.');
		      return;
		   }
			
			$('.modal-dialog.oe_hidden.pay').attr('class', 'modal-dialog pay');
	});


	// 결제 모달에서 취소 누르면 모달 창을 숨김
	$(document).on('click', '.button.cancel.pay', function(){
		$('.modal-dialog.pay').attr('class', 'modal-dialog oe_hidden pay');
	});

	
	// 결제 버튼 누를시 상품주문 리스트를 가지고 PosController로 전송
	$(document).on('click', '.button.confirm.pay', function(){
		var orderJson = {
				order : [],
				total : '',
				count : '',
				customer : '',
				payment : ''
		};
		
		$('.orderline').each(function(){
      	var orderlist = {
	         code : '',
	         name : '',
	         price : '',
	         option : []
         };

         orderlist.code = $(this).children('.product-id').text();
			orderlist.name = $(this).children('.product-name').text();
         orderlist.price = $(this).children('.price').text();
         
         $(this).children('.option-code').each(function(){
            orderlist.option.push($(this).text());
         });
         
         orderJson.order.push(orderlist);
      });
	      
      var totalPrice = $('.entry.total').children('.value').text().split(' ');
      orderJson.total = totalPrice[0];
      orderJson.count = orderJson.order.length;
      orderJson.customer = $('#customerPhone').val();
      orderJson.payment = $("input[name='payment']:checked").val();

      $.ajax({
         url: './orderData.cafe',
         type: 'post',
         data: JSON.stringify(orderJson),
         contentType: 'application/json; charset=utf-8',
         dataType: 'text',
         success: function(data){
         	if(data == "fail"){
            	alert("등록된 회원을 찾지 못했습니다. 다시 확인해주세요.");
            } else {
            	alert("결제가 완료되었습니다.");
            	location.href = "./home.cafe";
            }
         },
         error: function(error){
            console.log('error');
         }
      });
	});

	
	// 출근/퇴근 버튼을 누르면 근태 모달창을 띄움
	$(document).on('click', '.button.attend', function(){
		$('.modal-dialog.oe_hidden.attend').attr('class', 'modal-dialog attend');
	});


	// 출퇴근 모달창의 취소를 누르면 근태 모달창을 숨김
	$(document).on('click', '.button.cancel.attend', function(){
		$('.modal-dialog.attend').attr('class', 'modal-dialog oe_hidden attend');
	});
	

	// 근태 모달창에서 등록을 누르면 입력된 값에 따라 출/퇴근 정보를 Controller로 보냄
	$(document).on('click', '.button.confirm.attend', function(){
		var attendJson = {
			name : $('#employeeName').val(),
			jumin : $('#employeeIdenti').val(),
			inout : $("input[name='attend']:checked").val()
		};

		$.ajax({
			url: './attendInsert.cafe',
			type: 'post',
			data: JSON.stringify(attendJson),
			contentType: 'application/json; charset=utf-8',
			dataType: 'text',
			success: function(data){
				alert(data);
			},
			error: function(error){
				console.log('error');
			}
		});
	});


   // 스탬프 갯수 조회
   $(document).on('click', '.button.check.coupon', function(){
      if($('.orderline').length == 0){
       	alert('상품을 먼저 등록해주세요!');
         return;
      }

      var phone = $('#phoneCouponInput').val();

      $.ajax({
         url: './selectStamp.cafe',
         type: 'post',
         data: {phone : phone},
         dataType: 'json',
         success: function(data){
            if(data.msg == "yes"){
               $('#validCouponText').html('쿠폰 사용 가능합니다.<br>스탬프 : ' + data.count + '개');
               $('#validCouponText').css('color', 'green');
            } else {
               $('#validCouponText').html('사용 가능한 쿠폰이 없습니다.<br>스탬프 : ' + data.count + '개');
               $('#validCouponText').css('color', 'red');
            }
         },
         error: function(error){
            console.log("error");
         }
      });
   });


   // 스탬프 사용
   $(document).on('click', '.button.confirm.coupon', function(){
	   if($('.orderline').length == 0){
	       	alert('상품을 먼저 등록해주세요!');
	         return;
	   }
	   
      var phone = $('#phoneCouponInput').val();

      $.ajax({
         url: './coupon.cafe',
         type: 'post',
         data: {phone : phone},
         dataType: 'text',
         success: function(data){
            if(data == 'yes'){
               alert('쿠폰이 적용되었습니다!');
               couprice = 5000;
               total = total - couprice;

               if(total < 0){
                  $('.entry.total').children('.value').html(0 + ' 원');
               } else {
                  $('.entry.total').children('.value').html(total + ' 원');
               }
               
               $('.subentry.discount span').html(couprice + ' 원');
               $('.modal-dialog.coupon').attr('class', 'modal-dialog oe_hidden coupon');
            } else {
               alert("사용 할 수 있는 쿠폰이 없습니다!")
            }
         }
      });
   });



	// 쿠폰 버튼을 누르면 쿠폰 모달창을 띄움
	$(document).on('click', '.mode-button.coupon', function(){
		$('.modal-dialog.oe_hidden.coupon').attr('class', 'modal-dialog coupon');
	});


	// 쿠폰 모달 창에서 취소 버튼을 누르면 쿠폰 모달창을 숨김
	$(document).on('click', '.button.cancel.coupon', function(){
		$('.modal-dialog.coupon').attr('class', 'modal-dialog oe_hidden coupon');
	});


	// 준비 버튼을 누르면 현재 시각을 불러와 모달창에 보여줌
	$(document).on('click', '.mode-button.ready', function(){
		$.ajax({
			url: './dayStart.cafe',
			type: 'post',
			contentType: 'application/json; charset=utf-8',
			dataType: 'json',
			success: function(data){
				$('#startTime').attr('value', data.NOWTIME);
			},
			error: function(error){
				console.log('error');
			}
		});

		$('.modal-dialog.oe_hidden.ready').attr('class', 'modal-dialog ready');
	});


	// 준비 모달창의 등록을 누르면 현재 시각과 입력한 준비금을 controller로 보냄
	$(document).on('click', '.button.confirm.ready', function(){
		var startData = {
			startTime : $('#startTime').val(),
			startMoney : $('#readyMoney').val()
		}

		$.ajax({
			url: './dayStartSubmit.cafe',
			type: 'post',
			contentType: 'application/json; charset=utf-8',
			data: JSON.stringify(startData),
			dataType: 'text',
			success: function(data){
				alert(data);
				$('.modal-dialog.ready').attr('class', 'modal-dialog oe_hidden ready');
			},
			error: function(error){
				console.log('error');
			}
		});
	});


	// 준비 모달창 숨김
	$(document).on('click', '.button.cancel.ready', function(){
		$('.modal-dialog.ready').attr('class', 'modal-dialog oe_hidden ready');
	});
	

	// 정산 버튼을 누르면 POS 시작 정보, 매출정보, 마감시간을 가져와 모달창에 보여줌
	$(document).on('click', '.mode-button.dayend', function(){
		$.ajax({
			url: './dayend.cafe',
			type: 'post',
			contentType: 'application/json; charset=utf-8',
			dataType: 'json',
			success: function(data){

				$('#totalSell').attr('value', data[2].SELLTOTAL);
				$('#cashSell').attr('value', data[1].SELLTOTAL);
				$('#cardSell').attr('value', data[0].SELLTOTAL);
				$('#sellCount').attr('value', data[2].SELLCOUNT);
				$('#endSell').attr('value', data[3].NOWTIME);
				$('#startSell').attr('value', data[4].STARTTIME)
				$('#readyCost').attr('value', data[4].RESERVEFUND_TOTAL)
				$('#reserveId').attr('value', data[4].RESERVEFUND_CODE)
				$('.modal-dialog.oe_hidden.dayend').attr('class', 'modal-dialog dayend');
			},
			error: function(error){
				alert('POS 준비를 먼저 실행해주세요!');
				return;
			}
		});	
	});


	// 정산 모달창의 등록버튼을 누를시 input에 있는 값들을 controller로 전송
	$(document).on('click', '.button.confirm.dayend', function(){
		var endData = {
			totalSell : $('#totalSell').val(),
			cashSell : $('#cashSell').val(),
			cardSell : $('#cardSell').val(),
			sellCount : $('#sellCount').val(),
			endSell : $('#endSell').val(),
			startSell : $('#startSell').val(),
			reserveId : $('#reserveId').val()
		};

		$.ajax({
			url: './dayendSubmit.cafe',
			type: 'post',
			data: JSON.stringify(endData),
			contentType: 'application/json; charset=utf-8',
			dataType: 'text',
			success: function(data){
				alert(data);
				$('.modal-dialog.dayend').attr('class', 'modal-dialog oe_hidden dayend');
			},
			error: function(error){
				console.log('error');
			}
		});
	});


	// 정산 모달의 취소 창을 누르면 정산 모달을 숨김
	$(document).on('click', '.button.cancel.dayend', function(){
		$('.modal-dialog.dayend').attr('class', 'modal-dialog oe_hidden dayend');
	});


	// 어드민 ERP 페이지로 이동하기 위한 로그인
	$(document).on('click', '.header-button', function(){
		location.href = "./login.cafe";
	});
	
</script>
        
</head>
<body class="">

   <div class="o_loading" style="display: none;">Memuat</div>
   <div class="o_action_manager">
      <div class="pos-receipt-print"></div>

      <div class="pos">
         <div class="pos-topheader">
            <div class="pos-branding">
               <img class="pos-logo" src="/point_of_sale/static/src/img/logo.png"
                  alt="Logo">
            </div>
            <div class="pos-rightheader">
               <div class="order-selector">
                    <span class="orders touch-scrollable">
                     <span
                        class="order-button select-order selected beverage"
                        data-uid="1">HOT
                     </span>

                     <span
                        class="order-button select-order selected beverage"
                        data-uid="2">ICE
                     </span>

                     <span
                        class="order-button select-order selected beverage"
                        data-uid="3">JUICE
                     </span>

                     <span
                        class="order-button select-order selected beverage"
                        data-uid="4">TEA
                     </span>

                     <span
                        class="order-button select-order selected option"
                        data-uid="5">Opt.
                     </span>
                  </span>
               </div>

               <div class="oe_status">
                  <span class="username"> kostarbucks </span>
               </div>
               <div class="oe_status js_synch">
                  <span class="js_msg oe_hidden"></span>
                  <div class="js_connected oe_icon oe_green">
                     <i class="fa fa-fw fa-wifi" role="img"
                        aria-label="Synchronisation Connected"
                        title="Synchronisation Connected"></i>
                  </div>
                  <div class="js_connecting oe_icon oe_hidden">
                     <i class="fa fa-fw fa-spin fa-spinner" role="img"
                        aria-label="Synchronisation Connecting"
                        title="Synchronisation Connecting"></i>
                  </div>
                  <div class="js_disconnected oe_icon oe_red oe_hidden">
                     <i class="fa fa-fw fa-wifi" role="img"
                        aria-label="Synchronisation Disconnected"
                        title="Synchronisation Disconnected"></i>
                  </div>
                  <div class="js_error oe_icon oe_red oe_hidden">
                     <i class="fa fa-fw fa-warning" role="img"
                        aria-label="Synchronisation Error" title="Synchronisation Error"></i>
                  </div>
               </div>
               <div class="header-button">로그인</div>
            </div>
         </div>

         <div class="pos-content">

            <div class="window">
               <div class="subwindow">
                  <div class="subwindow-container">
                     <div class="subwindow-container-fix screens">

                        <div class="scale-screen screen oe_hidden">
                           <div class="screen-content">
                              <div class="top-content">
                                 <span class="button back"> <i
                                    class="fa fa-angle-double-left"></i> Kembali
                                 </span>
                                 <h1 class="product-name">Unnamed Product</h1>
                              </div>
                              <div class="centered-content">
                                 <div class="weight js-weight">0.000 Kg</div>
                                 <div class="product-price">$ 0,00/</div>
                                 <div class="computed-price">123.14 €</div>
                                 <div class="buy-product">
                                    Order <i class="fa fa-angle-double-right"></i>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="product-screen screen">
                           <div class="leftpane">
                              <div class="window">
                                 <div class="subwindow">
                                    <div class="subwindow-container">
                                       <div class="subwindow-container-fix">
                                          <div class="order-container">
                                             <div class="order-scroller touch-scrollable">
                                                <div class="order">						
			 				                        <div class="order-empty">
							                            <i class="fa fa-shopping-cart" role="img" aria-label="Shopping cart" title="Shopping cart"></i>
							                            <h1>물건을 선택하면 리스트에 등록됩니다.</h1>
                        							</div> 
                                                </div>
                                                <div class="order2">
                                                                                                 	
                                                
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>

                                 <div class="subwindow collapsed">
                                    <div class="subwindow-container">
                                       <div class="subwindow-container-fix pads">
                                          <div class="control-buttons oe_hidden"></div>
                                          <div class="actionpad">
                                             <button class="button attend">
                                                <i class="fa fa-user" role="img" aria-label="Pelanggan"
                                                   title="Pelanggan"></i> 출근/퇴근

                                             </button>
                                             <button type="button" class="button pay" data-toggle="modal" data-target="#posPayModal">
                                                <div class="pay-circle">
                                                   <i class="fa fa-chevron-right" role="img"
                                                      aria-label="Pay" title="Pay"></i>
                                                </div>
                                                	결제
                                             </button>
                                          </div>
                                          <div class="numpad">
                                             <button class="input-button number-char">1</button>
                                             <button class="input-button number-char">2</button>
                                             <button class="input-button number-char">3</button>
                                             <button class="mode-button selected-mode"
                                                data-mode="quantity">미정</button>
                                             <br>
                                             <button class="input-button number-char">4</button>
                                             <button class="input-button number-char">5</button>
                                             <button class="input-button number-char">6</button>
                                             <button class="mode-button coupon" data-mode="discount">쿠폰</button>
                                             <br>
                                             <button class="input-button number-char">7</button>
                                             <button class="input-button number-char">8</button>
                                             <button class="input-button number-char">9</button>
                                             <button class="mode-button dayend" data-mode="price">정산</button>
                                             <br>
                                             <button class="input-button numpad-minus">+/-</button>
                                             <button class="input-button number-char">0</button>
                                             <button class="input-button number-char">.</button>
                                             <button class="mode-button ready">준비</button>
                                          </div>
                                       </div>
                                    </div>
                                 </div>

                              </div>
                           </div>
                           <div class="rightpane">
                              <table class="layout-table">

                                 <tbody>

                                    <tr class="content-row">
                                       <td class="content-cell">
                                          <div class="content-container">
                                             <div class="product-list-container">
                                                <div class="product-list-scroller touch-scrollable">

                                                   <div class="product-list">

                                                   </div>

                                                </div>
                                                <span class="placeholder-ScrollbarWidget"></span>
                                             </div>
                                          </div>
                                       </td>
                                    </tr>

                                 </tbody>
                              </table>
                           </div>
                        </div>
                        <div class="clientlist-screen screen oe_hidden">
                           <div class="screen-content">
                              <section class="top-content">
                                 <span class="button back"> <i
                                    class="fa fa-angle-double-left"></i> Batalkan
                                 </span> <span class="searchbox"> <input
                                    placeholder="Cari Pelanggan"> <span
                                    class="search-clear"></span>
                                 </span> <span class="searchbox"></span> <span
                                    class="button new-customer" role="img"
                                    aria-label="Add a customer" title="Add a customer"> <i
                                    class="fa fa-user"></i> <i class="fa fa-plus"></i>
                                 </span> <span class="button next oe_hidden highlight"> Pilih
                                    Pelanggan <i class="fa fa-angle-double-right"></i>
                                 </span>
                              </section>
                              <section class="full-content">
                                 <div class="window">
                                    <section class="subwindow collapsed">
                                       <div class="subwindow-container collapsed">
                                          <div
                                             class="subwindow-container-fix client-details-contents">
                                          </div>
                                       </div>
                                    </section>
                                    <section class="subwindow">
                                       <div class="subwindow-container">
                                          <div
                                             class="subwindow-container-fix touch-scrollable scrollable-y">
                                             <table class="client-list">
                                                <thead>
                                                   <tr>
                                                      <th>Nama</th>
                                                      <th>Alamat</th>
                                                      <th>Telepon</th>
                                                   </tr>
                                                </thead>
                                                <tbody class="client-list-contents">
                                                </tbody>
                                             </table>
                                          </div>
                                       </div>
                                    </section>
                                 </div>
                              </section>
                           </div>
                        </div>
                        <div class="receipt-screen screen oe_hidden">
                           <div class="screen-content">
                              <div class="top-content">
                                 <h1>
                                    Kembalian: <span class="change-value">0.00</span>
                                 </h1>
                                 <span class="button next"> Order Berikutnya <i
                                    class="fa fa-angle-double-right"></i>
                                 </span>
                              </div>
                              <div class="centered-content touch-scrollable">
                                 <h2 class="print_invoice">The order has been
                                    synchronized earlier. To print the invoice please refer to
                                    the order in the backend</h2>
                                 <div class="button print">
                                    <i class="fa fa-print"></i> Cetak Resi
                                 </div>
                                 <div class="pos-receipt-container"></div>
                              </div>
                           </div>
                        </div>
                        <div class="payment-screen screen oe_hidden">
                           <div class="screen-content">
                              <div class="top-content">
                                 <span class="button back"> <i
                                    class="fa fa-angle-double-left"></i> Kembali
                                 </span>
                                 <h1>Pembayaran</h1>
                                 <span class="button next"> Validasi <i
                                    class="fa fa-angle-double-right"></i>
                                 </span>
                              </div>
                              <div class="left-content pc40 touch-scrollable scrollable-y">

                                 <div class="paymentmethods-container">
                                    <div class="paymentmethods">

                                       <div class="button paymentmethod" data-id="1">Kas</div>

                                       <div class="button paymentmethod" data-id="2">Bank</div>

                                    </div>
                                 </div>

                              </div>
                              <div class="right-content pc60 touch-scrollable scrollable-y">

                                 <section class="paymentlines-container">
                                    <div class="paymentlines-empty">

                                       <div class="total">$ 0,00</div>

                                       <div class="message">Silahkan pilih metode
                                          pembayaran.</div>
                                    </div>
                                 </section>

                                 <section class="payment-numpad">
                                    <div class="numpad">
                                       <button class="input-button number-char" data-action="1">1</button>
                                       <button class="input-button number-char" data-action="2">2</button>
                                       <button class="input-button number-char" data-action="3">3</button>
                                       <button class="mode-button" data-action="+10">+10</button>
                                       <br>
                                       <button class="input-button number-char" data-action="4">4</button>
                                       <button class="input-button number-char" data-action="5">5</button>
                                       <button class="input-button number-char" data-action="6">6</button>
                                       <button class="mode-button" data-action="+20">+20</button>
                                       <br>
                                       <button class="input-button number-char" data-action="7">7</button>
                                       <button class="input-button number-char" data-action="8">8</button>
                                       <button class="input-button number-char" data-action="9">9</button>
                                       <button class="mode-button" data-action="+50">+50</button>
                                       <br>
                                       <button class="input-button numpad-char" data-action="-">+/-</button>
                                       <button class="input-button number-char" data-action="0">0</button>
                                       <button class="input-button number-char" data-action=",">,</button>
                                       <button class="input-button numpad-backspace"
                                          data-action="BACKSPACE">
                                          <img src="/point_of_sale/static/src/img/backspace.png"
                                             width="24" height="21" alt="Backspace">
                                       </button>
                                    </div>
                                 </section>

                                 <div class="payment-buttons">
                                    <div class="button js_set_customer">
                                       <i class="fa fa-user" role="img" aria-label="Pelanggan"
                                          title="Pelanggan"></i> <span class="js_customer_name">
                                          Pelanggan </span>
                                    </div>

                                    <div class="button js_email">
                                       <i class="fa fa-inbox"></i> Email
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>

            <div class="keyboard_frame">
               <ul class="keyboard simple_keyboard">
                  <li class="symbol firstitem row_qwerty"><span class="off">q</span><span
                     class="on">1</span></li>
                  <li class="symbol"><span class="off">w</span><span class="on">2</span></li>
                  <li class="symbol"><span class="off">e</span><span class="on">3</span></li>
                  <li class="symbol"><span class="off">r</span><span class="on">4</span></li>
                  <li class="symbol"><span class="off">t</span><span class="on">5</span></li>
                  <li class="symbol"><span class="off">y</span><span class="on">6</span></li>
                  <li class="symbol"><span class="off">u</span><span class="on">7</span></li>
                  <li class="symbol"><span class="off">i</span><span class="on">8</span></li>
                  <li class="symbol"><span class="off">o</span><span class="on">9</span></li>
                  <li class="symbol lastitem"><span class="off">p</span><span
                     class="on">0</span></li>

                  <li class="symbol firstitem row_asdf"><span class="off">a</span><span
                     class="on">@</span></li>
                  <li class="symbol"><span class="off">s</span><span class="on">#</span></li>
                  <li class="symbol"><span class="off">d</span><span class="on">%</span></li>
                  <li class="symbol"><span class="off">f</span><span class="on">*</span></li>
                  <li class="symbol"><span class="off">g</span><span class="on">/</span></li>
                  <li class="symbol"><span class="off">h</span><span class="on">-</span></li>
                  <li class="symbol"><span class="off">j</span><span class="on">+</span></li>
                  <li class="symbol"><span class="off">k</span><span class="on">(</span></li>
                  <li class="symbol lastitem"><span class="off">l</span><span
                     class="on">)</span></li>

                  <li class="symbol firstitem row_zxcv"><span class="off">z</span><span
                     class="on">?</span></li>
                  <li class="symbol"><span class="off">x</span><span class="on">!</span></li>
                  <li class="symbol"><span class="off">c</span><span class="on">"</span></li>
                  <li class="symbol"><span class="off">v</span><span class="on">'</span></li>
                  <li class="symbol"><span class="off">b</span><span class="on">:</span></li>
                  <li class="symbol"><span class="off">n</span><span class="on">;</span></li>
                  <li class="symbol"><span class="off">m</span><span class="on">,</span></li>
                  <li class="delete lastitem">hapus</li>

                  <li class="numlock firstitem row_space"><span class="off">123</span><span
                     class="on">ABC</span></li>
                  <li class="space">&nbsp;</li>
                  <li class="symbol"><span class="off">.</span><span class="on">.</span></li>
                  <li class="return lastitem">retur</li>
               </ul>
               <p class="close_button">tutup</p>
            </div>
            <div class="debug-widget oe_hidden">
               <h1>Tampilan Debug</h1>
               <div class="toggle" title="Dismiss" role="img" aria-label="Dismiss">
                  <i class="fa fa-times"></i>
               </div>
               <div class="content">
                  <p class="category">Timbangan Elektronik</p>
                  <ul>
                     <li><input type="text" class="weight"></li>
                     <li class="button set_weight">Set Berat</li>
                     <li class="button reset_weight">Reset</li>
                  </ul>

                  <p class="category">Pemindai Barcode</p>
                  <ul>
                     <li><input type="text" class="ean"></li>
                     <li class="button barcode">Pindai</li>
                     <li class="button custom_ean">Pindai EAN-13</li>
                  </ul>

                  <p class="category">Order</p>

                  <ul>
                     <li class="button delete_orders">Hapus Order Sudah Dibayar</li>
                     <li class="button delete_unpaid_orders">Hapus Order Belum
                        Dibayar</li>
                     <li class="button export_paid_orders">Ekspor Order Sudah
                        Dibayar</li>
                     <a><li class="button download_paid_orders oe_hidden">Unduh
                           Order Yang Sudah Dibayar</li></a>
                     <li class="button export_unpaid_orders">Ekspor Order Belum
                        Dibayar</li>
                     <a><li class="button download_unpaid_orders oe_hidden">Unduh
                           Order Yang Belum Dibayar</li></a>
                     <li class="button import_orders" style="position: relative">
                        Impor Order <input type="file"
                        style="opacity: 0; position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: 0; cursor: pointer">
                     </li>
                  </ul>

                  <p class="category">Status Perangkat Keras</p>
                  <ul>
                     <li class="status weighing">Menimbang</li>
                     <li class="button display_refresh">Perbarui Tampilan</li>
                  </ul>
                  <p class="category">Acara Perangkat Keras</p>
                  <ul>
                     <li class="event open_cashbox">Buka Cashbox</li>
                     <li class="event print_receipt">Cetak Resi</li>
                     <li class="event scale_read">Baca Timbangan</li>
                  </ul>
               </div>
            </div>
         </div>

         <div class="popups">
            <div role="dialog" class="modal-dialog oe_hidden attend">
               <div class="popup popup-confirm" style="height: 300px;">
                  <header class="title">근태관리</header>
                  <main class="body" style="height: auto;">
                  	<table align="center">
                        <tr>
                        	<td><span>이름 </span></td>
                         	<td><input type="text" name="employeeName" id="employeeName" placeholder="이름를 입력하세요" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;"></td> 
                         </tr>
                         <tr>
                         	<td><span>주민등록번호 </span></td>
                         	<td><input type="password" name="employeeIdenti" id="employeeIdenti" placeholder="주민등록번호를 입력하세요" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;"></td>
                     	</tr>
                     </table>    
                         <input type="radio" name="attend" value="출근" checked="checked" style="margin-top: 20px;"/>출근
                         <input type="radio" name="attend" value="퇴근"/>퇴근
            		</main>
                  <footer class="footer">
                     <div class="button confirm attend">등록</div>
                     <div class="button cancel attend">취소</div>
                  </footer>
               </div>         
            </div>
            <div role="dialog" class="modal-dialog oe_hidden pay">
               <div class="popup popup-confirm">
                  <header class="title">결제</header>
                  <main class="body">
                        <span>전화번호</span>
                         <input type="text" name="phone" id="customerPhone" placeholder="전화번호를 입력해주세요" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;"> <br> 
                         <input type="radio" name="payment" value="현금" style="margin-top: 20px;"/>현금
                         <input type="radio" name="payment" value="카드" checked="checked" />카드
            		</main>
                  <footer class="footer">
                     <div class="button confirm pay">결제</div>
                     <div class="button cancel pay">취소</div>
                  </footer>
               </div>         
            </div>
            
            <div role="dialog" class="modal-dialog oe_hidden coupon">
               <div class="popup popup-confirm">
                  <header class="title">쿠폰조회</header>
                  <main class="body">
                        <span>전화번호</span>
                         <input type="text" name="phoneCouponInput" id="phoneCouponInput" placeholder="전화번호를 입력해주세요" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 5px;">
                         <div class="button check coupon" style="width: 80px; margin-top: 0px; margin-right: 0px;">조회</div>
                         <br>
                         <span id="validCouponText"></span>
            		</main>
                  <footer class="footer">
                     <div class="button confirm coupon">사용</div>
                     <div class="button cancel coupon">취소</div>
                  </footer>
               </div>         
            </div>

				<div role="dialog" class="modal-dialog oe_hidden dayend">
               <div class="popup popup-confirm" style="height: 500px;">
                  <header class="title">마감정산</header>
                  <main class="body" style="height: auto;">
                  	<table align="center">
                        <tbody><tr>
                        	<td><span>총 매출액</span></td>
                         	<td><input type="text" name="totalSell" id="totalSell" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;" readonly="readonly"></td> 
                         </tr>
                         <tr>
                         	<td><span>현금 매출액</span></td>
                         	<td><input type="text" name="cashSell" id="cashSell" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;" readonly="readonly"></td>
                     	</tr>
                     <tr>
                        	<td><span>카드 매출액</span></td>
                         	<td><input type="text" name="cardSell" id="cardSell" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;" readonly="readonly"></td> 
                         </tr><tr>
                        	<td><span>총 주문 건수</span></td>
                         	<td><input type="text" name="sellCount" id="sellCount" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;" readonly="readonly"></td> 
                         </tr><tr>
                        	<td><span>영업 시작시간</span></td>
                         	<td><input type="text" name="startSell" id="startSell" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;" readonly="readonly"></td> 
                         </tr><tr>
                        	<td><span>영업 종료시간</span></td>
                         	<td><input type="text" name="endSell" id="endSell" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;" readonly="readonly"></td> 
                         </tr><tr>
                        	<td><span>시작 준비금</span></td>
                         	<td><input type="text" name="readyCost" id="readyCost" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;" readonly="readonly"></td> 
                         	<td><input type="hidden" name="reserveId" id="reserveId"  style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;"></td>
                         </tr></tbody></table>    
                         </main>
                  <footer class="footer">
                     <div class="button confirm dayend">등록</div>
                     <div class="button cancel dayend">취소</div>
                  </footer>
               </div>         
            </div>
            
            <div role="dialog" class="modal-dialog oe_hidden ready">
               <div class="popup popup-confirm" style="height: 300px;">
                  <header class="title">영업준비</header>
                  <main class="body" style="height: auto;">
                  	<table align="center">
                        <tbody><tr>
                        	<td><span>영업 시작시간</span></td>
                         	<td><input type="text" name="startTime" id="startTime" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;" readonly="readonly"></td> 
                         </tr>
                         <tr>
                         	<td><span>영업 준비금</span></td>
                         	<td><input type="text" name="readyMoney" id="readyMoney" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset; margin-left: 20px;"></td>
                     	</tr>
                     </tbody></table>    
                         </main>
                  <footer class="footer">
                     <div class="button confirm ready">등록</div>
                     <div class="button cancel ready">취소</div>
                  </footer>
               </div>         
            </div>
            

         <div class="loader oe_hidden" style="opacity: 0;">
            <div class="loader-feedback oe_hidden">
               <h1 class="message">Memuat</h1>
               <div class="progressbar">
                  <div class="progress" width="50%"></div>
               </div>
               <div class="oe_hidden button skip">Lewati</div>
            </div>
         </div>

      </div>
   </div>
</body>
</html>