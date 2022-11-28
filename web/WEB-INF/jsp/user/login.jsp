<!-- 1. 입력 폼을 채우고 제출하면 페이지 리로드 후 변화가 없음
뒤로가기 클릭 시 jquery 문구 "로그인 성공!"이 출력되고 확인 클릭 시 메인 페이지로 이동함 -->
<%--이슈해결 완료 _ 현준--%>

<%--
    issue#2
    - 유효성 검사 필요한 페이지
--%>
<%
    /**
     * login시 입력한 ID와 PW를 한줄의 String으로 만들어서 AjaxAction 클래스로 보냅니다.
     * */
    String errorMessage = (String) request.getAttribute("error");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <title> jspProject LOGIN</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Caveat&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@800&family=Oswald:wght@300&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">

    <!-- Libs CSS -->
    <link rel="stylesheet" href="../../../assets/libs/ion-rangeslider/css/ion.rangeSlider.min.css">
    <link rel="stylesheet" href="../../../assets/libs/litepicker/dist/css/litepicker.css">
    <link rel="stylesheet" href="../../../assets/libs/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../../../assets/libs/magnific-popup/dist/magnific-popup.css">

    <!-- Theme CSS -->
    <link rel="stylesheet" href="../../../assets/css/theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>

    <!-- Libs JS -->
    <script src="../../../assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../../../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../../assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../../../assets/libs/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
    <script src="../../../assets/libs/prismjs/prism.js"></script>
    <script src="../../../assets/libs/leaflet/dist/leaflet.js"></script>
    <script src="../../../assets/libs/litepicker/dist/litepicker.js"></script>
    <script src="../../../assets/libs/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
    <script src="../../../assets/libs/inputmask/dist/jquery.inputmask.min.js"></script>


    <!-- clipboard -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.5.12/clipboard.min.js"></script>

    <!-- Theme JS -->
    <script src="../../../assets/js/theme.min.js"></script>
</head>
<body class="bg-light">
<%@include file="../common/header.jsp"%>
<!-- Wrapper-->
<div class="wrapper">
    <!-- Hero-->
    <section class="module-cover parallax text-center fullscreen" data-background="assets/images/module-5.jpg" data-overlay="0.6">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 m-auto">
                    <div class="m-b-20">
                        <h6>Sign into your account</h6>
                    </div>
                    <div class="m-b-20">
                        <form method="post">
                            <div class="form-group">
                                <input class="form-control" type="email" placeholder="text" id="floatingInput">
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="password" placeholder="Password" id="floatingPassword">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-block btn-round btn-brand" type="submit" id="lo_button">Login</button>
                            </div>
                        </form>
                    </div>
                    <div class="m-b-20">
                        <p><small>Dont have an account yet? <a href="#">Create account</a><br>Forgot your username or password? <a href="#">Recover account</a></small></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@include file="../common/footer.jsp"%>
</div>
<!-- Wrapper end-->
<!-- Off canvas-->
<div class="off-canvas-sidebar">
    <div class="off-canvas-sidebar-wrapper">
        <div class="off-canvas-header"><a class="off-canvas-close" href="#"><span class="ti-close"></span></a></div>
        <div class="off-canvas-content">
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

<script>
    $(document).ready(function () { //이 파일이 시작되면 자동으로 실행됩니다.
        errorAlert();
    })

    function errorAlert() {
        var errorMessage = "<%=errorMessage%>";
        if (errorMessage != 'null')
            swal({
                title: '잠깐!',
                text: errorMessage,
                icon: 'info',
                button: '확인',
            });
    }

    $("#test_swal").click(function test_swal() {
        swal({
            title: '테스트.',
            text: '테스트는 완료됨.',
            icon: 'info',
            button: '확인,'
        });
    })

    $("#lo_button").click(function () {
        let id = $('#floatingInput').val();
        let pw = $('#floatingPassword').val();
        let data = id + "-/-/-" + pw; //데이터를 1줄로 합침.

        $.ajax({
            url: "ajax.jpt",
            type: "post",
            data: {
                req: "login", //AjaxAction 클래스에다가 req값을 전달해줍니다.
                data: data //AjaxAction 클래스에다가 data값을 전달해줍니다.
            }, success: function (lo) { //login은 ajaxAction 클래스가 return해준 값을 담는 변수 이름입니다.
                if (lo == "1") {
                    swal({
                        title: '로그인 성공!',
                        text: 'jspProject에 오신 걸 환영합니다.',
                        icon: 'success',
                        button: '확인',

                    }).then(function () {
                        window.location.href = "main.jpt"
                    });
                } else {
                    swal({
                        title: '로그인 실패!',
                        text: '다시 입력해주세요!',
                        icon: 'error',
                        button: '확인',
                    }).then(function () {
                        location.reload();
                    });
                }
            }
        })

    })
</script>
</html>
