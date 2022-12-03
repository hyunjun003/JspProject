<!-- 1. 입력 폼을 채우지 않고 회원가입 시도 시 회원가입 하시겠습니까? 위에
     "이 입력란을 작성하세요" 문구가 뜨는데 로그인 페이지는 안뜨고 회원가입 페이지만 뜸 -->
<!-- 2. 입력 폼을 채우고 제출하면 페이지 리로드 후 변화가 없음
     뒤로가기 클릭 시 jquery 문구 "회원가입 하시겠습니까?가 출력되고 확인 클릭 시 로그인 페이지로 이동함 -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body class="bg-light">

<main>
    <!-- sign up -->

    <div class="container">
        <div class="py-5 text-center" style="margin-bottom: 30px; margin-top: 140px;">
            <h2 style="font-family: 'Noto Serif KR', serif;">회원 가입</h2>
            <p class="lead" style="font-family: 'Noto Serif KR', serif;"> 아래의 정보들을 모두 입력하세요. </p>
        </div>
        <div>
            <h4 class="mb-3" style="font-family: 'Noto Serif KR', serif;">기본 정보</h4>
            <div class="needs-validation" novalidate>
                <div class="row g-3">
                    <div class="col-12">
                        <label for="name" class="form-label" style="font-family: 'Noto Serif KR', serif;">이 름</label>
                        <input style="margin-bottom: 20px;" type="text" class="form-control" id="name" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            이름을 입력해주세요.
                        </div>
                    </div>
                    <div style="width: 700px; margin: auto;">
                        <label for="id" class="form-label" style="font-family: 'Noto Serif KR', serif;">아이디</label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" id="id" placeholder="" required>
                            <div class="invalid-feedback">
                                아이디를 입력해주세요.
                            </div>
                        </div>
                    </div>

                    <div style="width: 600px; margin: auto;">
                        <label for="pw" class="form-label" style="font-family: 'Noto Serif KR', serif;">비밀번호</label>
                        <input type="text" class="form-control" id="pw" placeholder="" required="">
                        <div class="invalid-feedback">
                            비밀번호를 입력해주세요.

                        </div>
                        <p>비밀번호는 8~20자리, 공백없이, 영문과 숫자 특수문자를 혼합하여 입력해주세요</p>
                    </div>
                </div>
                <button class="w-100 btn btn-dark btn-lg" onclick="signUp()" style="font-family: 'Noto Serif KR', serif; margin-top: 30px;">회원가입 하기</button>
            </div>
        </div>
    </div>
</main>
<script src="../../../assets/js/custom/jquery.min.js"></script>
<script src="../../../assets/js/custom/popper.min.js"></script>
<script src="../../../assets/js/bootstrap/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
<script src="../../../assets/js/custom/plugins.min.js"></script>
<script src="../../../assets/js/custom/custom.min.js"></script>
</body>

<script>
    function signUp() {
        var name = $('#name').val();
        var id = $('#id').val();
        var pw = $('#pw').val();

        //pw 검사
        var num = pw.search(/[0-9]/g);
        var eng = pw.search(/[a-z]/ig);
        var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

        if(pw.length < 8 || pw.length > 20){
            alert("8자리 ~ 20자리 이내로 입력해주세요.");
        }else if(pw.search(/\s/) !== -1){
            alert("비밀번호는 공백 없이 입력해주세요.");
        }else if(num < 0 || eng < 0 || spe < 0 ){
            alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
        }else {
            console.log("통과");
        }

        var data = name + "-/-/-" + id + "-/-/-" + pw;
        var check =
            swal({
                title: '회원 가입 하시겠습니까?',
                icon: 'info',

                buttons: {
                    cancel: {
                        text: '취소',
                        value: false,
                        className: 'btn btn-danger'
                    },
                    confirm: {
                        text: '확인',
                        value: true,
                        className: 'btn btn-primary'
                    },
                }
            }).then((check) => {
                if (check) {
                    $.ajax({ //ajax 프레임워크( jQuery)로 위 data를 서버로 보냄.
                        url: "ajax.jpt", //ajax.do(ajaxAction)에 있는
                        type: "post",
                        data: {
                            req: "signup",
                            data: data
                        },
                        success: function (data) {
                            if (data == '성공') {
                                swal({
                                    title: '회원가입 성공!',
                                    text: '회원이 되신 걸 환영합니다.',
                                    icon: 'success',
                                    button: '확인'
                                }).then(function () {
                                    window.location.href = 'loginPage.jpt';
                                });
                            } else {
                                swal({
                                    title: '오류',
                                    text: '이미 아이디가 존재합니다...!',
                                    icon: 'error',
                                    button: '확인'
                                }).then(function () {
                                    window.location.href = 'loginPage.jpt';
                                });
                            }
                        }
                    })
                }
            });
    }
</script>

</html>
