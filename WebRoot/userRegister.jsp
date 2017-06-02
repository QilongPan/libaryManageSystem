<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userRegister.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="userRegister.css">
	<script>
		function checkTelephoneNumber() {
			var telephoneNumber = document.getElementById("telephone") ;
			for(var i = 0 ; i < telephoneNumber.length() ; i++) {
				var sub = telephoneNumber.substr(i,i+1) ;
				var num = parseInt(sub) ;
				if(num<0||num>9) 
					alert("电话号码只能为数字") ;
			}
			if(telephoneNumber.length()!=11) {
				alert("电话号码是11位") ;
			}
		}
	</script>
  </head>
  
  <body>
 		<div class="top">
 				<span class="word1">Book Store</span>
 				<input class="search"  placeholder="书籍搜索"  type="text"/>
 				<a class="lianjie" href="register.jsp">注册</a>
 				<a class="lianjie2" href="javascript:" onClick="bgDiv.style.display='';loginBox.style.display='';">登录</a>
 		</div>
 		<div class="firstLeft">
 			
 		</div>
 		
 		<div class="right"  id="imgRight">
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
	   				<td><input name="birthday"  placeholder="年-月-日"  type="text"  /></td>
	   			</tr>
	   			<tr>
	   				<td>电话:</td>
	   				<td><input id = "telephone"  name="telephoneNumber" onblur="checkTelephoneNumber()" type="text"  /></td>
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
 		</div>
 		
 		<div class="lateRight">
 			<div id="bgDiv" style="display:none;"></div>
			<div id="loginBox" style="position:absolute; left:367px; top:150px; z-index:1;display: none;" >
      			  <div class="title" id="Mdown">
      			  <span class="t1">登录</span>
      			  <span class="t2" title="关闭" onClick="login.style.display='none';bgDiv.style.display='none'">X</span>
      			  </div>
		         <div class="login">
		               	<form method="post"  action="#">
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
