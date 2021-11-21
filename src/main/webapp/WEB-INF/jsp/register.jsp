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
                                            <li><a href="http://localhost:8080/cinfo?phone=${customer.phone }">账户</a>
                                            </li>
                                            <li>
                                                <a href="http://localhost:8080/cart/list?customerId=${customer.id }">购物车</a>
                                            </li>
                                            <li><a href="http://localhost:8080/record?name=${customer.name }">消费记录</a>
                                            </li>
                                            <%
                                                if (request.getSession().getAttribute("customer") == null) {
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
            <!--购物车-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-3 col-md-3 col-xs-12">
                        <!-- Header Logo -->
                        <div class="logo"><a title="e-commerce" href="index.html"><img alt="e-commerce"
                                                                                       src="/images/logo.png"></a></div>
                        <!-- End Header Logo -->
                    </div>
                    <div class="col-lg-3 col-sm-4 col-xs-12 top-cart">
                        <c:if test="${cartList != null}">
                            <div class="top-cart-contain">
                                <div class="mini-cart">
                                    <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"><a
                                            href="#">
                                        <div class="cart-icon"><i class="fa fa-shopping-cart"></i></div>
                                        <div class="shoppingcart-inner"><span class="cart-title">购物车</span> <span
                                                class="cart-total">${cartNum} 个物品: ￥${cartTotalPrice}</span></div>
                                    </a></div>
                                    <div>
                                        <div class="top-cart-content">
                                            <div class="block-subtitle hidden-xs">最近添加</div>

                                            <c:forEach items="${cartList }" var="cartDto">
                                                <li class="item odd"><a href="#" title="Ipsums Dolors Untra"
                                                                        class="product-image"><img
                                                        src="img/${cartDto.goods.picUrl}" alt="${cartDto.goods.name }"
                                                        width="65"></a>
                                                    <div class="product-details"><a
                                                            href="/cart/del?cartId=${cartDto.userCart.id}"
                                                            title="Remove This Item"
                                                            class="remove-cart"><i
                                                            class="icon-close"></i></a>
                                                        <p class="product-name">${cartDto.goods.name }</p>
                                                        <strong>${cartDto.userCart.goodsNum }</strong> x <span
                                                                class="price">￥${cartDto.goods.pride }</span></div>
                                                </li>
                                            </c:forEach>
                                            <div class="top-subtotal">总价: <span class="price"> ￥${cartTotalPrice}</span>
                                            </div>
                                            <div class="actions">
                                                <button onclick="location.href='checkout.html'" class="btn-checkout"
                                                        type="button"><i class="fa fa-check"></i><span>账单</span>
                                                </button>
                                                <button onclick="location.href='shopping_cart.html'" class="view-cart"
                                                        type="button"><i class="fa fa-shopping-cart"></i>
                                                    <span>购物车</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
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
                                <li class="custom-menu"><a href="/">主页</a>
                                </li>

                                <%
                                    if (request.getSession().getAttribute("customer") != null) {
                                %>
                                <li class="custom-menu"><a href="http://localhost:8080/cinfo?phone=${customer.phone }">账户</a>
                                </li>
                                <li class="custom-menu">
                                    <a href="http://localhost:8080/cart/list?customerId=${customer.id }">购物车</a>
                                </li>
                                <li class="custom-menu"><a href="http://localhost:8080/record?name=${customer.name }">消费记录</a>
                                        <%
                                    }
                                %>
                            </ul>
                        </nav>
                        <!-- Signup -->
                        <%
                            if (request.getSession().getAttribute("customer") == null) {
                        %>
                        <p class="top-Signup"><a href="#" class="" role="button" data-toggle="modal"
                                                 data-target="#login-modal">登录/注册</a></p>
                        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true"
                             style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header"><img id="img_logo" src="/images/logo.png" alt="logo">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                                    </div>
                                    <div id="div-forms">
                                        <form action="loginReq" method="post" class="form-horizontal" id="login-form">
                                            <div class="modal-body">
                                                <div id="div-login-msg"><span id="text-login-msg">登录信息 </span></div>
                                                <input id="login_username" name="phone" class="form-control" type="text"
                                                       placeholder="手机号" required>
                                                <input id="login_password" name="password" class="form-control"
                                                       type="password"
                                                       placeholder="密码" required>
                                                <select name="type" class="form-control" id="accountType">
                                                    <option>--请选择账户类型--</option>
                                                    <option value="employee">售货员</option>
                                                    <option value="customer">顾客</option>
                                                </select>
                                                <p class="bg-danger">${msg }</p>
                                            </div>
                                            <div class="modal-footer">
                                                <div>
                                                    <button type="submit" class="btn-login">Login</button>
                                                </div>
                                                <div>
                                                    <button onclick="location.href='http://localhost:8080/register'"
                                                            id="login_register_btn" type="button" class="btn btn-link">
                                                        注册
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END # MODAL LOGIN -->
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Menu Area -->
    <!-- Main Container -->
    <section class="main-container col1-layout">
        <div class="main container">


            <div class="page-content">

                <div class="account-login">

                    <div class="row">
                        <div class="col-md-4 col-md-offset-4">
                            <form action="registerReq" method="post" class="form-horizontal" id="form">
                                <div class="form-group">
                                    <label for="phoneNum" class="col-sm-3 control-label">手机号:</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="phone" class="form-control" id="phoneNum"
                                               placeholder="请输入手机号">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="phoneNum" class="col-sm-3 control-label">姓名:</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="phone" class="form-control" id="phoneNum"
                                               placeholder="请输入姓名">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password1" class="col-sm-3 control-label"> 密码</label>
                                    <div class="col-sm-8">
                                        <input type="password" name="password1" class="form-control" id="password1"
                                               placeholder="请输入密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password2" class="col-sm-3 control-label"> 密码</label>
                                    <div class="col-sm-8">
                                        <input type="password" name="password2" class="form-control" id="password2"
                                               placeholder="请输入密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="accountType" class="col-sm-3 control-label"> 用户类型 </label>
                                    <div class="col-sm-8">
                                        <select name="type" class="form-control" id="accountType">
                                            <option>--请选择账户类型--</option>
                                            <option value="customer">顾客</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-8 col-md-offset-3">
                                        <p class="bg-danger">${msg }</p>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-sm-8 col-md-offset-3">
                                        <input class="btn btn-success" type="submit" value="注册">

                                    </div>
                                </div>
                            </form>
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
