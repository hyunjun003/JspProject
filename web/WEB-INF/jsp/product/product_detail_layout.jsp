<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

<%
    String num = request.getParameter("num");//url에 붙어서 넘어온 product_id를 가져오는 부분 (각 product의 id를 가져온다)
    String inDetail = (String) request.getAttribute("inDetail"); //product의 정보를 가져온다.
%>

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
<%@include file="../common/header.jsp" %>
<!-- Wrapper-->
<div class="wrapper">
    <!-- Hero-->
    <section class="module-cover parallax text-center" data-background="assets/images/module-22.jpg" data-overlay="0.2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Spacé Đecor</h1>
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Portfolio</a></li>
                        <li class="breadcrumb-item active">Sidebar Stack</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero end-->

    <!-- Portfolio Single-->
    <section class="module">
        <div class="container">
            <div class="row">
<%--                여기가 사진 들어가는 부분 format--%>
                <div class="col-md-8" id="insertPic" >
                </div>
<%--    사진 format end--%>
<%--    text form--%>
                <div class="col-md-4">
                    <div class="sticky-sidebar" id="insertText">
<%--                        <hr class="m-t-30 m-b-30">--%>
<%--                        <div class="info-list">--%>
<%--                            <li><span class="info-list-title">Date:</span><span>10 October, 2018</span></li>--%>
<%--                            <li><span class="info-list-title">Client:</span><span><a href="#">2theme Team</a></span>--%>
<%--                            </li>--%>
<%--                            <li><span class="info-list-title">Category:</span><span><a href="#">Development</a></span>--%>
<%--                            </li>--%>
<%--                            <li><span class="info-list-title">Demo:</span><span><a href="#">2the.me</a></span></li>--%>
<%--                        </div>--%>

<%--                        <div class="info-list">--%>
<%--                            <li><span class="info-list-title">Share:</span><span>--%>
<%--                                            <ul class="social-icons">--%>
<%--                                                <li><a href="#"><i class="ti-twitter"></i></a></li>--%>
<%--                                                <li><a href="#"><i class="ti-instagram"></i></a></li>--%>
<%--                                                <li><a href="#"><i class="ti-pinterest"></i></a></li>--%>
<%--                                            </ul></span></li>--%>
<%--                        </div>--%>
                    </div>
                </div>
<%--                text form end--%>
            </div>
        </div>
    </section>
    <!-- Portfolio Single end-->
    <%@include file="../common/footer.jsp" %>
</div>
<!-- Wrapper end-->
<%@include file="../common/offCanvas.jsp" %>

<!-- To top button--><a class="scroll-top" href="#top"><i class="fas fa-angle-up"></i></a>

<!-- Scripts-->
<script src="assets/js/custom/jquery.min.js"></script>
<script src="assets/js/custom/popper.min.js"></script>
<script src="assets/js/bootstrap/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
<script src="assets/js/custom/plugins.min.js"></script>
<script src="assets/js/custom/custom.min.js"></script>

<script>
    $(document).ready(function (){
        makeTextBoard();
        makePictureBoard();
    })
    var num = <%=num%>;
    function makePictureBoard(){
        var inDetail = <%=inDetail%>
        var pic = $('#insertPic');
        var text = '';
        text += '<p><img src="'+ inDetail[num-1].product_pic +'" alt=""></p>';
        pic.append(text)
    }
    function makeTextBoard(){
        var inDetail = <%=inDetail%>
        var Ptext = $('#insertText')
        var text ='';
        text += '<h6 class="single-portfolio-title">'+inDetail[num-1].product_name+'</h6><p>'+inDetail[num-1].product_text+'</p>'
        Ptext.append(text)
    }
</script>

</body>
</html>