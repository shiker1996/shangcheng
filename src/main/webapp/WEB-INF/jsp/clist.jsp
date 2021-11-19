<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'clist.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <!-- font-awesome & simple line icons CSS -->
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css" media="all">
    <link rel="stylesheet" type="text/css" href="css/simple-line-icons.css" media="all">

    <!-- owl.carousel CSS -->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css/owl.theme.css">
    <link rel="stylesheet" type="text/css" href="css/owl.transitions.css">

    <!-- animate CSS  -->
    <link rel="stylesheet" type="text/css" href="css/animate.css" media="all">

    <!-- flexslider CSS -->
    <link rel="stylesheet" type="text/css" href="css/flexslider.css">

    <!-- jquery-ui.min CSS  -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">

    <!-- Mean Menu CSS -->
    <link rel="stylesheet" type="text/css" href="css/meanmenu.min.css">

    <!-- nivo-slider css -->
    <link rel="stylesheet" type="text/css" href="css/nivo-slider.css">

    <!-- style CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all">


</head>

<body>
<div class="row">
    <div class="col-main col-sm-9 col-xs-12 col-sm-push-3">
        <div class="shop-inner">
            <div class="product-grid-area">
                <ul class="products-grid">
                    <c:forEach items="${list }" var="goods">
                        <li class="item col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item">
                                <div class="item-inner">
                                    <div class="product-thumbnail">
                                        <a href="station?id=${goods.id }&customer=1" class="product-item-photo">
                                            <img class="product-image-photo" src="img/${goods.picUrl}"
                                                 alt=""></a></div>
                                    <div class="pro-box-info">
                                        <div class="item-info">
                                            <div class="info-inner">
                                                <div class="item-title"><a title="${goods.name }"
                                                                           href="station?id=${goods.id }&customer=1">${goods.name }</a>
                                                </div>
                                                <div class="item-content">
                                                    <div class="list-group-item-text">库存：${goods.num}</div>
                                                    <div class="item-price">
                                                        <div class="price-box">
                                                            <p class="special-price"><span class="price-label">特价</span>
                                                                <span class="price"> ￥${goods.pride }</span></p>
                                                            <p class="old-price"><span
                                                                    class="price-label">原价:</span>
                                                                <span class="price"> ￥${goods.pride } </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="box-hover">
                                            <div class="product-item-actions">
                                                <div class="pro-actions">
                                                    <a href="cart/add?goodsId=${goods.id }&goodsNum=1&customerId=${customer.id}"
                                                       class="action add-to-cart"
                                                       title="Add to Cart"> <span>添加到购物车</span> </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Footer -->
<!-- JS -->

<!-- jquery js -->
<script type="text/javascript" src="js/jquery.min.js"></script>

<!-- bootstrap js -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<!-- Mean Menu js -->
<script type="text/javascript" src="js/jquery.meanmenu.min.js"></script>

<!-- owl.carousel.min js -->
<script type="text/javascript" src="js/owl.carousel.min.js"></script>

<!-- bxslider js -->
<script type="text/javascript" src="js/jquery.bxslider.js"></script>

<!--jquery-ui.min js -->
<script type="text/javascript" src="js/jquery-ui.js"></script>

<!-- countdown js -->
<script type="text/javascript" src="js/countdown.js"></script>

<!-- wow JS -->
<script type="text/javascript" src="js/wow.min.js"></script>

<!--cloud-zoom js -->
<script type="text/javascript" src="js/cloud-zoom.js"></script>

<!-- main js -->
<script type="text/javascript" src="js/main.js"></script>

<!-- nivo slider js -->
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>

<!-- flexslider js -->
<script type="text/javascript" src="js/jquery.flexslider.js"></script>


</body>
</html>
