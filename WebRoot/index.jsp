<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="index.css">
	<script>
		
	</script>
	
  </head>
  
  <body background="file:///F|/libaryManageSystem/WebRoot/imagie/background.jpg">
    <div class="top"><span class="topWord">Book Store 后台管理系统</span></div>
    <div class="container">
	    <form name="form" action="/libaryManageSystem/servlet/Enter" method="post" onSubmit="return checkEmpty(form)">
	    	<table>
	    		<tr>
	    			<td>用户名:</td>
	    			<td><input type="text"  name="userName"/></td>
	    		</tr>
	    		<tr>
	    			<td>密码:</td>
	    			<td><input class="password" type="password" name="password" /></td>
	    		</tr>
	    		<tr>
	    			<td><input type="submit" name="Submit" class="submit" value="登陆" /></td>
	    		</tr>
	    	</table>
	    </form>
    </div>
  </body>
</html>
