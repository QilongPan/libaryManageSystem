  <%@ page language="java" import="java.util.*,user.User" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="manage1.css">
	
  </head>
  
  <body>
 		<div class="top">
 			Book Store
 			<%
 				User user =(User) request.getAttribute("user") ;
 			 %>
 			 <span >欢迎您:<%=user.getUserName() %></span>
 			<a href="bookStore.jsp">前台</a>
 			<a href="index.jsp">退出</a>
 		</div>
 		
 		<div class="left">
 			<ul>
 				<li><a href="userManage.jsp" >用户管理</a></li>
 				<li><a href="goodsManage.jsp" >商品管理</a></li>
 			</ul>
 		</div>
 		
 		<div class="right">
 		</div>
  </body>
</html>
