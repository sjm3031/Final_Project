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


<script src="https://code.jquery.com/jquery-3.5.1.slim.js" integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" href="/web/static/src/img/favicon.ico"
   type="image/x-icon" />

<script type="text/javascript">
            var odoo = {"csrf_token": "24015ccca7779d034942eecf9bcb3e24a3be7e6fo", "session_info": {"uid": 2, "is_system": true, "is_admin": true, "user_context": {"lang": "id_ID", "tz": false, "uid": 2, "allowed_company_ids": [1]}, "db": "yunhabucks", "server_version": "13.0+e", "server_version_info": [13, 0, 0, "final", 0, "e"], "name": "kostarbucks", "username": "curu9595@naver.com", "partner_display_name": "kostarbucks", "company_id": 1, "partner_id": 3, "web.base.url": "https://yunhabucks.odoo.com", "user_companies": {"current_company": [1, "yunhabucks"], "allowed_companies": [[1, "yunhabucks"]]}, "currencies": {"1": {"symbol": "\u20ac", "position": "after", "digits": [69, 2]}, "2": {"symbol": "$", "position": "before", "digits": [69, 2]}}, "show_effect": "True", "display_switch_company_menu": false, "cache_hashes": {"load_menus": "bce3001886e8302ad06a65c6c06f498fcee6f249", "qweb": "d7d3efc0abdc51b49619c2a164151d539dee0bdf", "translations": "6f75b58f446f22fc1a04d5968da004072454c645"}, "max_time_between_keys_in_ms": 55, "company_currency_id": 2, "companies_currency_id": {"1": 2}, "warning": "admin", "expiration_date": "2020-08-10 06:51:55", "expiration_reason": "trial", "web_tours": ["point_of_sale_tour"], "out_of_office_message": false, "map_box_token": false, "db_uuid": "efd3d5dc-7f4c-4b73-92ea-fc1d404a2007", "support_token": "557855a7069602dd55b96badb448328765137c3aa49c8f30b480f35e5fee8ae1", "support_origin": false}, "login_number": 1, "debug": ""};
        </script>

<link type="text/css" rel="stylesheet"
   href="/erp/resources/web/content/302-2b1892c/point_of_sale.assets.css" />



<script type="text/javascript" id="loading-script">
            odoo.define('web.web_client', function (require) {
                var WebClient = require('web.AbstractWebClient');
                var web_client = new WebClient();

                web_client._title_changed = function() {};
                web_client.show_application = function() {
                    return web_client.action_manager.do_action("pos.ui");
                };

                $(function () {
                    web_client.setElement($(document.body));
                    web_client.start();
                });
                return web_client;
            });
        </script>
        
        
        <script type="text/javascript">




        

	$(function(){
    	$('.product').each(function(i){
        	$(this).click(function(e){
            	   
            	var id = $(this).children('.product-name').text();
                var mo = $(this).children('.product-img').children('.price-tag').text();
                var id2 = $(this).data('product-id');
   //               $('.order').text(id);
//                alert("제품명"+ id+"\n"+ "아이디"+id2);
//					alert(mo);
/*   				  <span class="product-name">
				var tag = "<input type='button' id='btn' value='버튼' />";
				$('#wrta').html("Review Now");
				$("body").append(tag); */
  //         	   $(".order").empty();	

				

				

				info = '<ul class="orderlines"><li class="orderline selected">';
				info += '<span class="product-name">'+id+'</span>';
				info += '<span class="price">'+mo+'</span>';
				info += '<ul class="info-list"><li class="info">';
				info += '<em>1,000</em>';
				info += 'Units pada $ 0,00 / Units';
				info +='</li></ul></li></ul>';

				

				info += '<div class="summary clearfix"><div class="line"><div class="entry total">';
				info += '<span class="badge">Total: </span> <span class="value">$ 0,00</span>';
				info += '<div class="subentry">Pajak: <span class="value">$ 0,00</span>';
				info += '</div></div></div></div>';
				
				// 	$(".order").empty();	
				$(".order").html(info);	

				

				
/*            		$('span.product-name').html(id);
				$('span.price').html(mo); */
           		
               });
            });
         });
 





        

/*         $(function(){
            $('.product').click(function(){
       //        var id = $('.product').data('#test2').val();
      			var tmp = $('article div.product-name').text();
       //        var id = $('.product-name').val();
               alert(tmp);
            });
         }); */



/*      	$(document).ready(function(){

    		$('.product').each(function(i){

    			$(this).click(function(e){
    				
    				e.preventDefault();
					var id = $('.product').data('product-id');
    				alert(i+'번 버튼 '+id);
    			});
    		});
    	}); */

/*    			$(function(){
   		        $(".product").click(function(){
   		            
   		            $("input[name='test2']").each(function (i) {
   		 
   		                 alert( i + "번째 메뉴이름 : " + $("input[name='test2']").eq(i).attr("value") );
   		 
   		            });
   		        });
   	   			
			}) */











        
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
                  <span class="orders touch-scrollable"> <span
                     class="order-button select-order selected"
                     data-uid="00001-001-0001"> <span class="order-sequence">
                           1 </span> 03:52
                  </span>



                  </span> <span class="order-button square neworder-button"> <i
                     class="fa fa-plus" role="img" aria-label="New order"
                     title="New order"></i>
                  </span> <span class="order-button square deleteorder-button"> <i
                     class="fa fa-minus" role="img" aria-label="Delete order"
                     title="Delete order"></i>
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
                    
                    
                									
		
		
		
		
		
		
							<!-- 메뉴 클릭시 생성되는 태그 --> 		
									
<!-- <ul class="orderlines"><li class="orderline selected">
            <span class="product-name">
                Diskon
                
            </span>
            <span class="price">
                $ 0,00
            </span>
            <ul class="info-list">
                
                    <li class="info">
                        <em>
                            1,000
                        </em>
                        Units
                        pada
                        
                            $ 0,00
                        
                        /
                        Units
                    </li>
                
                
            </ul>
        </li></ul>
        
        
        
        <div class="summary clearfix">
                            <div class="line">
                                <div class="entry total">
                                    <span class="badge">Total: </span> <span class="value">$ 0,00</span>
                                    <div class="subentry">Pajak: <span class="value">$ 0,00</span>
        
        
        </div>
                                </div>
                            </div>
                        </div> -->
                    
                
        <!-- 메뉴 클릭시 생성되는 태그 여기까지--> 
        
        
        
        


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
                                                   </span> <span class="search-clear right"> <i
                                                      class="fa fa-remove"></i>
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

                                                      <c:forEach items="${list }" var="list">
                                                         <article class="product" data-product-id="${list.cafe_product_code }"
                                                            tabindex="0" aria-labelledby="article_product_${list.cafe_product_code }" >
                                                            <div class="product-img">
                                                               <img src="/erp/sale/upload/${list.cafe_product_img}" alt="Product image"> <span
                                                                  class="price-tag"> ${list.cafe_product_price } </span>


                                                            </div>
                                                            <div class="product-name" id="article_product_${list.cafe_product_code }" >
                                                               ${list.cafe_product_name } </div>
                                                             
                                                               
                                                         </article>
                                                      </c:forEach>
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
               <div class="popup popup-alert">
                  <p class="title">Alert</p>
                  <p class="body"></p>
                  <div class="footer">
                     <div class="button cancel">Ok</div>
                  </div>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-error">
                  <p class="title">Error</p>
                  <p class="body"></p>
                  <div class="footer">
                     <div class="button cancel">Ok</div>
                  </div>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-error">
                  <header class="title">Error</header>
                  <main class="body traceback"></main>
                  <footer class="footer">
                     <div class="button cancel">Ok</div>
                     <div class="button stop_showing_sync_errors">Don't show
                        again</div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-error">
                  <header class="title">Error</header>
                  <main class="body traceback"></main>
                  <footer class="footer">
                     <div class="button cancel">Ok</div>
                     <a><div class="button icon download_error_file oe_hidden">
                           <i class="fa fa-arrow-down" role="img"
                              aria-label="Download error" title="Download error"></i>
                        </div></a>
                     <div class="button icon download">
                        <i class="fa fa-download" role="img" aria-label="Unduh"
                           title="Unduh"></i>
                     </div>
                     <div class="button icon email">
                        <i class="fa fa-paper-plane" role="img"
                           aria-label="Kirim dengan surel" title="Kirim dengan surel"></i>
                     </div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-barcode">
                  <header class="title">
                     Barcode Tidak Diketahui <br> <span class="barcode"></span>
                  </header>
                  <main class="body">Point of Sale tidak dapat menemukan
                     produk, klien, karyawan atau tindakan yang terkait dengan barcode
                     yang dipindai.</main>
                  <footer class="footer">
                     <div class="button cancel">Ok</div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-confirm">
                  <header class="title">Confirm ?</header>
                  <main class="body"></main>
                  <footer class="footer">
                     <div class="button confirm">Konfirmasi</div>
                     <div class="button cancel">Batalkan</div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-selection">
                  <header class="title">Select</header>
                  <div class="selection scrollable-y touch-scrollable"></div>
                  <footer class="footer">
                     <div class="button cancel">Batalkan</div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-textinput">
                  <header class="title"></header>
                  <input type="text" value="">
                  <div class="footer">
                     <div class="button confirm">Ok</div>
                     <div class="button cancel">Batalkan</div>
                  </div>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-textinput">
                  <header class="title"></header>
                  <textarea></textarea>
                  <footer class="footer">
                     <div class="button confirm">Ok</div>
                     <div class="button cancel">Batalkan</div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-text">
                  <header class="title"></header>
                  <main class="packlot-lines"></main>
                  <footer class="footer">
                     <div class="button confirm">Ok</div>
                     <div class="button cancel">Batalkan</div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-number">
                  <header class="title"></header>
                  <div class="popup-input value active"></div>
                  <div class="popup-numpad">
                     <button class="input-button number-char" data-action="1">1</button>
                     <button class="input-button number-char" data-action="2">2</button>
                     <button class="input-button number-char" data-action="3">3</button>

                     <button class="mode-button add" data-action="+10">+10</button>

                     <br>
                     <button class="input-button number-char" data-action="4">4</button>
                     <button class="input-button number-char" data-action="5">5</button>
                     <button class="input-button number-char" data-action="6">6</button>

                     <button class="mode-button add" data-action="+20">+20</button>

                     <br>
                     <button class="input-button number-char" data-action="7">7</button>
                     <button class="input-button number-char" data-action="8">8</button>
                     <button class="input-button number-char" data-action="9">9</button>

                     <button class="mode-button add" data-action="+50">+50</button>

                     <br>
                     <button class="input-button numpad-char" data-action="CLEAR">C</button>
                     <button class="input-button number-char" data-action="0">0</button>
                     <button class="input-button number-char dot"></button>
                     <button class="input-button numpad-backspace"
                        data-action="BACKSPACE">
                        <img style="pointer-events: none;"
                           src="/point_of_sale/static/src/img/backspace.png" width="24"
                           height="21" alt="Backspace">
                     </button>
                     <br>
                  </div>
                  <footer class="footer centered">
                     <div class="button cancel">Batalkan</div>
                     <div class="button confirm">Ok</div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-number popup-password">
                  <header class="title"></header>
                  <div class="popup-input value active"></div>
                  <div class="popup-numpad">
                     <button class="input-button number-char" data-action="1">1</button>
                     <button class="input-button number-char" data-action="2">2</button>
                     <button class="input-button number-char" data-action="3">3</button>

                     <button class="mode-button add" data-action="+10">+10</button>

                     <br>
                     <button class="input-button number-char" data-action="4">4</button>
                     <button class="input-button number-char" data-action="5">5</button>
                     <button class="input-button number-char" data-action="6">6</button>

                     <button class="mode-button add" data-action="+20">+20</button>

                     <br>
                     <button class="input-button number-char" data-action="7">7</button>
                     <button class="input-button number-char" data-action="8">8</button>
                     <button class="input-button number-char" data-action="9">9</button>

                     <button class="mode-button add" data-action="+50">+50</button>

                     <br>
                     <button class="input-button numpad-char" data-action="CLEAR">C</button>
                     <button class="input-button number-char" data-action="0">0</button>
                     <button class="input-button number-char dot"></button>
                     <button class="input-button numpad-backspace"
                        data-action="BACKSPACE">
                        <img style="pointer-events: none;"
                           src="/point_of_sale/static/src/img/backspace.png" width="24"
                           height="21" alt="Backspace">
                     </button>
                     <br>
                  </div>
                  <footer class="footer centered">
                     <div class="button cancel">Batalkan</div>
                     <div class="button confirm">Ok</div>
                  </footer>
               </div>
            </div>
            <div role="dialog" class="modal-dialog oe_hidden">
               <div class="popup popup-import">
                  <header class="title">Selesai Mengimpor Order</header>

                  <footer class="footer">
                     <div class="button cancel">Ok</div>
                  </footer>
               </div>
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