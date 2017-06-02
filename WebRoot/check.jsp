<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="check.css">
	

  </head>
  <body background="file:///F|/libaryManageSystem/WebRoot/imagie/background.jpg">
  <div class="top"><span class="topWord">查看用户信息页面</span></div>
    <div class="container">
	  	<form name="form" method="post"  action="/libaryManageSystem/userManage.jsp" onSubmit="return checkEmpty(form)">
	  	<table>
	   			<tr>
	   				<td>用户名:</td>
	   				<td><input type="text" name="userName" value=<%=request.getParameter("userName")%>/></td>
	   			</tr>
	   			<tr>
	   				<td>密码:</td>
	   				<td><input name="password"  type="text" value=<%=request.getParameter("password")%>/></td>
	   			</tr>
	   			<tr>
	   				<td>性别:</td>
	   				<td><input name="sex"  type="text" value=<%=request.getParameter("sex")%>/></td>
	   			</tr>
	   			<tr>
	   				<td>生日:</td>
	   				<td><input name="birthday"  type="text"  value=<%=request.getParameter("birthday")%>/></td>
	   			</tr>
	   			<tr>
	   				<td>电话:</td>
	   				<td><input type="text"  value=<%=request.getParameter("telephoneNumber")%>/></td>
	   			</tr>
	   			
	   			
	   			<tr>
	   				<td>邮政编码:</td>
	   				<td><input name="postCode" type="text" value=<%=request.getParameter("postCode")%>/></td>
	   			</tr>
	   			<tr>
	   				<td>住址:</td>
	   				<td><input name="address" type="text" value=<%=request.getParameter("address")%>/></td>
	   			</tr>
	   			<tr>
	   				<td>真实姓名:</td>
	   				<td><input name="realName" type="text" value=<%=request.getParameter("realName")%>/></td>
	   				
	   			</tr>
	   			<tr>
	   				<td>余额:</td>
	   				<td><input name="balance" type="text" value=<%=request.getParameter("balance")%>/></td>
	   				
	   			</tr>
	   		</table>
	  	</form>
  	</div>
  </body>
</html>
