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

    <title>登陆</title>
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
    <script src="js/bootstrap.min.js" type="javascript"></script>
</head>

<body>
<div align="center" style="margin-top: 20%">
    <h1>欢迎光临</h1>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <form action="loginReq" method="post" class="form-horizontal" id="form">
                <div class="form-group">
                    <label for="phoneNum" class="col-sm-3 control-label">手机号:</label>
                    <div class="col-sm-8">
                        <input type="text" name="phone" class="form-control" id="phoneNum" placeholder="请输入手机号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label"> 密码</label>
                    <div class="col-sm-8">
                        <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="accountType" class="col-sm-3 control-label"> 用户类型 </label>
                    <div class="col-sm-8">
                        <select name="type" class="form-control" id="accountType">
                            <option>--请选择账户类型--</option>
                            <option value="employee">售货员</option>
                            <option value="customer">顾客</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-8 col-md-offset-3">
                        <p class="bg-danger">${msg }</p>
                    </div>
                </div>
                <input class="btn btn-success" type="submit" value="登陆">
            </form>
        </div>
    </div>
</div>
</body>
</html>
