<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8") ; %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
    
    
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<!-- <html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="css/jquery.fancybox.css">

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>

    [if lt IE 9]>
    <html class="lt-ie9">
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/..">
            <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a> 
    </div>
    <script src="js/html5shiv.js"></script>
    <![endif]
 
    <script src='js/device.min.js'></script> 
</head>

<body>
<div class="page">
    ========================================================
                              HEADER
    =========================================================
    <header>

        <div class="camera_container">
            <div id="camera" class="camera_wrap">
                <div data-thumb="images/slide01_thumb.jpg" data-src="images/slide01.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="images/slide02_thumb.jpg" data-src="images/slide02.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="images/slide03_thumb.jpg" data-src="images/slide03.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
            </div>

            <div class="brand wow fadeIn">
                <h1 class="brand_name">
                    <a href="./">CAFE</a>
                </h1>
            </div>
        </div>
        
        <div class="toggle-menu-container">
            <nav class="nav">
                <div class="nav_title"></div>
                <a class="sf-menu-toggle fa fa-bars" href="#"></a>
                <ul class="sf-menu">
                    <li class="active">
                        <a href="./">HOME</a>
                    </li>
                    <li>
                        <a href="index-1.html">MENU</a>
                        <ul>
                            <li>
                                <a href="#">커피</a>
                                    <ul>
                                    <li>
                                        <a href="#">콜드부르</a>
                                    </li>
                                    <li>
                                        <a href="#">에스프레소</a>
                                    </li>
                                    <li>
                                        <a href="#">프라푸치노</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">음료</a>
                                <ul>
                                    <li>
                                        <a href="#">라떼</a>
                                    </li>
                                    <li>
                                        <a href="#">쥬스 & 에이드</a>
                                    </li>
                                    <li>
                                        <a href="#">티</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">디저트</a>
                                <ul>
                                    <li>
                                        <a href="#">베이커리</a>
                                    </li>
                                    <li>
                                        <a href="#">케이크</a>
                                    </li>
                                    <li>
                                        <a href="#">샌드위치</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="what.do">WHAT WE DO</a>
                    </li>
                    <li>
                        <a href="menu.do">ORDER</a>
                    </li>
						<li><a href="index-1.html">관리자(숨겨짐)</a>
							<ul>
								<li><a href="#">고객</a>
									<ul>
										<li><a href="customerList.do">고객조회</a></li>
										<li><a href="#">뭐할까</a></li>
										<li><a href="#">뭐넣어</a></li>
									</ul></li>
								<li><a href="#">인사</a>
									<ul>
										<li><a href="memberInsert.do">직원등록</a></li>
										<li><a href="memberList.do">직원조회</a></li>
										<li><a href="dailyCheck.do">근태일지</a></li>
										<li><a href="pay.do">급여조회</a></li>
									</ul></li>
								<li><a href="#">매출</a>
									<ul>
										<li><a href="goodsInsert.do">판매상품 등록</a></li>
										<li><a href="goodsList.do">판매상품 조회</a></li>
										<li><a href="salesList.do">매출조회</a></li>
									</ul></li>
									<li><a href="#">재고관리</a>
									<ul>
										<li><a href="stockInsert.do">재료 품목 등록</a></li>
										<li><a href="stockList.do">재고 조회</a></li>
										<li><a href="orderInsert.do">발주등록 / 조회</a></li>
										<li><a href="businessInsert.do">거래처등록 / 조회</a></li>
									</ul></li>
									<li><a href="">회계</a>
									<ul>
										<li><a href="accountingDaily.do">일일정산</a></li>
									</ul></li>
							</ul></li>
                    <li>
                        <a href="login.do">LOGIN</a>
                    </li>
                </ul>
            </nav>            
        </div>

    </header>
    ========================================================
                              CONTENT
    =========================================================
    <main>
        <section class="well">
            <div class="container">
                <h2><em>Welcome</em>to Our Place</h2>
                <div class="row">
                    <div class="grid_6">
                        <div class="img img__border"><div class="lazy-img" style="padding-bottom: 63.0282%;"><img data-src="images/page-1_img01.jpg" alt=""></div></div>
                        <p class="center indents-1">Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                    <div class="grid_6">
                        <div class="img img__border"><div class="lazy-img" style="padding-bottom: 63.0282%;"><img data-src="images/page-1_img02.jpg" alt=""></div></div>
                        <p class="center indents-1">Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                </div>
                <div class="decoration"><a href="#" class="btn">Read more</a></div>
                <h2><em>Our</em>Cuisine</h2>
            </div>            
            <div class="gallery">
                <div class="gallery_col-1">
                    <a data-fancybox-group="gallery" href="images/page-1_img03_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">
                        <img data-src="images/page-1_img03.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img04_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 74.13793103448276%;">
                        <img data-src="images/page-1_img04.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img05_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 94.6551724137931%;">
                        <img data-src="images/page-1_img05.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-2">
                    <a data-fancybox-group="gallery" href="images/page-1_img06_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 52.48322147651007%;">
                        <img data-src="images/page-1_img06.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img07_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 55.97315436241611%;">
                        <img data-src="images/page-1_img07.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img08_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 96.10738255033557%;">
                        <img data-src="images/page-1_img08.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-3">
                    <a data-fancybox-group="gallery" href="images/page-1_img09_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="images/page-1_img09.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img10_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 72.23168654173765%;">
                        <img data-src="images/page-1_img10.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img11_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="images/page-1_img11.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>
        <section class="parallax parallax1" data-parallax-speed="-0.4">
            <div class="container">
                <h2><em>Our </em>Experience</h2>
                <p class="indents-2">Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci </p>
                <a href="#" class="btn">View full menu</a>
            </div>
        </section>
        <section class="well well__offset-1 bg-1">
            <div class="container">
                <h2><em>Our </em>Cooks</h2>
                <div class="row row__offset-1">
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="images/page-1_img12.jpg" alt=""></div>
                            <figcaption>Kevin Grey</figcaption>
                        </figure>
                        <h3>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="images/page-1_img13.jpg" alt=""></div>
                            <figcaption>Linda Klein</figcaption>
                        </figure>
                        <h3>Oeteger convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="images/page-1_img14.jpg" alt=""></div>
                            <figcaption>Ann Shelton</figcaption>
                        </figure>
                        <h3>Koteger convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                </div>
                <div class="decoration"><a href="#" class="btn">Read more</a></div>
            </div>
        </section>
        <section class="well well__offset-2">
            <div class="container center">
                <h2><em>Make </em>a Reservation</h2>
                <p class="indents-2">Fnteger convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol.</p>
                <address class="address-1">
                    <dl><dt>Address:</dt> <dd>4578 Marmora Road, Glasgow DA04 89GR</dd></dl>
                    <p><em>800 2345-6789</em></p>
                </address>
            </div>
        </section>
    </main>

    ========================================================
                              FOOTER
    =========================================================
    <footer>
        <div class="container">
            <ul class="socials">
                <li><a href="#" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-tumblr"></a></li>
                <li><a href="#" class="fa fa-google-plus"></a></li>
            </ul>
            <div class="copyright">© <span id="copyright-year"></span> |
                <a href="#">Privacy Policy</a>
            </div>
        </div>
        <div class="tm"><a href="#"><img src="images/TM_logo.png" alt=""></a></div>
    </footer>
</div>

<script src="../js/script.js"></script>
</body>
</html>
    
    
    
     -->
    
    
    
    
    
    
    
    

<head>
    <title>Home</title>
    <meta charset="UTF-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
   
    
     
<%--      <link rel="stylesheet" href=" <c:url value="resources/css/grid.css" />">
    <link rel="stylesheet" href="<c:url value="resources/css/style.css" />">
    <link rel="stylesheet" href="<c:url value="resources/css/camera.css" />">
    <link rel="stylesheet" href="<c:url value="resources/css/jquery.fancybox.css" />"> --%>
    
    
    
    
    
     <link rel="stylesheet" href="resources/css/grid.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/camera.css">
    <link rel="stylesheet" href="resources/css/jquery.fancybox.css">
	
	<script src="resources/js/jquery.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.js"></script>

<%-- 	<script src="<c:url value="/resources/js/jquery.js" />"></script>
    <script src="<c:url value="/resources/js/jquery-migrate-1.2.1.js" />"></script> --%>

    <!--[if lt IE 9]>
    <html class="lt-ie9">
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/..">
            <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a> 
    </div>
    <script src="js/html5shiv.js"></script>
    <![endif]-->

<%--     <script src=' <c:url value="/resources/js/device.min.js" />'></script> --%>
 <script src=' resources/js/device.min.js'></script>
</head>

<body>
<div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div class="camera_container">
            <div id="camera" class="camera_wrap">
                <div data-thumb="resources/images/slide01_thumb.jpg" data-src="resources/images/slide01.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="resources/images/slide02_thumb.jpg" data-src="resources/images/slide02.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="resources/images/slide03_thumb.jpg" data-src="resources/images/slide03.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
            </div>

            <div class="brand wow fadeIn">
                <h1 class="brand_name">
                    <a href="./">KartRider</a>
                </h1>
            </div>
        </div>
        
        <div class="toggle-menu-container">
            <nav class="nav">
                <div class="nav_title"></div>
                <a class="sf-menu-toggle fa fa-bars" href="#"></a>
                <ul class="sf-menu">
                    <li class="active">
                        <a href="index.do"><font face="Montserrat Subrayada">HOME</font></a>
                    </li>
                    <li>
                        <a href="index-1.jsp"><font face="Montserrat Subrayada">MENU</font></a>
                        <ul>
                            <li>
                                <a href="#"><font face="a하이라이트">커피</font></a>
                                    <ul>
                                    <li>
                                        <a href="#"><font face="a하이라이트">콜드부르</font></a>
                                    </li>
                                    <li>
                                        <a href="#"><font face="a하이라이트">에스프레소</font></a>
                                    </li>
                                    <li>
                                        <a href="#"><font face="a하이라이트">프라푸치노</font></a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><font face="a하이라이트">음료</font></a>
                                <ul>
                                    <li>
                                        <a href="#"><font face="a하이라이트">라떼</font></a>
                                    </li>
                                    <li>
                                        <a href="#"><font face="a하이라이트">쥬스 & 에이드</font></a>
                                    </li>
                                    <li>
                                        <a href="#"><font face="a하이라이트">티</font></a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><font face="a하이라이트">디저트</font></a>
                                <ul>
                                    <li>
                                        <a href="#"><font face="a하이라이트">베이커리</font></a>
                                    </li>
                                    <li>
                                        <a href="#"><font face="a하이라이트">케이크</font></a>
                                    </li>
                                    <li>
                                        <a href="#"><font face="a하이라이트">샌드위치</font></a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="what.do"><font face="Montserrat Subrayada">WHAT WE DO</font></a>
                    </li>
                    <li>
                        <a href="menu.do"><font face="Montserrat Subrayada">ORDER</font></a>
                    </li>
						<li><a href="admin.do"><font face="Montserrat Subrayada">ADMIN</font></a>
							<ul>
								<li><a href="pos.do"><font face="a하이라이트">POS</font></a></li>								
								<li><a href="#"><font face="a하이라이트">고객</font></a>
									<ul>
										<li><a href="customerList.do"><font face="a하이라이트">고객조회</font></a></li>
										<li><a href="#">뭐할까</a></li>
										<li><a href="#">뭐넣어</a></li>
									</ul></li>
								<li><a href="#"><font face="a하이라이트">인사</font></a>
									<ul>
										<li><a href="memberInsert.do"><font face="a하이라이트">직원등록</font></a></li>
										<li><a href="memberList.do"><font face="a하이라이트">직원조회</font></a></li>
										<li><a href="dailyCheck.do"><font face="a하이라이트">근태일지</font></a></li>
										<li><a href="pay.do"><font face="a하이라이트">급여조회</font></a></li>
									</ul></li>
								<li><a href="#"><font face="a하이라이트">매출</font></a>
									<ul>
										<li><a href="goodsInsert.do"><font face="a하이라이트">판매상품 등록</font></a></li>
										<li><a href="goodsList.do"><font face="a하이라이트">판매상품 조회</font></a></li>
										<li><a href="salesList.do"><font face="a하이라이트">매출조회</font></a></li>
									</ul></li>
									<li><a href="#"><font face="a하이라이트">재고관리</font></a>
									<ul>
										<li><a href="stokorder.do"><font face="a하이라이트">발주 신청</font></a></li>
										<li><a href="stokinsert.do"><font face="a하이라이트">물품 등록</font></a></li>
										<li><a href="stoklist.do"><font face="a하이라이트">물품 리스트</font></a></li>
									</ul></li>
									<li><a href=""><font face="a하이라이트">회계</font></a>
									<ul>
										<li><a href="accountingDaily.do"><font face="a하이라이트">일일정산</font></a></li>
									</ul></li>
							</ul></li>
                    <li>
                        <a href="login.do"><font face="Montserrat Subrayada">LOGIN</font></a>
                    </li>
                </ul>
            </nav>            
        </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main>
        <section class="well">
            <div class="container">
                <h2><em>Welcome</em></h2>
                <div class="row">
                    <div class="grid_6">
                        <div class="img img__border"><div class="lazy-img" style="padding-bottom: 63.0282%;"><img data-src="resources/images/page-1_img01.jpg" alt=""></div></div>
                        <p class="center indents-1">Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                    <div class="grid_6">
                        <div class="img img__border"><div class="lazy-img" style="padding-bottom: 63.0282%;"><img data-src="resources/images/page-1_img02.jpg" alt=""></div></div>
                        <p class="center indents-1">Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                </div>
                <div class="decoration"><a href="#" class="btn">Read more</a></div>
                <h2><em>Our Cuisine</em></h2>
            </div>            
            <div class="gallery">
                <div class="gallery_col-1">
                    <a data-fancybox-group="gallery" href="/resources/images/page-1_img03_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">
                        <img data-src="resources/images/page-1_img03.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img04_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 74.13793103448276%;">
                        <img data-src="images/page-1_img04.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="resources/images/page-1_img05_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 94.6551724137931%;">
                        <img data-src="/resources/images/page-1_img05.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-2">
                    <a data-fancybox-group="gallery" href="/resources/images/page-1_img06_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 52.48322147651007%;">
                        <img data-src="/resources/images/page-1_img06.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="resources/images/page-1_img07_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 55.97315436241611%;">
                        <img data-src="resources/images/page-1_img07.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="resources/images/page-1_img08_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 96.10738255033557%;">
                        <img data-src="resources/images/page-1_img08.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-3">
                    <a data-fancybox-group="gallery" href="resources/images/page-1_img09_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="resources/images/page-1_img09.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="/resources/images/page-1_img10_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 72.23168654173765%;">
                        <img data-src="resources/images/page-1_img10.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="resources/images/page-1_img11_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="resources/images/page-1_img11.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>
        <section class="parallax parallax1" data-parallax-speed="-0.4">
            <div class="container">
                <h2><em>Our Experiences</em></h2>
                <p class="indents-2">Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci </p>
                <a href="menu.do" class="btn">View full menu</a>
            </div>
        </section>
        <section class="well well__offset-1 bg-1">
            <div class="container">
                <h2><em>Our Chefs</em></h2>
                <div class="row row__offset-1">
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="resources/images/skt.png" alt=""></div>
                            <figcaption>Kevin Grey</figcaption>
                        </figure>
                        <h3>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="resources/images/lg.png" alt=""></div>
                            <figcaption>Linda Klein</figcaption>
                        </figure>
                        <h3>Oeteger convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="resources/images/kt.jpg" alt=""></div>
                            <figcaption>Ann Shelton</figcaption>
                        </figure>
                        <h3>Koteger convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                </div>
                <div class="decoration"><a href="#" class="btn">Read more</a></div>
            </div>
        </section>
        <section class="well well__offset-2">
            <div class="container center">
                <h2><em>Booking</em></h2>
                <p class="indents-2">Fnteger convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla. Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol.</p>
                <address class="address-1">
                    <dl><dt>Address:</dt> <dd>4578 Marmora Road, Glasgow DA04 89GR</dd></dl>
                    <p><em>800 2345-6789</em></p>
                </address>
            </div>
        </section>
    </main>

    <!--========================================================
                              FOOTER
    =========================================================-->
    <footer>
        <div class="container">
            <ul class="socials">
                <li><a href="#" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-tumblr"></a></li>
                <li><a href="#" class="fa fa-google-plus"></a></li>
            </ul>
            <div class="copyright">© <span id="copyright-year"></span> |
                <a href="#">Privacy Policy</a>
            </div>
        </div>
        <div class="tm"><a href="#"><img src=" <c:url value="resources/images/TM_logo.png" />" alt=""></a></div>
    </footer>
</div>


<!-- <script src=" ../js/script.js"></script> -->
<script src=" resources/js/script.js"></script>
<%--  <script src=' <c:url value="/resources/js/script.js" />'></script> --%>
</html>


