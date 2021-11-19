<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <table class="table table-striped">
            <tr>
                <td>商品名</td>
                <td>数量</td>
                <td>价格</td>
                <td>上架日期</td>
                <td>生产日期</td>
                <td>保质期</td>
            </tr>
            <tr>
                <td>${good.name }</td>
                <td>${good.num }</td>
                <td>${good.pride }</td>
                <td><fmt:formatDate value="${good.onshelf }" pattern="yyyy年MM月dd日 HH:mm:ss"/></td>
                <td><fmt:formatDate value="${good.prodate }" pattern="yyyy年MM月dd日 HH:mm:ss"/></td>
                <td><fmt:formatDate value="${good.reldate }" pattern="yyyy年MM月dd日 HH:mm:ss"/></td>
            </tr>
            <%if (request.getParameter("customer") != null) { %>
            <tr>
                <a href="http://localhost:8080/clist">返回商品页</a>
            </tr>
            <%} else if (request.getParameter("employee") != null) {%>
            <tr>
                <a href="http://localhost:8080/elist">返回商品页</a>
            </tr>
            <%} %>
        </table>
    </div>
</div>
</body>
</html>
