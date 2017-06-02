<%@ page language="java" import="java.util.*,impl.QueryBook,user.MyBook" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchBookInformation.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="searchBookInformation1.css">
	 <script>
	 	window.onload = function () {
			urlinfo=window.location.href; //获取当前页面的url 
			len=urlinfo.length;//获取url的长度 
			offset=urlinfo.indexOf("?");//设置参数字符串开始的位置 
			newsidinfo=urlinfo.substr(offset,len) ;//取出参数字符串 这里会获得类似“id=1”这样的字符串 
			newsids=newsidinfo.split("=");//对获得的参数字符串按照“=”进行分割 
			newsid=newsids[1];//得到参数值 
			currentSrc = newsid.substr(1,newsid.length-2);//得到SRC
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			allImg[0].src=currentSrc;
		}
 	</script>
  </head>
  
  <body>
 		<div class="top">
 				<span class="word1">Book Store</span>
 				<input class="search"  placeholder="书籍搜索"  type="text"/>
 				<a class="lianjie" href="userRegister.jsp">注册</a>
 				<a class="lianjie2" href="javascript:" onClick="bgDiv.style.display='';loginBox.style.display='';">登录</a>
 		</div>
 		<div class="firstLeft">
 	
 		</div>
 		<form  method="post"  action="/libaryManageSystem/servlet/BuyBook" >
	 		<div class="right"  id="imgRight">
	 			<img id="watchImg"  src='file:///F|/libaryManageSystem/WebRoot/imagie/s2.jpg'>
	 			<%
	 				String urlString = request.getParameter("src");
	 				String path1="";
	 				if(urlString.length()==53)
	 					path1 = urlString.substring(urlString.length()-6,urlString.length()-5);
	 				else
	 					path1 = urlString.substring(urlString.length()-7,urlString.length()-5);
	 				QueryBook qub = new QueryBook();
	 				ArrayList<MyBook> books = qub.queryBook(path1);
	 				String str="这样就可以 ";
	 				request.getSession().setAttribute("books",books);
	 				request.getSession().setAttribute("string",str) ;
	 			 %>
	 			 <div class="buy">
	 			 	<span class="word3"><%=books.get(0).getBookName() %></span>
	 			 	<p><%=books.get(0).getAuthor() %></p>
	 			 	<p class="abc">￥<%=books.get(0).getPrice() %></p>
	 				购买数量<input  name="buyNumber"  type = "text"/> <span><%=books.get(0).getInventory() %></span></br>
	 				<input type="submit" value="立刻购买"/>
	 			 </div>
	 			 
	 			 <%
	 			 if(books.size()!=0){
	 			  %>
	 			  	<table class="book">
	 			  		<tr>
	 			  			<td>ISBN</td>
	 			  			<td><%=books.get(0).getISBN() %></td>
	 			  		</tr>
	 			  		<tr>
	 			  			<td>书名</td>
	 			  			<td><%=books.get(0).getBookName() %></td>
	 			  		</tr>
	 			  		<tr>
	 			  			<td>作者</td>
	 			  			<td><%=books.get(0).getAuthor()%></td>
	 			  		</tr>
	 			  		<tr>
	 			  			<td>价格</td>
	 			  			<td><%=books.get(0).getPrice()%></td>
	 			  		</tr>
	 			  		<tr>
	 			  			<td>类型</td>
	 			  			<td><%=books.get(0).getType()%></td>
	 			  		</tr>
	 			  		<tr>
	 			  			<td>库存</td>
	 			  			<td><%=books.get(0).getInventory()%></td>
	 			  		</tr>
	 			  		<tr>
	 			  			<td>出版社</td>
	 			  			<td><%=books.get(0).getPress()%></td>
	 			  		</tr>
	 			  		<tr>
	 			  			<td>描述</td>
	 			  			<td><%=books.get(0).getImageInformation()%></td>
	 			  		</tr>
	 			  	</table>
	 			  	<%} %>
	 		</div>
 		</form>
 		
 		<div class="lateRight">
 			<div id="bgDiv" style="display:none;"></div>
			<div id="loginBox" style="position:absolute; left:367px; top:150px; z-index:1;display: none;" >
      			  <div class="title" id="Mdown">
      			  <span class="t1">登录</span>
      			  <span class="t2" title="关闭" onClick="login.style.display='none';bgDiv.style.display='none'">X</span>
      			  </div>
		         <div class="login">
		               	<form method="post"  action="/libaryManageSystem/servlet/BuyBookEnter">
		                    <table>
		                        <tr>
		                            <td></td><td><input type="text"  placeholder="用户名" name="username" height="50px" size="30" width="80px"maxlength="30"></td>
		                        </tr>
		                        <tr>
		                            <td></td><td><input type="text"  placeholder="密码"  name="password" height="50px"  width="80px" size="30" maxlength="30"></td>
		                        </tr>
		                        <tr>
		                            <td></td><td><button class="submit"  type="submit">登录</button></td>
		                        </tr>
		                    </table>
		                </form>
		            </div>
        	</div>
		    <script type="text/javascript">
					var IsMousedown, LEFT, TOP, login;
					document.getElementById("Mdown").onmousedown=function(e) {
						login = document.getElementById("loginBox");
						IsMousedown = true;
						e = e||event;
						LEFT = e.clientX - parseInt(login.style.left);
						TOP = e.clientY - parseInt(login.style.top);
						document.onmousemove = function(e) {
							e = e||event;
							if (IsMousedown) {
								login.style.left = e.clientX - LEFT + "px";
								login.style.top = e.clientY - TOP + "px";
							}
						}
						document.onmouseup=function(){
							IsMousedown=false;
						}
					}
		        </SCRIPT>
 		
 		</div>
  </body>
</html>