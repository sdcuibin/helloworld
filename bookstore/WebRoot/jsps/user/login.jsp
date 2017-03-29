<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>IBOOK-用户登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="content-type" content="text/html;charset=utf-8">

<link rel="stylesheet" href="css/xgxt_login.css" />


<body>

	<div id="header">
		<div class="header_title">
			<span class="title_con">IBOOK图书商城</span>
		</div>
	</div>
	<div id="content">
		<center>
			<div class="con">
				<h1>
					<span class="con_title_sp">
						<div class="con_title">欢迎登录IBOOK</div>
					</span>
				</h1>
				<div><p style="color: red; font-weight: 900">${msg }</p></div>
</head>
				<div class="con_panel">
					<form action="<c:url value='/UserServlet'/>" method="post"
						target="_top">
						<input type="hidden" name="method" value="login" />
						<div class="con_input">
							<span>用户名：</span><input type="text" name="username"
								value="${form.username }" placeholder="用户名" /><br />
						</div>
						<div class="con_input">
							<span>密 &nbsp;&nbsp;&nbsp;&nbsp;码：</span><input type="password"
								name="password" value="${form.password }" placeholder="密码" /><br />
						</div>
						<input type="submit" value="登录" class="submit-btn" onclick="" /> <input
							type="button" value="注册" class="submit-btn"
							onclick="window.location.href='regist.jsp'" />
					</form>
				</div>
			</div>
		</center>
	</div>
</body>
</html>
