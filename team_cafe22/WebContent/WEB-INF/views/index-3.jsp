<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <% request.setCharacterEncoding("utf-8") ; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html lang="en">
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="resources/css/grid.css">
    <link rel="stylesheet" href="resources/css/style.css">

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.js"></script>

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
 
    <script src='resources/js/device.min.js'></script> 
</head>

<body>
<div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div id="stuck_container" class="stuck_container">
            <div class="container">

                <div class="brand">
                    <h1 class="brand_name">
                        <a href="index.do">Cafe</a>
                    </h1>
                </div>

                <nav class="nav">
                    <ul class="sf-menu">
                        <li>
                            <a href="index.do">Home</a>
                        </li>
                        <li>
                            <a href="index-1.html">About</a>
                            <ul>
                                <li>
                                    <a href="#">Quisque nulla</a>
                                </li>
                                <li>
                                    <a href="#">Vestibulum libero</a>
                                    <ul>
                                        <li>
                                            <a href="#">Lorem</a>
                                        </li>
                                        <li>
                                            <a href="#">Dolor</a>
                                        </li>
                                        <li>
                                            <a href="#">Sit amet</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Vivamus eget nibh</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="what.do">What We Do</a>
                        </li>
                        <li class="active">
                            <a href="menu.do">Menu</a>
                        </li>
                        <li>
                            <a href="Contacts.do">Contacts</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main>
        <section class="well well__offset-3">
            <div class="container">
                <h2><em>Our</em>Menu</h2>
                 <span class="checkbox"><input type="checkbox" id="scode0" name="scode" value="002001" onclick=""><label for="scode0">라떼</label></span>
				 <span class="checkbox"><input type="checkbox" id="scode1" name="scode" value="002002" onclick=""><label for="scode1">아이스블렌디드</label></span>
				 <span class="checkbox"><input type="checkbox" id="scode2" name="scode" value="002003" onclick=""><label for="scode2">주스&에이드</label></span>
				 <span class="checkbox"><input type="checkbox" id="scode3" name="scode" value="002004" onclick=""><label for="scode3">티</label></span>
                <div class="row box-2">
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img01.jpg" alt=""></div></div>
                        <h3>대충 메뉴 이름 </h3>
                        <p>대충 메뉴 설명</p>
                        <a href="#" class="btn">대충 어딘가 이동</a>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img02.jpg" alt=""></div></div>
                        <h3>Genteger convallis orci vel mi nelaoreet, at ornare lorem consequat.</h3>
                        <p>Meestibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequatre. </p>
                        <a href="#" class="btn">Read more</a>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img03.jpg" alt=""></div></div>
                        <h3>Ternteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Testibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequ.</p>
                        <a href="#" class="btn">Read more</a>
                    </div>
                </div>
                <div class="row box-2">
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img04.jpg" alt=""></div></div>
                        <h3>Onteger convallis orci vel mi nelaoreet, at ornare lorem consequate. </h3>
                        <p>Testibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequa.</p>
                        <a href="#" class="btn">Read more</a>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img05.jpg" alt=""></div></div>
                        <h3>Fenteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Vestibulum volutp turpis ut massa commodo, quis aliquam massa facilisis.Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.</p>
                        <a href="#" class="btn">Read more</a>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img06.jpg" alt=""></div></div>
                        <h3>Dernteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Testibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem conseasellus era nisl. </p>
                        <a href="#" class="btn">Read more</a>
                    </div>
                </div>
                <div class="row box-2">
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img07.jpg" alt=""></div></div>
                        <h3>Anteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Vestibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequat.</p>
                        <a href="#" class="btn">Read more</a>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img08.jpg" alt=""></div></div>
                        <h3>Genteger convallis orci vel mi nelaoreet, at ornare lorem consequat.</h3>
                        <p>Meestibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequatre. </p>
                        <a href="#" class="btn">Read more</a>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img09.jpg" alt=""></div></div>
                        <h3>Ternteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Testibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequ.</p>
                        <a href="#" class="btn">Read more</a>
                    </div>
                </div>
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
        <div class="tm"><a href="#"><img src="images/TM_logo.png" alt=""></a></div>
    </footer>
</div>

<script src="resources/js/script.js"></script>
</body>
</html>