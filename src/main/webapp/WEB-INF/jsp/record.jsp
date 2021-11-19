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
<table class="table table-striped">
    <tr>
        <td>交易序号</td>
        <td>商品名</td>
        <td>购买人</td>
        <td>商品序号</td>
        <td>交易状态</td>
    </tr>
    <c:forEach items="${list }" var="record">
        <tr>
            <td>${record.id }</td>
            <td>${record.gname }</td>
            <td>${record.name }</td>
            <td>${record.gid }</td>
            <td>${record.gstate }</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
