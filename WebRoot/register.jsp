<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'register.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="register.css">
  </head>
  <body>
  <div class="container">
	  <form method="post" action="/libaryManageSystem/servlet/SaveUser" onSubmit="return checkEmpty(form)">
	   		<table>
	   			<tr>
	   				<td>用户名:</td>
	   				<td><input type="text" name="userName"/></td>
	   			</tr>
	   			<tr>
	   				<td>密码:</td>
	   				<td><input name="password" type="password" /></td>
	   			</tr>
	   			<tr>
	   				<td>性别:</td>
	   				<td><input name="sex"  type="text"/></td>
	   			</tr>
	   			<tr>
	   				<td>生日:</td>
	   				<td><input name="birthday"  type="text"  /></td>
	   			</tr>
	   			<tr>
	   				<td>电话:</td>
	   				<td><input  name ="telephoneNumber"  type="text"  /></td>
	   			</tr>
	   			
	   			<tr>
	   				<td>邮政编码:</td>
	   				<td><input name="postCode" type="text" /></td>
	   			</tr>
	   			<tr>
	   				<td>住址:</td>
	   				<td><input name="address" type="text" /></td>
	   			</tr>
	   			<tr>
	   				<td>真实姓名:</td>
	   				<td><input name="realName" type="text" /></td>
	   				
	   			</tr>
	   			<tr>
	   				<td>余额:</td>
	   				<td><input name="balance" type="text" /></td>
	   				
	   			</tr>
	   		</table>
	   		<input type="submit" name="Submit" value="提交"/>
	   		<input type="reset" name="Submit2" value="重置" class="reset"/>
	   		<input type="hidden"  name="status" value="saveStudent"/>
	   	</form>
  </div>
   	
  </body>
</html>
