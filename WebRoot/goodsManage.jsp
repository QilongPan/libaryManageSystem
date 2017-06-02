<%@ page language="java" import="java.util.*,user.MyBook" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goodsManage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="goodsManage.css">
	

  </head>
  
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
 			<form action= "/libaryManageSystem/servlet/SearchBook" method="post">
 			<div class="rightDiv">
 				  书名:<input type="text" name="bookName"/>
			    	类型:<input type="text" name="type"/>
			    	<input type="submit" value="查询"/>
 			</div>
			  
			</form>
 			<table>
		    <tr>
			    <td>ISBN</td>
			    <td>书名</td>
			    <td>作者</td>
			    <td>价格</td>
			    <td>出版社</td>
			    <td>库存</td>
			    <td>类型</td>
			    <td>操作</td>
		    </tr>
	    <%
	   	request.setCharacterEncoding("utf-8");
	    	ArrayList<MyBook> books=(ArrayList)request.getAttribute("books");
	    	if(books!=null)
	    			for(int i=0;i<books.size();i++){%>
	    			<tr>
	    			<td><%=books.get(i).getISBN()%></td>
	    			<td><%=books.get(i).getBookName() %></td>
	    			<td><%= books.get(i).getAuthor()%></td>
	    			<td><%=books.get(i).getPrice() %>
	    			<td><%=books.get(i).getPress() %></td>
	    			<td><%=books.get(i).getInventory() %></td>
	    			<td><%=books.get(i).getType() %></td>
	    			<td><a href="/libaryManageSystem/servlet/DeleteBook?ISBN=<%=books.get(i).getISBN() %>">删除</a></td>
	    			<td><a href="/libaryManageSystem/BookAlter.jsp?ISBN=<%= books.get(i).getISBN() %>&bookName=<%=books.get(i).getBookName() %>&author=<%=books.get(i).getAuthor() %>&price=<%=books.get(i).getPrice() %>&path=<%=books.get(i).getPath() %>&press=<%=books.get(i).getPress() %>&imageInformation=<%=books.get(i).getImageInformation() %>&inventory=<%=books.get(i).getInventory() %>&type=<%=books.get(i).getType() %>">编辑</a></td>
	  				<td><a href="/libaryManageSystem/bookWatch.jsp?ISBN=<%= books.get(i).getISBN() %>&bookName=<%=books.get(i).getBookName() %>&author=<%=books.get(i).getAuthor() %>&price=<%=books.get(i).getPrice() %>&path=<%=books.get(i).getPath() %>&press=<%=books.get(i).getPress() %>&imageInformation=<%=books.get(i).getImageInformation() %>&inventory=<%=books.get(i).getInventory() %>&type=<%=books.get(i).getType() %>">查看</a></td>
  					</tr>
	    		<%	}
	    	%>
	      </table>
 		</div>
 		
 		
 		
  </body>
  </body>
</html>
