<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>JspProject</title>
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
<%

    String inDetail = (String) request.getAttribute("inDetail");

%>
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
                    <h1 class="demo-heading">My Devices</h1>
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
                    <div class="row">
                        <div class="col-md-6">
                            <h6 class="text-special text-center m-b-40">Phone</h6>
                            <div id="detail_content"></div>
                        </div>
                        <div class="col-md-6">
                            <h6 class="text-special text-center m-b-40">PC</h6>
                            <div id="detail_content2"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <h6 class="text-special text-center m-b-40">Audio</h6>
                            <div id="detail_content3"></div>
                        </div>
                        <div class="col-md-6">
                            <h6 class="text-special text-center m-b-40">Accessories</h6>
                            <div id="detail_content4"></div>
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



<script>
    $(document).ready(function (){ // 이부분이 있어야 js의 function이 디폴트로 시작됨
        makeBoard();
        makeBoard2();
        makeBoard3();
        makeBoard4();
    })
    var i = 0;

    // start make left board리
    function makeBoard() {
        var inDetail = <%=inDetail%>;
        var data = $('#detail_content');
        var text = '';
        for (i = 0; i<inDetail.length-3; i++){
            if (inDetail[i].product_id%4===1){
                text += '<div class="demo-item"><a href="'+inDetail[i].product_page+'?num='+inDetail[i].product_id+'"><img src="'+inDetail[i].product_pic+'" alt=""></a><h6>'+inDetail[i].product_name+'</h6></div>';
                data.append(text);
                text = '';
            }
        }

    }
    function makeBoard2() {
        var inDetail = <%=inDetail%>;
        var data = $('#detail_content2');
        var text = '';
        for (i = 0; i<inDetail.length; i++){
            if (inDetail[i].product_id%4===2){
                text += '<div class="demo-item"><a href="'+inDetail[i].product_page+'?num='+inDetail[i].product_id+'"><img src="'+inDetail[i].product_pic+'" alt=""></a><h6>'+inDetail[i].product_name+'</h6></div>';
                data.append(text);
                text='';
            }
        }
    }

    function makeBoard3() {
        var inDetail = <%=inDetail%>;
        var data = $('#detail_content3');
        var text = '';
        for (i = 0; i<inDetail.length; i++){
            if (inDetail[i].product_id%4===3){
                text += '<div class="demo-item"><a href="'+inDetail[i].product_page+'?num='+inDetail[i].product_id+'"><img src="'+inDetail[i].product_pic+'" alt=""></a><h6>'+inDetail[i].product_name+'</h6></div>';
                data.append(text);
                text = '';
            }
        }
    }

    function makeBoard4() {
        var inDetail = <%=inDetail%>;
        var data = $('#detail_content4');
        var text = '';
        for (i = 0; i<inDetail.length; i++){
            if (inDetail[i].product_id%4===0){
                text += '<div class="demo-item"><a href="'+inDetail[i].product_page+'?num='+inDetail[i].product_id+'"><img src="'+inDetail[i].product_pic+'" alt=""></a><h6>'+inDetail[i].product_name+'</h6></div>';
                data.append(text);
                text = '';
            }
        }
    }
</script>




<!-- Scripts-->
<script src="../../../assets/js/custom/jquery.min.js"></script>
<script src="../../../assets/js/custom/popper.min.js"></script>
<script src="../../../assets/js/bootstrap/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
<script src="../../../assets/js/custom/plugins.min.js"></script>
<script src="../../../assets/js/custom/custom.min.js"></script>

</body>

</html>