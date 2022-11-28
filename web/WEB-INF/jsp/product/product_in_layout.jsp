<!DOCTYPE html>
<html lang="en">
<head>
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
    <section class="module-cover parallax text-center" data-background="assets/images/module-25s.jpg" data-overlay="1" data-gradient="1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="space" data-mY="60px"></div>
                    <h1 class="demo-heading">List Page</h1>
                    <div class="space" data-MY="60px"></div>
                </div>
            </div>
        </div>
    </section>

    <section class="module p-t-0">
        <div class="container">
            &nbsp;
        </div>
        <div class="container-fluid" style="max-width: 1600px;">
            <div class="row">
                <div class="col-md-6">
                    <h6 class="text-special text-center m-b-40">Multi Page Demos</h6>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="demo-item"><a href="detail.jpt"><img src="assets/images/demo/1.jpg" alt=""></a>
                                <h6>예시</h6>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <h6 class="text-special text-center m-b-40">One Page Demos</h6>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="demo-item"><a href="detail.jpt"><img src="assets/images/demo/op-1.jpg" alt=""></a>
                                <h6>예시2</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@include file="../common/footer.jsp"%>
</div>
<!-- Wrapper end-->
<%@include file="../common/offCanvas.jsp"%>
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