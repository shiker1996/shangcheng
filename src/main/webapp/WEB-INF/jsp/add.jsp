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
	<form action="add">
		<table bordercolor="red">
			<tr>
				<td>商品名</td>
				<td><input name="name" type="text" required="required"></td>
			</tr>
			<tr>
				<td>数量</td>
				<td><input name="num" type="number" required="required"></td>
			</tr>
			<tr>
				<td>价格</td>
				<td><input name="pride" type="text" required="required"></td>
			</tr>
			<tr>
				<td>上架日期</td>
				<td><input name="onshelf" type="date" required="required"></td>
			<tr>
				<td>生产日期</td>
				<td><input name="prodate" type="date" required="required"></td>
			</tr>
			<tr>
				<td>保质期</td>
				<td><input name="reldate" type="date" required="required"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>

</body>
</html>
