 <%@ page isELIgnored ="false" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>throne10_Blog_Login_System</title>
<base href="<%=basePath%>">
<script>
var s = "${result.msg}";
function myFunction()
{
	if(s==1)
	{
		alert("用户名或密码错误");
	}
}
</script>
<style>
*{
	padding:0px;
	margin:0px;
	}
body{
	font-family:Arial, Helvetica, sans-serif;
	background:url(jsp/images/grass.jpg);
	font-size:13px;
    
	}
img{
	border:0;
	}
.lg{width:468px; height:468px; margin:100px auto; background:url(jsp/images/login_bg.png) no-repeat;}
.lg_top{ height:200px; width:468px;}
.lg_main{width:400px; height:180px; margin:0 25px;}
.lg_m_1{
	width:290px;
	height:100px;
	padding:60px 55px 20px 55px;
}
.ur{
	height:37px;
	border:0;
	color:#666;
	width:236px;
	margin:4px 28px;
	background:url(jsp/images/user.png) no-repeat;
	padding-left:10px;
	font-size:16pt;
	font-family:Arial, Helvetica, sans-serif;
}
.pw{
	height:37px;
	border:0;
	color:#666;
	width:236px;
	margin:4px 28px;
	background:url(jsp/images/password.png) no-repeat;
	padding-left:10px;
	font-size:16pt;
	font-family:Arial, Helvetica, sans-serif;
}
.bn{width:330px; height:72px; background:url(jsp/images/enter.png) no-repeat; border:0; display:block; font-size:18px; color:#FFF; font-family:Arial, Helvetica, sans-serif; font-weight:bolder;}
.lg_foot{
	height:80px;
	width:330px;
	padding: 6px 68px 0 68px;
}
</style>
</head>
<body class="b" onload="myFunction()">
<div class="lg">
<form action="login.do" method="post">
    <div class="lg_top"></div>
    <div class="lg_main">
        <div class="lg_m_1">
        <input name="username" value="throne10" class="ur" />
        <input name="password" type="password" value="" class="pw" />
        </div>
    </div>
    <div class="lg_foot">
    <input type="submit" value="Login In" class="bn" /></div>
</form>
</div>
</body>
</html>