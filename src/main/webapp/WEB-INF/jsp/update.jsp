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
    <div class="col-md-4 col-md-offset-4">
        <%
            if (request.getParameter("customer") != null) {
        %>
        <form action="cupdate" class="form-horizontal">
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label"> 密码</label>
                <div class="col-sm-8">
                    <input name="phone" value="<%=request.getParameter("phone")%>" hidden="hidden">
                    <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-8 col-sm-offset-3">
                    <input class="btn btn-success" type="submit" value="提交">
                </div>
            </div>
        </form>
        <%
        } else if (request.getParameter("employee") != null) {
        %>
        <form action="eupdate" class="form-horizontal">
            <div class="form-group">
                <div class="col-sm-8">
                    <label>
                        <input name="phone" value="<%=request.getParameter("phone")%>" hidden="hidden">
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label"> 密码</label>
                <div class="col-sm-8">
                    <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-8 col-sm-offset-3">
                    <input class="btn btn-success" type="submit" value="提交">
                </div>
            </div>
        </form>
        <%
            }
        %>
    </div>
</div>
</body>
</html>
