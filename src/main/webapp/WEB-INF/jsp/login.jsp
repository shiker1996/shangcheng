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

<title>登陆</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<div align="center" style="margin-top: 20%">
	<h1>欢迎光临</h1>
		<form action="loginReq" method="post">
			<table bordercolor="red">
				<tr>
					<td>手机号</td>
					<td><input type="text" name="phone" /></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>用户类型</td>
					<td><select name="type">
							<option>--请选择账户类型--</option>
							<option value="employee">售货员</option>
							<option value="customer">顾客</option>
					</select></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="登陆"></td>
				</tr>
			</table>
			${msg }
		</form>
	</div>
</body>
</html>
