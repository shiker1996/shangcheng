<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic page needs -->
    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>凯德超市</title>
    <meta name="description" content="">

    <!-- Mobile specific metas  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon  -->
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,500,500italic,700' rel='stylesheet'
          type='text/css'>

    <!-- CSS Style -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">

    <!-- font-awesome & simple line icons CSS -->
    <link rel="stylesheet" type="text/css" href="/css/font-awesome.css" media="all">
    <link rel="stylesheet" type="text/css" href="/css/simple-line-icons.css" media="all">

    <!-- owl.carousel CSS -->
    <link rel="stylesheet" type="text/css" href="/css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="/css/owl.theme.css">
    <link rel="stylesheet" type="text/css" href="/css/owl.transitions.css">

    <!-- animate CSS  -->
    <link rel="stylesheet" type="text/css" href="/css/animate.css" media="all">

    <!-- flexslider CSS -->
    <link rel="stylesheet" type="text/css" href="/css/flexslider.css">

    <!-- jquery-ui.min CSS  -->
    <link rel="stylesheet" type="text/css" href="/css/jquery-ui.css">

    <!-- Mean Menu CSS -->
    <link rel="stylesheet" type="text/css" href="/css/meanmenu.min.css">

    <!-- nivo-slider css -->
    <link rel="stylesheet" type="text/css" href="/css/nivo-slider.css">

    <!-- style CSS -->
    <link rel="stylesheet" type="text/css" href="/css/style.css" media="all">

</head>

<body class="shop_grid_page">


<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->


<div id="page">
    <!-- Header -->
    <header>
        <div class="header-container">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <!-- 顶部链接 -->
                        <div class="headerlinkmenu col-lg-offset-6 col-lg-6 col-md-offset-6 col-md-6 col-sm-7 col-xs-6 text-right">
                            <div class="links">
                                <div class="jtv-user-info">
                                    <div class="dropdown"><a class="current-open" data-toggle="dropdown"
                                                             aria-haspopup="true" aria-expanded="false" href="#"><span>我的账户 </span>
                                        <i class="fa fa-angle-down"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <%
                                                if (request.getSession().getAttribute("employee") != null) {
                                            %>
                                            <li><a href="http://localhost:8080/einfo?phone=${employee.phone }">账户</a>
                                            </li>
                                            <%
                                            } else if (request.getSession().getAttribute("employee") == null) {
                                            %>
                                            <li class="divider"></li>
                                            <li><a href="http://localhost:8080/logout">登录</a></li>
                                            <li><a href="http://localhost:8080/register">注册</a></li>
                                            <%
                                                }
                                            %>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- end header -->
    <!-- 菜单栏 -->
    <div class="menu-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12 hidden-xs">
                    <div class="main-menu">
                        <nav>
                            <ul>
                                <li class="custom-menu"><a href="http://localhost:8080/elist">主页</a>
                                </li>

                                <%
                                    if (request.getSession().getAttribute("employee") != null) {
                                %>
                                <li class="custom-menu"><a href="http://localhost:8080/elist"
                                                           target="iframe_a">管理商品</a></li>
                                <li class="custom-menu"><a href="http://localhost:8080/einfo?phone=${employee.phone }"
                                                           target="iframe_a">个人信息</a></li>
                                <li class="custom-menu"><a
                                        href="http://localhost:8080/updateReq?phone=${employee.phone }&employee=1"
                                        target="iframe_a">更改密码</a></li>
                                <li class="custom-menu"><a href="http://localhost:8080/addReq"
                                                           target="iframe_a">添加商品</a></li>
                                <li class="custom-menu"><a href="http://localhost:8080/logout">退出</a></li>
                                <%
                                    }
                                %>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Menu Area -->
    <!-- Main Container -->
    <section class="main-container col1-layout">
        <div class="main container">

            <div class="col-main">
                <div class="cart">
                    <div class="page-content page-order">
                        <div class="order-detail-content">
                            <div class="table-responsive">
                                <table class="table table-bordered cart_summary">
                                    <tr class="bg-primary">
                                        <th>用户ID</th>
                                        <td class="availability in-stock"><span
                                                class="label">${employee.id }</span></td>
                                    </tr>
                                    <tr class="bg-info">
                                        <th>姓名</th>
                                        <td class="availability in-stock"><span
                                                class="label">${employee.name }</span></td>
                                    </tr>
                                    <tr class="bg-warning">
                                        <th>手机号</th>
                                        <td class="availability in-stock"><span
                                                class="label">${employee.phone }</span></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Main Container End -->
    <!-- our clients Slider -->
    <!--底部服务-->
    <div class="bottom-service">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="bottom-service-box">
                    <div class="box-outer">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="service-box-center"><span class="bottom-service-title">两件以上</span>
                                <div class="description">
                                    <div class="heading">买一送一!</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 column">
                            <div class="service-box-center"><span class="bottom-service-title">日常优惠</span>
                                <div class="description">
                                    <div class="heading">8折!</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 column">
                            <div class="service-box-center"><span class="bottom-service-title">新品优惠</span>
                                <div class="description">
                                    <div class="heading">75折！</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 column">
                            <div class="service-box-center"><span class="bottom-service-title">新人优惠</span>
                                <div class="description">
                                    <div class="heading">45折</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->

    <footer>
        <div class="footer-coppyright">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-12 coppyright">Copyright &copy; 2021.Company name All rights reserved.
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <a href="#" class="totop"> </a></div>
<!-- End Footer -->
<!-- JS -->

<!-- jquery js -->
<script type="text/javascript" src="js/jquery.min.js"></script>

<!-- bootstrap js -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>

<!-- Mean Menu js -->
<script type="text/javascript" src="/js/jquery.meanmenu.min.js"></script>

<!-- owl.carousel.min js -->
<script type="text/javascript" src="/js/owl.carousel.min.js"></script>

<!-- bxslider js -->
<script type="text/javascript" src="/js/jquery.bxslider.js"></script>

<!--jquery-ui.min js -->
<script type="text/javascript" src="/js/jquery-ui.js"></script>

<!-- countdown js -->
<script type="text/javascript" src="/js/countdown.js"></script>

<!-- wow JS -->
<script type="text/javascript" src="/js/wow.min.js"></script>

<!--cloud-zoom js -->
<script type="text/javascript" src="/js/cloud-zoom.js"></script>

<!-- main js -->
<script type="text/javascript" src="/js/main.js"></script>

<!-- nivo slider js -->
<script type="text/javascript" src="/js/jquery.nivo.slider.js"></script>

<!-- flexslider js -->
<script type="text/javascript" src="/js/jquery.flexslider.js"></script>

</body>
</html>