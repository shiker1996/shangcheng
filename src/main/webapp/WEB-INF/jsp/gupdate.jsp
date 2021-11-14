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

<title>My JSP 'clist.jsp' starting page</title>

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
	<form action="gupdate">
		<table bordercolor="red">
			<tr>
				<td><input name="id" value=${goods.id } type="number"
					hidden="hidden">商品名</td>
				<td><input name="name" value=${goods.name } type="text"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>数量</td>
				<td><input name="num" value=${goods.name } type="number"></td>
			</tr>
			<tr>
				<td>价格</td>
				<td><input name="pride" value=${goods.pride } type="text"></td>
			</tr>
			<tr>
				<td></td>
				<td><input value="提交" type="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>
