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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
    <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script>
        $(function () {
            //将需要提交的checkbox的value，拼成字符串，放入隐藏域replyway
            $('input[type=checkbox]').change(function () {
                $('#ids').val($('input[type=checkbox]:checked').map(function () {
                    return this.value
                }).get().join(','));
            });
        });
    </script>
</head>

<body>
<div>
    <div class="row">
        <form action="purchase" method="post">
            <div class="col-md-9 col-md-offset-1">
                <table class="table table-striped">
                    <tr>
                        <td>
                            <div class="checkbox">
                                <label><input type="button" id="checkall" name="checkall" value="全选"/> </label>
                            </div>
                        </td>
                        <td>图片</td>
                        <td>商品名</td>
                        <td>购买数量</td>
                        <td>价格</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${list }" var="cartDto">
                        <tr>
                            <td>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="${cartDto.userCart.id}"/> </label>
                                </div>
                            </td>
                            <td><img src="img/${cartDto.goods.picUrl}" alt="${cartDto.goods.name }" width="100px"
                                     height="100px" class="img-rounded"></td>
                            <td>${cartDto.goods.name }</td>
                            <td>${cartDto.userCart.goodsNum }</td>
                            <td>${cartDto.goods.pride }</td>
                        </tr>
                    </c:forEach>
                    <input type="hidden" name="ids" id="ids" value="">
                </table>
            </div>
            <div class="form-group">
                <div class="col-sm-8 col-sm-offset-1">
                    <input class="btn btn-success" type="submit" value="购买">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
