﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#df7611; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox loginbox3">
        <form action="/login/login.do" method="post">
            <ul>
            <li><input name="username" type="text" class="loginuser" value="请输入账号" onclick="JavaScript:this.value=''"/></li>
            <li><input name="password" type="text" class="loginpwd" value="请输入密码" onclick="JavaScript:this.value=''"/></li>
            <li><input type="submit" class="loginbtn" value="登录"/></li>
            </ul>
        </form>
    </div>
    
    </div>
    
    
    <div class="loginbm">版权所有  2014  <a href="http://www.myexam.cn">myexam.cn</a>  仅供学习交流，勿用于任何商业用途</div>
	
    
</body>

</html>
