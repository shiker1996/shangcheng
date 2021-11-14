<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    <table border="1" bordercolor="red">
		<tr>
			<td>商品名</td>
			<td>数量</td>
			<td>价格</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${list }" var="goods">
			<tr>
				<td>${goods.name }</td>
				<td>${goods.num }</td>
				<td>${goods.pride }</td>
				<td><a href="station?id=${goods.id }&employee=1">详情</a> 
				    <a href="updateInfo?id=${goods.id }">更新</a> 
					<a href="delete?id=${goods.id }">删除</a></td>
			</tr>
		</c:forEach>
	</table>
  </body>
</html>
