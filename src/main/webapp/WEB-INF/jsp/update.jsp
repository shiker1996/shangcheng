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
	<%
		if (request.getParameter("customer") != null) {
	%>
	<form action="cupdate">
		<table>
			<tr>
				<input name="phone" value="<%=request.getParameter("phone")%>"
					hidden="hidden">
				<td>密码</td>
				<td><input name="password" type="password"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
	<%
		} else if (request.getParameter("employee") != null) {
	%>
	<form action="eupdate">
		<table>
			<tr>
				<input name="phone" value="<%=request.getParameter("phone")%>"
					hidden="hidden">
				<td>密码</td>
				<td><input name="password" type="password"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
	<%
		}
	%>
</body>
</html>
