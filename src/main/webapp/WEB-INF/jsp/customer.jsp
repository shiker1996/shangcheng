<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>welcome: ${customer.name }</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript" type="text/javascript">
	
</script>
</head>
<body>
    <div style="width:100%; height:20%;"><img src="img/chaoshi.png" width="100%" height="100%"></div>
	<div style="float:left" style="width:20%; height:80%;">
		<ul>
			<li><a href="http://localhost:8080/clist"
				target="iframe_a">购买商品</a></li>
				<li><a href="http://localhost:8080/record?name=${customer.name }"
				target="iframe_a">消费记录</a></li>
				<li><a href="http://localhost:8080/cinfo?phone=${customer.phone }"
				target="iframe_a">个人信息</a></li>
				<li><a href="http://localhost:8080/updateReq?&phone=${customer.phone }&customer=1"
				target="iframe_a">更改密码</a></li>
				<li><a href="http://localhost:8080/logout">退出</a></li>
		</ul>
	</div>
	<div style="width:80%; height:80%;float:left">
	<iframe src="http://localhost:8080/clist" name="iframe_a"
		frameborder="1" width="100%" height="100%"> </iframe>
	</div>
</body>
</html>
