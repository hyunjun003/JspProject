<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Boomerang - Template</title>
    <!-- Favicons-->
    <link rel="shortcut icon" href="assets/images/favicon.png">
    <link rel="apple-touch-icon" href="assets/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="assets/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="assets/images/apple-touch-icon-114x114.png">
    <!-- Web Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7cPlayfair+Display:400i" rel="stylesheet">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- Plugins-->
    <link href="assets/css/plugins.min.css" rel="stylesheet">
    <!-- Template core CSS-->
    <link href="assets/css/template.css" rel="stylesheet">
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
                            <h1 class="m-b-20"><strong>Trend clothes</strong></h1>
                            <p class="m-b-40">Trendy style<br>트렌드의 시작</p>
                            <p><a class="btn btn-lg btn-circle btn-warning" href="default.jpt">Get Started</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="parallax" data-overlay="0.5"><img src="assets/images/module-1.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Now is All<br>지금 구매하세요</strong></h1>
                            <p class="m-b-40">정확한 검수로<br>안전한 거래</p>
                            <p><a class="btn btn-lg btn-circle btn-brand" href="default.jpt">Get products</a>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation"><a class="prev" href="#"><span class="ti-angle-left"></span></a><a class="next" href="#"><span class="ti-angle-right"></span></a></div>
    </section>
    <!-- Hero end-->
    <!-- Portfolio-->
    <section class="module p-b-0">
        <div class="container">
            <div class="row">
                <div class="col-md-6 m-auto text-center">
                    <h1>Most Popular</h1>
                    <p class="lead">가장 인기 많은 제품을 확인하세요</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="space" data-MY="40px"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <ul class="filters serif">
                        <li><a class="current" href="#" data-filter="*">All</a></li>
                        <li><a href="#" data-filter=".branding">Branding</a></li>
                        <li><a href="#" data-filter=".digital">Digital</a></li>
                        <li><a href="#" data-filter=".packaging">Packaging</a></li>
                    </ul>
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
                            <h6 class="portfolio-item-title">Solave Cleanser</h6><span class="portfolio-item-subtitle serif">Digital</span>
                        </div><a class="portfolio-item-link" href="portfolio-single-1.html"></a>
                    </div>
                </div>
                <div class="portfolio-item digital">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="assets/images/portfolio/4.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">Monochrome</h6><span class="portfolio-item-subtitle serif">Branding</span>
                        </div><a class="portfolio-item-link" href="portfolio-single-1.html"></a>
                    </div>
                </div>
                <div class="portfolio-item packaging">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="assets/images/portfolio/3.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">Ellie Cashman</h6><span class="portfolio-item-subtitle serif">Packaging</span>
                        </div><a class="portfolio-item-link" href="portfolio-single-1.html"></a>
                    </div>
                </div>
                <div class="portfolio-item branding">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="assets/images/portfolio/6.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">White Sleeve</h6><span class="portfolio-item-subtitle serif">Digital</span>
                        </div><a class="portfolio-item-link" href="portfolio-single-1.html"></a>
                    </div>
                </div>
                <div class="portfolio-item digital">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="assets/images/portfolio/5.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">Classic Socks</h6><span class="portfolio-item-subtitle serif">Branding</span>
                        </div><a class="portfolio-item-link" href="portfolio-single-1.html"></a>
                    </div>
                </div>
                <div class="portfolio-item packaging">
                    <div class="portfolio-item-wrapper">
                        <div class="portfolio-item-img"><img src="assets/images/portfolio/2.jpg" alt=""></div>
                        <div class="portfolio-item-caption">
                            <h6 class="portfolio-item-title">Expirience</h6><span class="portfolio-item-subtitle serif">Packaging</span>
                        </div><a class="portfolio-item-link" href="portfolio-single-1.html"></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Portfolio end-->

    <!-- Team-->
    <section class="module">
        <div class="container">
            <div class="row">
                <div class="col-md-6 m-auto text-center">
                    <h1>Creative People</h1>
                    <p class="lead">Best St.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="space" data-MY="60px"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <div class="team-image"><img src="assets/images/team/1.jpg" alt="">
                            <div class="team-wrap">
                                <div class="team-content">
                                    <h6 class="team-name">Emma Connor</h6>
                                    <div class="team-role">Designer</div>
                                </div>
                                <div class="team-content-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <div class="team-image"><img src="assets/images/team/2.jpg" alt="">
                            <div class="team-wrap">
                                <div class="team-content">
                                    <h6 class="team-name">Richard Bauer</h6>
                                    <div class="team-role">Developer</div>
                                </div>
                                <div class="team-content-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <div class="team-image"><img src="assets/images/team/3.jpg" alt="">
                            <div class="team-wrap">
                                <div class="team-content">
                                    <h6 class="team-name">John Pope</h6>
                                    <div class="team-role">Founder</div>
                                </div>
                                <div class="team-content-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <div class="team-image"><img src="assets/images/team/4.jpg" alt="">
                            <div class="team-wrap">
                                <div class="team-content">
                                    <h6 class="team-name">Sara Smith</h6>
                                    <div class="team-role">Designer</div>
                                </div>
                                <div class="team-content-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <div class="team-image"><img src="assets/images/team/5.jpg" alt="">
                            <div class="team-wrap">
                                <div class="team-content">
                                    <h6 class="team-name">Emma Connor</h6>
                                    <div class="team-role">Developer</div>
                                </div>
                                <div class="team-content-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <div class="team-image"><img src="assets/images/team/6.jpg" alt="">
                            <div class="team-wrap">
                                <div class="team-content">
                                    <h6 class="team-name">Peter Chapman</h6>
                                    <div class="team-role">Founder</div>
                                </div>
                                <div class="team-content-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="space" data-MY="30px"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <p class="text-center"><a class="btn btn-circle btn-outline-brand" href="#">About Us</a></p>
                </div>
            </div>
        </div>
    </section>
    <!-- Team end-->
    <!-- Image end-->
    <%@include file="../common/footer.jsp"%>
</div>
<!-- Wrapper end-->
<!-- Off canvas-->
<div class="off-canvas-sidebar">
    <div class="off-canvas-sidebar-wrapper">
        <div class="off-canvas-header"><a class="off-canvas-close" href="#"><span class="ti-close"></span></a></div>
        <div class="off-canvas-content">
            <!-- Text widget-->
            <aside class="widget widget-text">
                <div class="textwidget">
                    <p class="text-center"><img src="assets/images/logo-light-2.png" alt="" width="80px"></p>
                    <p class="text-center">See how users experience your website in realtime to see changes.</p>
                </div>
            </aside>
            <!-- Recent portfolio widget-->
            <aside class="widget widget-recent-works">
                <ul>
                    <li><a href="#"><img src="assets/images/widgets/1.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/4.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/5.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/6.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/9.jpg" alt=""></a></li>
                </ul>
            </aside>
            <!-- Social Icons-->
            <ul class="social-icons text-center">
                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
            </ul>
        </div>
    </div>
</div>
<!-- Off canvas end-->

<!-- To top button--><a class="scroll-top" href="#top"><i class="fas fa-angle-up"></i></a>

<!-- Scripts-->
<script src="assets/js/custom/jquery.min.js"></script>
<script src="assets/js/custom/popper.min.js"></script>
<script src="assets/js/bootstrap/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
<script src="assets/js/custom/plugins.min.js"></script>
<script src="assets/js/custom/custom.min.js"></script>
</body>
</html>