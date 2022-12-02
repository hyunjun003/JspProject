<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Boomerang - Template</title>
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
                    <h1>Detail Product</h1>
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a href="main.jpt">Home</a></li>
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
                <%--                Picture form--%>
                <div class="col-md-8" id="insertPic">
                </div>
                <%--                Picture form end--%>
                <%--    text form--%>
                <div class="col-md-4">
                    <div class="sticky-sidebar" id="insertText"></div>
                    <!--modify button-->
                    <div class="text-end" id="modify_button"></div>
                </div>
                <%--    text form end--%>
            </div>
<%--<div class="row container">--%>
<%--    <textarea class="form-control" id="p_content"></textarea>--%>
<%--    <script type="text/javascript">--%>
<%--        CKEDITOR.replace('p_content', {height: 500});--%>
<%--    </script>--%>
<%--</div>--%>

        </div>
    </section>

    <!-- Portfolio Single end-->
    <%@include file="../common/footer.jsp" %>
</div>
<!-- Wrapper end-->
<%@include file="../common/offCanvas.jsp" %>

<!-- To top button--><a class="scroll-top" href="#top"><i class="fas fa-angle-up"></i></a>

<!-- Scripts-->
<script src="../../../assets/js/custom/jquery.min.js"></script>
<script src="../../../assets/js/custom/popper.min.js"></script>
<script src="../../../assets/js/bootstrap/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
<script src="../../../assets/js/custom/plugins.min.js"></script>
<script src="../../../assets/js/custom/custom.min.js"></script>
<script src="../../../assets/js/sweetalert2'/sweetalert2.all.min.js"></script>
<script src="../../../assets/js/ckeditor.js" ></script>
<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
<script>
    $(document).ready(function () {
        makeTextBoard();
        makePictureBoard();
    })
    var num = <%=num%>;
    var inDetail = <%=inDetail%>
    var text = '';

    function makePictureBoard() {
        var pic = $('#insertPic');
        text += '<p><img src="' + inDetail[num - 1].product_pic + '" alt=""></p>';
        pic.append(text)
        text ='';
    }

    function makeTextBoard() {
        var Ptext = $('#insertText')
        text += '<h6 class="single-portfolio-title">' + inDetail[num - 1].product_name + '</h6><p>' + inDetail[num - 1].product_text + '</p>'
        Ptext.append(text)
        text = ''
        var button = $('#modify_button');//modify button insert
        button.append('<button class="btn btn-lg btn-warning" onclick="modify()">Modify</button>');
    }

    function modify() {
        var modify_button = $('#modify_button');
        var a='';

        modify_button.empty();
        a+='<textarea id="t_editor">'+inDetail[num-1].product_name+'</textarea></br>';
        a+='<textarea id="editor">'+inDetail[num-1].product_text+'</textarea>';
        a+='<div id="write_post" class="my-4 col-xs-13 text-right d-flex justify-content-between">'
        a+='<button type="button" class="btn btn-secondary" style = "margin : 2px;" onclick="back()">뒤로</button>'
        a+='<button type="button" class="btn btn-primary" style = "margin : 2px;" onclick="modifyText()">수정</button>';
        a+='</div>';
        $('#insertText').html(a);
    }

    function back(){
        swal.fire({
            title : '뒤로가기',
            text : '작성한 글은 사라집니다.',
            icon : 'error',
            showConfirmButton: true
        }).then(function () {
            window.location.href = 'detail.jpt?num='+num+'';
        });
    }
    function modifyText(){
        var modify = inDetail[num-1].product_id+ "-/-/-"+$('#t_editor').val()+"-/-/-"+$('#editor').val();
        $.ajax({
            url: 'ajax.jpt',
            type : 'post',
            data :{
                req : "modifyText",
                data : modify
            },
            dataType:"json",
            success : function(data){
                if(data != 'fail'){
                    swal.fire({
                        title : '수정이 완료되었습니다.',
                        icon : 'success',
                        showConfirmButton: true

                    }).then(function (){
                        location.reload();
                    });
                }
                else
                    swal.fire({
                        title : '서버에러',
                        text : '다음에 다시 시도해주세요',
                        icon : 'error',
                        showConfirmButton: true
                    });
            }
        })
    }

</script>

</body>
</html>