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

    <title>My JSP 'clist.jsp' starting page</title>

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

<div class="row">

    <div class="col-md-9 col-md-offset-1">
        <form action="gupdate" class="form-horizontal">
            <div class="form-group">
                <label for="goodsName" class="col-sm-3 control-label">商品名:</label>
                <div class="col-sm-8">
                    <input name="id" value=${goods.id } type="number" hidden="hidden">
                    <input type="text" value=${goods.name } name="name" class="form-control" id="goodsName"
                           required="required"
                           placeholder="请输入商品名称" readonly="readonly">
                </div>
            </div>
            <div class="form-group">
                <label for="goodsNum" class="col-sm-3 control-label">数量:</label>
                <div class="col-sm-8">
                    <input type="number" value=${goods.num } name="num" class="form-control" id="goodsNum"
                           required="required"
                           placeholder="请输入商品数量">
                </div>
            </div>
            <div class="form-group">
                <label for="goodsPrice" class="col-sm-3 control-label">价格:</label>
                <div class="col-sm-8">
                    <input type="text" value=${goods.pride } name="num" class="form-control" id="goodsPrice"
                           required="required"
                           placeholder="请输入商品价格">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-8 col-sm-offset-3">
                    <input class="btn btn-success" type="submit" value="提交">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
