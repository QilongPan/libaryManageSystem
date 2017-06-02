<%@ page language="java" import="java.util.*,user.User" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userManage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="userManage.css">


  </head>
  
  <body>
   		<body>
 		<div class="top">
 				<span class="word1">Book Store</span>
 		</div>
 		<div class="left">
 			<ul>
 				<li><a href="userManage.jsp" >用户管理</a></li>
 				<li><a href="goodsManage.jsp" >商品管理</a></li>
 			</ul>
 		</div>
 		<div class="right">
 			<form action= "/libaryManageSystem/servlet/AllUser" method="post">
	 			<div class="rightDiv">
	 				 用户名:<input type="text" name="userName"/>
				    地址:<input type="text" name="address"/>
				     <input type="submit" value="查询"/>
	 			</div>
			  
			</form>
 			<table >
		    <tr>
			    <td>用户名</td>
			    <td>性别</td>
			    <td>生日</td>
			    <td>电话号码</td>
			    <td>邮政编码</td>
			    <td>联系地址</td>
			    <td>余额</td>
			    <td>操作</td>
			    <td></td>
			    <td></td>
		    </tr>
	    <%
	    	ArrayList<User> users=(ArrayList)request.getAttribute("users");
	    	request.setCharacterEncoding("utf-8");
	    	if(users!=null)
	    			for(int i=0;i<users.size();i++){%>
	    			<tr>
	    			<td><%=users.get(i).getUserName()%></td>
	    			<td><%=users.get(i).getSex() %></td>
	    			<td><%= users.get(i).getBirthday()%></td>
	    			<td><%=users.get(i).getTelephoneNumber() %></td>
	    			<td><%=users.get(i).getPostCode() %></td>
	    			<td><%=users.get(i).getAddress() %></td>
	    			<td><%=users.get(i).getBalance() %></td>
	    			<td><a href="/libaryManageSystem/servlet/DeleteUser?userName=<%=users.get(i).getUserName() %>">删除</a></td>
	    			<td><a href="/libaryManageSystem/enter.jsp?userName=<%= users.get(i).getUserName() %>&password=<%=users.get(i).getPassword() %>&sex=<%=users.get(i).getSex() %>&birthday=<%=users.get(i).getBirthday() %>&telephoneNumber=<%=users.get(i).getTelephoneNumber() %>&postCode=<%=users.get(i).getPostCode() %>&address=<%=users.get(i).getAddress() %>&realName=<%=users.get(i).getRealName() %>&balance=<%=users.get(i).getBalance() %>">编辑</a></td>
	  				<td><a href="/libaryManageSystem/check.jsp?userName=<%= users.get(i).getUserName() %>&password=<%=users.get(i).getPassword() %>&sex=<%=users.get(i).getSex() %>&birthday=<%=users.get(i).getBirthday() %>&telephoneNumber=<%=users.get(i).getTelephoneNumber() %>&postCode=<%=users.get(i).getPostCode() %>&address=<%=users.get(i).getAddress() %>&balance=<%=users.get(i).getBalance() %>">查看</a></td>
  					</tr>
	    		<%	}
	    	%>
	      </table>
 				
 		</div>
  </body>
</html>
