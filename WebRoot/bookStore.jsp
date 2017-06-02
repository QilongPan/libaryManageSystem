<%@ page language="java" import="java.util.*,user.MyBook" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookStore.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="bookStore1.css">
	<script >
		function changImage() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allHref = divImg.getElementsByTagName("a");
			var allSpan = divImg.getElementsByTagName("span") ;
			var imgIndex= allImg[5].src.lastIndexOf('s');
			var imgString =allImg[5].src.substr(imgIndex+1,1);
			var imgCount =parseInt(imgString);
			if(imgCount==18) {
				imgCount = 0 ;
			}
			var star=0;
			for(imgCount ; imgCount < imgCount+6 ; imgCount++) {
				allImg[star].src=arr[imgCount] ;
				allHref[star].href =arrHref[imgCount];
				allSpan[star].innerHTML= arrSpan[imgCount];
				star++;
			}
		}
		
		function ertong() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allSpan = divImg.getElementsByTagName("span") ;
			var allHref = divImg.getElementsByTagName("a");
			allImg[0].src=arr[7];
			allHref[0].href=arrHref[7];
			allSpan[0].innerHTML= arrSpan[7];
			allImg[1].src=arr[15];
			allHref[1].href=arrHref[15];
			allSpan[1].innerHTML= arrSpan[15];
			allImg[2].src=arr[16];
			allHref[2].href=arrHref[16];
			allSpan[2].innerHTML= arrSpan[16];
			allImg[3].src=arr[17];
			allHref[3].href=arrHref[17];
			allSpan[3].innerHTML= arrSpan[17];
			allImg[4].src=arr[9];
			allHref[4].href=arrHref[9];
			allSpan[4].innerHTML= arrSpan[9];
			allImg[5].src=arr[1];
			allHref[5].href=arrHref[1];
			allSpan[5].innerHTML= arrSpan[1];
			
			
		}
		
		function jisuanji() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allSpan = divImg.getElementsByTagName("span") ;
			var allHref = divImg.getElementsByTagName("a");
			allImg[0].src=arr[2];
			allImg[1].src=arr[3];
			allImg[2].src=arr[5];
			allImg[3].src=arr[6];
			allImg[4].src=arr[2];
			allImg[5].src=arr[3];
			
			allHref [0].href=arrHref[2];
			allHref [1].href=arrHref[3];
			allHref [2].href=arrHref[5];
			allHref [3].href=arrHref[6];
			allHref [4].href=arrHref[2];
			allHref [5].href=arrHref[3];
			
			allSpan[0].innerHTML= arrSpan[2];
			allSpan[1].innerHTML= arrSpan[3];
			allSpan[2].innerHTML= arrSpan[5];
			allSpan[3].innerHTML= arrSpan[6];
			allSpan[4].innerHTML= arrSpan[2];
			allSpan[5].innerHTML= arrSpan[3];
		}
		
		function jisuanji() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allSpan = divImg.getElementsByTagName("span") ;
			var allHref = divImg.getElementsByTagName("a");
			allImg[0].src=arr[2];
			allImg[1].src=arr[3];
			allImg[2].src=arr[5];
			allImg[3].src=arr[6];
			allImg[4].src=arr[2];
			allImg[5].src=arr[3];
			
			allHref[0].href=arrHref[2];
			allHref[1].href=arrHref[3];
			allHref[2].href=arrHref[5];
			allHref[3].href=arrHref[6];
			allHref[4].href=arrHref[2];
			allHref[5].href=arrHref[3];
			
			allSpan[0].innerHTML= arrSpan[2];
			allSpan[1].innerHTML= arrSpan[3];
			allSpan[2].innerHTML= arrSpan[5];
			allSpan[3].innerHTML= arrSpan[6];
			allSpan[4].innerHTML= arrSpan[2];
			allSpan[5].innerHTML= arrSpan[3];
		}
		
		function keji() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allSpan = divImg.getElementsByTagName("span") ;
			var allHref = divImg.getElementsByTagName("a");
			allImg[0].src=arr[9];
			allImg[1].src=arr[10];
			allImg[2].src=arr[11];
			allImg[3].src=arr[12];
			allImg[4].src=arr[10];
			allImg[5].src=arr[8];
			
			
			allHref[0].href=arrHref[9];
			allHref[1].href=arrHref[10];
			allHref[2].href=arrHref[11];
			allHref[3].href=arrHref[12];
			allHref[4].href=arrHref[10];
			allHref[5].href=arrHref[8];
			
			allSpan[0].innerHTML= arrSpan[9];
			allSpan[1].innerHTML= arrSpan[10];
			allSpan[2].innerHTML= arrSpan[11];
			allSpan[3].innerHTML= arrSpan[12];
			allSpan[4].innerHTML= arrSpan[10];
			allSpan[5].innerHTML= arrSpan[8];
		}
		
		function junshi() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allSpan = divImg.getElementsByTagName("span") ;
			var allHref = divImg.getElementsByTagName("a");
			allImg[0].src=arr[8];
			allImg[1].src=arr[9];
			allImg[2].src=arr[8];
			allImg[3].src=arr[9];
			allImg[4].src=arr[8];
			allImg[5].src=arr[9];
			
			allHref[0].href=arrHref[8];
			allHref[1].href=arrHref[9];
			allHref[2].href=arrHref[8];
			allHref[3].href=arrHref[9];
			allHref[4].href=arrHref[8];
			allHref[5].href=arrHref[9];
			
			allSpan[0].innerHTML= arrSpan[8];
			allSpan[1].innerHTML= arrSpan[9];
			allSpan[2].innerHTML= arrSpan[8];
			allSpan[3].innerHTML= arrSpan[9];
			allSpan[4].innerHTML= arrSpan[8];
			allSpan[5].innerHTML= arrSpan[9];
		}
		
		function xiaoshuo() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allSpan = divImg.getElementsByTagName("span") ;
			var allHref = divImg.getElementsByTagName("a");
			allImg[0].src=arr[0];
			allImg[1].src=arr[1];
			allImg[2].src=arr[0];
			allImg[3].src=arr[1];
			allImg[4].src=arr[0];
			allImg[5].src=arr[1];
			
			allHref[0].href=arrHref[0];
			allHref[1].href=arrHref[1];
			allHref[2].href=arrHref[0];
			allHref[3].href=arrHref[1];
			allHref[4].href=arrHref[0];
			allHref[5].href=arrHref[1];
			
			allSpan[0].innerHTML= arrSpan[0];
			allSpan[1].innerHTML= arrSpan[1];
			allSpan[2].innerHTML= arrSpan[0];
			allSpan[3].innerHTML= arrSpan[1];
			allSpan[4].innerHTML= arrSpan[0];
			allSpan[5].innerHTML= arrSpan[1];
		}
		
		function qita() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allSpan = divImg.getElementsByTagName("span") ;
			var allHref = divImg.getElementsByTagName("a");
			allImg[0].src=arr[2];
			allImg[1].src=arr[3];
			allImg[2].src=arr[4];
			allImg[3].src=arr[17];
			allImg[4].src=arr[16];
			allImg[5].src=arr[15];
			
			allHref [0].href=arrHref[2];
			allHref [1].href=arrHref[3];
			allHref [2].href=arrHref[4];
			allHref [3].href=arrHref[17];
			allHref [4].href=arrHref[16];
			allHref [5].href=arrHref[15];
			
			allSpan[0].innerHTML= arrSpan[2];
			allSpan[1].innerHTML= arrSpan[3];
			allSpan[2].innerHTML= arrSpan[4];
			allSpan[3].innerHTML= arrSpan[17];
			allSpan[4].innerHTML= arrSpan[16];
			allSpan[5].innerHTML= arrSpan[15];
		}
		
		function huagong() {
			var arr=new Array(); 
			var arrHref= new Array();
			var arrSpan = new Array() ;
			arrSpan[0] = "何坤帝王心腹￥55";
			arrSpan[1]="做人￥36";
			arrSpan[2]="零基础学Java￥48";
			arrSpan[3]="PHP动态开发￥88";
			arrSpan[4]="电镀工艺学￥66";
			arrSpan[5]="C++开发实践￥56";
			arrSpan[6]="Andriol从基础到实践￥48";
			arrSpan[7]="小学生励志图书￥56";
			arrSpan[8]="孙子兵法￥45";
			arrSpan[9]="武器百科￥66";
			arrSpan[10]="化工分离工程￥78";
			arrSpan[11]="职业能力￥36";
			arrSpan[12]="化工设计￥33";
			arrSpan[13]="测评手册￥84";
			arrSpan[14]="化工原理￥45";
			arrSpan[15]="安徒生童话￥65";
			arrSpan[16]="父母不是我的佣人￥45";
			arrSpan[17]="十万个为什么￥33";
			var count;
			for(count=0;count<18;count++) {
				arr[count] = "file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg";
				arrHref[count] ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+(count+1)+".jpg'";
			}
			var divImg = document.getElementById("imgRight");
			var allImg = divImg.getElementsByTagName("img");
			var allSpan = divImg.getElementsByTagName("span") ;
			var allHref = divImg.getElementsByTagName("a");
			allImg[0].src=arr[14];
			allImg[1].src=arr[13];
			allImg[2].src=arr[12];
			allImg[3].src=arr[11];
			allImg[4].src=arr[10];
			allImg[5].src=arr[9];
			
			allHref[0].href=arrHref[14];
			allHref[1].href=arrHref[13];
			allHref[2].href=arrHref[12];
			allHref[3].href=arrHref[11];
			allHref[4].href=arrHref[10];
			allHref[5].href=arrHref[9];
			
			allSpan[0].innerHTML= arrSpan[14];
			allSpan[1].innerHTML= arrSpan[13];
			allSpan[2].innerHTML= arrSpan[12];
			allSpan[3].innerHTML= arrSpan[11];
			allSpan[4].innerHTML= arrSpan[10];
			allSpan[5].innerHTML= arrSpan[9];
		}
	</script>
  </head>
  
  <body>
 		<div class="top">
 				<span class="word1">Book Store</span>
 				<form method="post" action= "/libaryManageSystem/servlet/BookNameSBook"  class="form">
 					<input class="search"  name="searchBook" placeholder="书籍搜索"  type="text"/>
 					<input type="submit" value="提交"/>
 				</form>
 				<a class="lianjie" href="userRegister.jsp">注册</a>
 				<a class="lianjie2" href="javascript:" onClick="bgDiv.style.display='';loginBox.style.display='';">登录</a>
 	
 		</div>
 		<div class="firstLeft">
 	
 		</div>
 		
 		<div class="left">
 			<ul>
 				<li><a>全部分类</a></li>
 				<li><a  href="javascript:void(0)" onclick="ertong()">儿童类</a></li>
 				<li><a href="javascript:void(0)" onclick="keji()">科技类</a></li>
 				<li><a href="javascript:void(0)" onclick="junshi()">军事类</a></li>
 				<li><a href="javascript:void(0)" onclick="xiaoshuo()">小说类</a></li>
 				<li><a  href="javascript:void(0)" onclick="jisuanji()">计算机类</a></li>
 				<li><a href="javascript:void(0)" onclick="huagong()">化工类</a></li>
 				<li><a href="javascript:void(0)" onclick="qita()">其它类</a></li>
 			</ul>
 		</div>

 		
 		<div class="right"  id="imgRight">
 		
 			<%
 			ArrayList<MyBook> books =(ArrayList) request.getAttribute("searchBooks") ;
 			if(books != null ) {
 				for(int i = 0 ; i < books.size() ; i++) { 
 					if(i<3){
 					String hrefStr ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+books.get(i).getPath()+".jpg'" ; 
 					System.out.println(hrefStr) ;
 					String srcStr ="file:///F|/libaryManageSystem/WebRoot/imagie/s"+books.get(i).getPath()+".jpg";%>
 					<a href="<%=hrefStr %>"><img class="img1" src="<%=srcStr %>"/></a>
 					<%}
 					else{
 						String hrefStr = "searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+books.get(i).getPath()+".jpg'" ; 
 					String srcStr ="file:///F|/libaryManageSystem/WebRoot/imagie/s"+books.get(i).getPath()+".jpg";%>
 					<a href="<%=hrefStr %>"><img class="img2" src="<%=srcStr %>"/></a>
 			<%}}
 			
 			if(books.size()<6) {
 				for(int j=books.size() ; j<6 ; j++) {
 					if(j<3){
 					String hrefStr ="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+j+".jpg'" ; 
 					System.out.println(hrefStr) ;
 					String srcStr ="file:///F|/libaryManageSystem/WebRoot/imagie/s"+j+".jpg";%>
 					<a href="<%=hrefStr %>"><img class="img1" src="<%=srcStr %>"/></a>
 					<%}
 					else{
 						String hrefStr = "searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s"+j+".jpg'" ; 
 					String srcStr ="file:///F|/libaryManageSystem/WebRoot/imagie/s"+j+".jpg";%>
 					<a href="<%=hrefStr %>"><img class="img2" src="<%=srcStr %>"/></a>
 					
 	<% 		}}}} else{%>
 			<a href="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s1.jpg'"><img class="img1" src="file:///F|/libaryManageSystem/WebRoot/imagie/s1.jpg"/></a>
 			<a href="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s2.jpg'"><img class="img1" src="file:///F|/libaryManageSystem/WebRoot/imagie/s2.jpg"/></a>
 			<a href="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s3.jpg'"><img class="img1" src="file:///F|/libaryManageSystem/WebRoot/imagie/s3.jpg"/></a>
 			<div class="priceDiv">
 				<span>和坤帝王心腹￥55</span><span>做人￥36</span><span>零基础学Java￥48</span>
 			</div>
 			<a href="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s4.jpg'"><img class="img2" src="file:///F|/libaryManageSystem/WebRoot/imagie/s4.jpg"/></a>
 			<a href="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s5.jpg'"><img class="img2" src="file:///F|/libaryManageSystem/WebRoot/imagie/s5.jpg"/></a>
 			<a href="searchBookInformation.jsp?src='file:///F|/libaryManageSystem/WebRoot/imagie/s6.jpg'"><img class="img2" src="file:///F|/libaryManageSystem/WebRoot/imagie/s6.jpg"/></a>
 			<div class="priceDiv">
 				<span>PHP网站开发￥88</span><span>电镀工艺学￥66</span><span>C++开发实践￥56</span>
 				
 			</div>
 			<%} %>
 			<div class="bottom" >
 				<a class="fenye"  href="javascript:void(0)" onclick="changImage()">下一页</a>
 				<a class="fenye"  href="javascript:void(0)" onclick="changImage()">2</a>
 				<a class="fenye"  href="javascript:void(0)" onclick="changImage()">1</a>
 			</div>
 		</div>
 		
 		<div class="lateRight">
 			<div id="bgDiv" style="display:none;"></div>
			<div id="loginBox" style="position:absolute; left:650px; top:150px; z-index:1;display: none;" >
      			  <div class="title" id="Mdown">
	      			  <span class="t1">登录</span>
	      			  <span class="t2" title="关闭" onClick="login.style.display='none';bgDiv.style.display='none'">X</span>
      			  </div>
		         <div class="login">
		               	<form method="post"  action="/libaryManageSystem/servlet/BuyBookEnter">
		                    	<input type="text"  placeholder="用户名" name="username"  height="50px" size="30" width="80px"maxlength="30">
		                         <input type="text"  placeholder="密码"  name="password"  height="50px"  width="80px" size="30" maxlength="30">
		                      	<button class="submit"  type="submit">登录</button></td>
		                         <button class="submit"  type="button" onClick="login.style.display='none';bgDiv.style.display='none'">取消</button>
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
