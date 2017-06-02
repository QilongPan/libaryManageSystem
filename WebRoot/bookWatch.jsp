<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookWatch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="bookWatch.css">
	

  </head>
  
  <body background="file:///F|/libaryManageSystem/WebRoot/imagie/background.jpg">
  <div class="top"><span class="topWord">查看图书信息页面</span></div>
    <div class="container">
	  	<form name="form" method="post"  action="/libaryManageSystem/goodsManage.jsp" onSubmit="return checkEmpty(form)">
	  	<table>
		   			<tr>
		   				<td>ISBN:</td>
		   				<td><input name="ISBN" type="text"  value=<%=request.getParameter("ISBN")%>></td>
		   			</tr>
		   			<tr>
		   				<td>书名:</td>
		   				<td><input name="bookName" type="text"  value=<%=request.getParameter("bookName") %>></td>
		   			</tr>
		   			<tr>
		   				<td>作者:</td>
		   				<td><input name="author" type="text" value="<%=request.getParameter("author")%>"></td>
		   			</tr>
		   			
		   			<tr>
		   				<td>价格:</td>
		   				<td><input name="price"  type="text"  value=<%=request.getParameter("price")%>></td>
		   			</tr>
		   			<tr>
		   				<td>出版社:</td>
		   				<td><input name="press"  type="text"  value="<%=request.getParameter("press") %>"></td>
		   			</tr>
		   			<tr>
		   				<td>图书详情:</td>
		   				<td><input name="imageInformation" type="text"  value=<%=request.getParameter("imageInformation") %>></td>
		   			</tr>
		   			<tr>
		   				<td>库存:</td>
		   				<td><input name="inventory" type="text"  value=<%=request.getParameter("inventory")%>></td>
		   			</tr>
		   			<tr>
		   				<td>类型:</td>
		   				<td><input name="type" type="text"  value=<%=request.getParameter("type")%>></td>
		   			</tr>
		   			<tr>
			   			<td><input type="submit" name="Submit" class="submit" value="取消" /></td>
			   		
		   			</tr>
		   		</table>
	  	</form>
  	</div>
  </body>
</html>
