<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=basePath%>js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	
	// 菜单点击
	$('.menuson li').click(function(e) {
        $(".menuson li.active").removeClass("active")
		$(this).addClass("active");
        });
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('.menuson').slideUp();
		if($ul.is(':visible')){
			$(this).next('.menuson').slideUp();
		}else{
			$(this).next('.menuson').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#fff3e1;">

    <div class="lefttop"><span></span>菜单列表</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="<%=basePath%>images/leftico01.png" /></span>问卷及问题管理
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="addQuestionnaire.html" target="rightFrame">管理问卷</a><i></i></li>
 	<li><cite></cite><a href="<%=basePath%>findQuestionnaire.html" target="rightFrame">查询问卷</a><i></i></li>
        <li><cite></cite><a href="<%=basePath%>addQuestion.html" target="rightFrame">管理问题</a><i></i></li>
 	<li><cite></cite><a href="<%=basePath%>findQuestion.html" target="rightFrame">查询问题</a><i></i></li>
        </ul>    
    </dd>


	
	
    </dl>
    
</body>
</html>
