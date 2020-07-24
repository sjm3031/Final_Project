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
	                   info += '<div class="product-img"> <i class="fa fa-camera fa-5x" role="img" aria-label="Shopping cart" title="Shopping cart"></i>';
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
 		var info3 = '<div class="summary clearfix"><div class="line"><div class="entry total">';
		info3 += '<span class="badge">Total: </span> <span class="value">$ ' + total + '</span>';
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
				info += '<span class="product_code" hidden="true">' + data.cafe_product_code + '</span>';
				info += '<span class="product-name">' + data.cafe_product_name + '</span>';
				info += '<span class="price">' + data.cafe_product_price + '</span>';
				info += '<span class="info-list">Option : </span>';
				info +='</li>';
				total += data.cafe_product_price;
				$(".orderlines").append(info);
			
				/* 토탈화면출력 */
				var info3 = '<div class="summary clearfix"><div class="line"><div class="entry total">';
				info3 += '<span class="badge">Total: </span> <span class="value">' + total + ' 원</span>';
				info3 += '</div></div></div>';
				$(".order2").html(info3);	
	
	       },
	       error: function(error){
	          console.log('error');
	       }
	    });
	 });

	/* 클릭한 데이터 값 */
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
			      extra = '<span class="option-code" hidden="true">' + data.product_add_code +'</span>';
			      var price = $('.orderline:last').children('.price').text();
			      price = Number(price);
			      price += data.product_add_price;
			      total += data.product_add_price;
			      $('.orderline:last').children('.price').html(price);
			      $('.orderline:last').append(extra);
			      $('.entry.total').children('.value').html(total + ' 원');
			      //alert(price);
			      $('.info-list:last').append('<b>'+data.product_add_name +'</b>' + ' ');
		      },
		      error: function(error){
		         console.log('error');
		      }
		});
	});
	/*	$(document).on('click', '.actionpad .button.pay', function(){		
 //		var y =  $('.orderline :input').serializeArray();
//		var json_str = JSON.stringify(y); 
		var codeArr = [];
		var nameArr = [];
		var priceArr = [];
		var otpArr = [];
		$('li.orderline').each(function(){
			nameArr.push($(this).children('.product-name').text());
			priceArr.push($(this).children('.price').text());
			otpArr.push($(this).children('.option-code').text());
			});
	//	alert('['+nameArr +']'+ '\n'+priceArr);
		for(var i=0;i<nameArr.length;i++){	
			alert('이름 : '+nameArr[i]+"\n"+'가격 : '+priceArr[i]+'\n'+'옵션코드 : '+otpArr[i]);		
		}

		});
*/


	   // 결제 버튼 누를시 상품주문 리스트를 가지고 PosController로 전송
	   $(document).on('click', '.button.pay.abc.abc', function(){
	      var orderJson = {
	            order : [],
	            total : '',
	            count : '',
	            customer : ''
	      };
	      
	      $('.orderline').each(function(){
	         var orderlist = {
	            code : '',
	            name : '',
	            price : '',
	            option : []
	         };

	         orderlist.code = $(this).children('.product_code').text();
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
	      alert(JSON.stringify(orderJson));

	      $.ajax({
	         url: './orderData.cafe',
	         type: 'post',
	         data: JSON.stringify(orderJson),
	         contentType: 'application/json; charset=utf-8',
	         dataType: 'json',
	         success: function(data){
	            console.log(data);
	         },
	         error: function(error){
	            console.log('error');
	         }
	      });
	   });

		$(document).on('click', '.button.pay', function(){
			$('.modal-dialog.oe_hidden').attr('class', 'modal-dialog');
		});

		$(document).on('click', '.button.cancel', function(){
			$('.modal-dialog').attr('class', 'modal-dialog oe_hidden');
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
               <div class="header-button">Close</div>
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
							                            <h1>Keranjang belanja Anda masih kosong</h1>
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
                                             <button class="button set-customer ">
                                                <i class="fa fa-user" role="img" aria-label="Pelanggan"
                                                   title="Pelanggan"></i> Pelanggan

                                             </button>
                                             <button class="button pay">
                                                <div class="pay-circle">
                                                   <i class="fa fa-chevron-right" role="img"
                                                      aria-label="Pay" title="Pay"></i>
                                                </div>
                                                Pembayaran
                                             </button>
                                          </div>
                                          <div class="numpad">
                                             <button class="input-button number-char">1</button>
                                             <button class="input-button number-char">2</button>
                                             <button class="input-button number-char">3</button>
                                             <button class="mode-button selected-mode"
                                                data-mode="quantity">Jml</button>
                                             <br>
                                             <button class="input-button number-char">4</button>
                                             <button class="input-button number-char">5</button>
                                             <button class="input-button number-char">6</button>
                                             <button class="mode-button" data-mode="discount">Diskon</button>
                                             <br>
                                             <button class="input-button number-char">7</button>
                                             <button class="input-button number-char">8</button>
                                             <button class="input-button number-char">9</button>
                                             <button class="mode-button" data-mode="price">Harga</button>
                                             <br>
                                             <button class="input-button numpad-minus">+/-</button>
                                             <button class="input-button number-char">0</button>
                                             <button class="input-button number-char">.</button>
                                             <button class="input-button numpad-backspace">
                                                <img style="pointer-events: none;"
                                                   src="/point_of_sale/static/src/img/backspace.png"
                                                   width="24" height="21" alt="Backspace">
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                 </div>

                              </div>
                           </div>
                           <div class="rightpane">
                              <table class="layout-table">

                                 <tbody>
                                    <tr class="header-row">
                                       <td class="header-cell">
                                          <div>
                                             <header class="rightpane-header">
                                                <div class="breadcrumbs">
                                                   <span class="breadcrumb"> <span
                                                      class=" breadcrumb-button breadcrumb-home js-category-switch">
                                                         <i class="fa fa-home" role="img" aria-label="Beranda"
                                                         title="Beranda"></i>
                                                   </span>
                                                   </span>

                                                </div>
                                                <div class="searchbox">
                                                   <input placeholder="Cari Produk"> <span
                                                      class="search-clear left"> <i
                                                      class="fa fa-search"></i>
                                                   </span>
                                                </div>
                                             </header>

                                          </div>
                                       </td>
                                    </tr>

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
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-confirm">
                  <header class="title">결제</header>
                  <main class="body">
                  		<span>전화번호</span>
                   		<input type="text" name="phone" placeholder="전화번호를 입력해주세요" style="box-shadow: 0px 0px 0px 1px rgb(220, 220, 220) inset"> <br> 
                   		<input type="radio" name="payment" value="현금" />현금
                   		<input type="radio" name="payment" value="카드" checked="checked" />카드
				</main>
                  <footer class="footer">
                     <div class="button confirm">결제</div>
                     <div class="button cancel">취소</div>
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