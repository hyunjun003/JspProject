<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Jsp Project</title>
    <!-- Favicons-->
    <link rel="shortcut icon" href="../../../assets/images/favicon.png">
    <link rel="apple-touch-icon" href="../../../assets/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="../../../assets/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="../../../assets/images/apple-touch-icon-114x114.png">
    <!-- Web Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7cPlayfair+Display:400i" rel="stylesheet">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- Plugins-->
    <link href="../../../assets/css/plugins.min.css" rel="stylesheet">
    <!-- Template core CSS-->
    <link href="../../../assets/css/template.css" rel="stylesheet">
</head>
<body>

<!-- Preloader-->
<div class="page-loader">
    <div class="page-loader-inner">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
</div>
<!-- Preloader end-->
<%@include file="../common/header.jsp"%>
<!-- Wrapper-->
<div class="wrapper">
    <!-- Hero-->
    <section class="module-cover-slides fullscreen">
        <ul class="slides-container">
            <li class="parallax text-center" data-overlay="0.5"><img src="assets/images/module-21.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Devices In Use</strong></h1>
                            <p class="m-b-40">Possession<br>사용중인 기기</p>
                            <p><a class="btn btn-lg btn-circle btn-warning" href="in.jpt">Get looked</a></p>
                        </div>
                    </div>
                </div>
            </li>
<%--            <li class="parallax" data-overlay="0.5"><img src="assets/images/module-1.jpg" alt="">--%>
<%--                <div class="container">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-md-12">--%>
<%--                            <h1 class="m-b-20"><strong>Now is All</strong></h1>--%>
<%--                            <p class="m-b-40">사용<br>경험</p>--%>
<%--                            <p><a class="btn btn-lg btn-circle btn-brand" href="in.jpt">Get products</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </li>--%>
        </ul>
        <div class="slides-navigation"><a class="prev" href="#"><span class="ti-angle-left"></span></a><a class="next" href="#"><span class="ti-angle-right"></span></a></div>
    </section>
    <!-- Hero end-->
    <!-- Portfolio-->
    <section class="module p-b-0">
        <div class="container">
            <div class="row">
                <div class="col-md-6 m-auto text-center">
                    <h1>UsinG<br>DeviceS</h1>
                    <p class="lead">제품의 홈페이지를 확인해보세요</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="space" data-MY="40px"></div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row row-portfolio" data-columns="3">
                <div class="grid-sizer"></div>
                <div class="portfolio-item branding">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="assets/images/portfolio/1.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">SAMSUNG</h6>
                        </div><a class="portfolio-item-link" href="https://www.samsung.com/sec/"></a>
                    </div>
                </div>
                <div class="portfolio-item digital">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="../../../assets/images/portfolio/4.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">APPLE</h6>
                        </div><a class="portfolio-item-link" href="https://www.apple.com"></a>
                    </div>
                </div>
                <div class="portfolio-item packaging">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="../../../assets/images/portfolio/3.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">PHILIPS</h6>
                        </div><a class="portfolio-item-link" href="https://www.philips.co.kr"></a>
                    </div>
                </div>
                <div class="portfolio-item branding">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="../../../assets/images/portfolio/6.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">LG</h6>
                        </div><a class="portfolio-item-link" href="https://www.lge.co.kr"></a>
                    </div>
                </div>
                <div class="portfolio-item digital">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="../../../assets/images/portfolio/5.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">SONY</h6>
                        </div><a class="portfolio-item-link" href="https://www.sony.co.kr"></a>
                    </div>
                </div>
                <div class="portfolio-item packaging">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="../../../assets/images/portfolio/2.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">AMD</h6>
                        </div><a class="portfolio-item-link" href="https://www.amd.com/ko"></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Portfolio end-->
    <!-- Image end-->
    <%@include file="../common/footer.jsp"%>
</div>
<!-- Wrapper end-->
<%@include file="../common/offCanvas.jsp"%>

<!-- To top button--><a class="scroll-top" href="#top"><i class="fas fa-angle-up"></i></a>

<!-- Scripts-->
<script src="../../../assets/js/custom/jquery.min.js"></script>
<script src="../../../assets/js/custom/popper.min.js"></script>
<script src="../../../assets/js/bootstrap/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
<script src="../../../assets/js/custom/plugins.min.js"></script>
<script src="../../../assets/js/custom/custom.min.js"></script>
</body>
</html>