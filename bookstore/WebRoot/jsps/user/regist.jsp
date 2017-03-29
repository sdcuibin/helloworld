<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	/*
	如果一个表单项的name和<img>的id相同，那么可能会出问题！一般只有IE出问题！
	*/
	function _change() {
		/*
		1. 获取<img>元素
		*/
		var ele = document.getElementById("vCode");
		ele.src = "<c:url value='/VerifyCodeServlet'/>?xxx=" + new Date().getTime();
		
	}
</script>

  </head>
  
  <body>
  <center>
  <h1>注册</h1>
  <%--
  1. 显示errors --> 字段错误
  2. 显示异常错误
  3. 回显
   --%>
<p style="color: red; font-weight: 900">${msg }</p>
<%--${pageContext.request.contextPath }/UserServlet --%>
<form action="<c:url value='/UserServlet'/>" method="post">
	<input type="hidden" name="method" value="regist"/>
	用户名：<input type="text" name="username" value="${form.username }"/>
	<span style="color: red; font-weight: 900">${errors.username }</span>
	<br/>
	密　码：<input type="password" name="password" value="${form.password }"/>
	<span style="color: red; font-weight: 900">${errors.password }</span>
	<br/>
	邮　箱：<input type="text" name="email" value="${form.email }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/>
	 验证码：<input type="text" name="verifyCode" value="${user.verifyCode }" size="3"/>
        <img id="vCode" src="<c:url value='/VerifyCodeServlet'/>" border="2"/>
        <a href="javascript:_change()">换一张</a><span style="color: red; font-weight: 900">${errors.verifyCode }</span><br/>
	<input type="submit" value="注册"/>
</form>
</center>
  </body>
</html>
