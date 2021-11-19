<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>凯德超市欢迎你: ${employee.name }</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
    <script src="js/bootstrap.min.js" type="javascript"></script>
</head>

<body>
<div class="page-header">
    <div class="jumbotron" style="background-image: url('img/shangchengbeijing.png')">
        <h1>欢迎光临，凯德超市!</h1>
        <p>凯德超市欢迎你: ${employee.name }</p>
    </div>
</div>
<div class="row">
    <div class="col-md-4" align="left">
        <ul class="nav nav-pills nav-stacked">
            <li><a href="http://localhost:8080/elist"
                   target="iframe_a">管理商品</a></li>
            <li><a href="http://localhost:8080/einfo?phone=${employee.phone }"
                   target="iframe_a">个人信息</a></li>
            <li><a href="http://localhost:8080/updateReq?phone=${employee.phone }&employee=1"
                   target="iframe_a">更改密码</a></li>
            <li><a href="http://localhost:8080/addReq"
                   target="iframe_a">添加商品</a></li>
            <li><a href="http://localhost:8080/logout">退出</a></li>
        </ul>
    </div>
    <div class="col-md-8" align="center">
        <iframe class="embed-responsive-item" src="http://localhost:8080/elist" frameborder="0" width="100%"
                height="100%" name="iframe_a"></iframe>
    </div>
</div>

</body>
</html>
