<%

    String user = (String) session.getAttribute("user");
    /**
     * session에서 user의 정보를 받아옵니다.
     * user를 setAttribute하고 있는 곳은 AjaxAction 클래스의
     * session.setAttribute("user", gson.toJson(HomeDAO.getInstance().getUserInfo(id))); 입니다.
     * 로그인을 하지 않은 경우 user는 null입니다.
     * 즉, 로그인 정보는 이 header.jsp가 include되는 어느 곳에서든 따라다니게 되므로 user 사용이 어디서나 가능하게 됩니다.
     */
%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">

    <!-- clipboard -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.5.12/clipboard.min.js"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/carousel/">
    <!-- Bootstrap core CSS -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Caveat&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
    <!-- Web Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7cPlayfair+Display:400i" rel="stylesheet">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- Plugins-->
    <link href="../../../assets/css/plugins.min.css" rel="stylesheet">
    <!-- Template core CSS-->
    <link href="../../../assets/css/template.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
    <title>jspProject</title>
    <style>
        img {
            size: auto;
        }
        .height span{
            position: absolute;
        }
        
    </style>
</head>
<!-- Header-->
<header class="header header-transparent">
    <div class="container-fluid">
        <!-- Brand-->
        <div class="inner-header"><a class="inner-brand" href="main.jpt">K_gu</a></div>
        <!-- Navigation-->
        <div class="inner-navigation collapse">
            <div class="inner-nav">
                <ul>
                    <li class="menu-item-has-children menu-item-has-mega-menu"><a href="#"><span class="menu-item-span">Home</span></a>
                        <div class="mega-menu">
                            <ul class="sub-menu mega-menu-row" data-background="assets/images/menu-3.jpg">
                                <!-- Column 1-->
                                <li class="menu-item-has-children mega-menu-col"><a href="#">Multi Page</a>
                                    <ul class="sub-menu">
                                        <li><a href="detail.jpt">detail</a></li>
                                        <li><a href="in.jpt">in</a></li>
                                        <li><a href="default.jpt">default</a></li>
                                    </ul>
                                </li>
                                <!-- Column 2-->
                                <li class="menu-item-has-children mega-menu-col"><a href="#">One Page</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Demo</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="menu-item-has-children menu-item-has-mega-menu"><a href="#"><span class="menu-item-span">Pages</span></a>
                        <div class="mega-menu">
                            <ul class="sub-menu mega-menu-row" data-background="assets/images/menu-1.jpg">
                                <!-- Column 1-->
                                <li class="menu-item-has-children mega-menu-col"><a href="#">Pages 1</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Demo2</a></li>
                                    </ul>
                                </li>
                                <!-- Column 2-->
                                <li class="menu-item-has-children mega-menu-col"><a href="#">Pages 2</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Demo3</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="extra-nav">
            <ul>
                <li><a href="loginPage.jpt" id="login"></a></li>
                <li><a class="off-canvas-open" href="#"><span class="menu-item-span"><i class="ti-menu"></i></span></a>
                </li>
                <li class="nav-toggle"><a href="#" data-toggle="collapse" data-target=".inner-navigation"><span
                        class="menu-item-span"><i class="ti-menu"></i></span></a></li>
            </ul>
        </div>
    </div>
</header>
<!-- Header end-->
<script>
    $(document).ready(function () { //이 파일이 시작되면 자동으로 실행됩니다.
        loginInfo();
    })

    function loginInfo() { //로그인 여부에 따라 버튼을 바꿔주는 역할
        var user = <%=user%>;
        var list = $('#login');
        var a = '';
        if (user == null) {//미로그인 상태
            a += '<span id="login" style="font-family: \'Monospaced\', serif;" onclick="goToLoginPage();">Login</span>';
        } else {//로그인 상태
            // alert(user.type+'의 접속');
            a += '<span id="logout" style="font-family: \'Monospaced\', serif;" onclick="logout()">Logout</span>';
        }
        list.append(a);
    }

    function goToLoginPage() {
        location.href = 'loginPage.jpt';
    }

    function logout() {
        location.href = 'logout.jpt';
    }
</script>