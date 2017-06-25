<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/jsp/common/taglib.jsp"%>
</head>
<body>
	<header class="layui-layout layui-layout-admin">
	<div class="layui-header lps-header header header-demo">
		<div class="layui-main">
			
			<h2 class="title">图书管理后台管理系统</h2>
			<ul class="lps-nav">
				<li>欢迎您，${loginUser.adminname}</li>
			<!-- 	<li id="updatePassword-btn"><span><i
						class="iconfont icon-moban162"></i></span><span>修改密码</span></li> -->
				<a href="${basePath }/"><li><span><i class="iconfont icon-tuichu"></i></span><span>退出登录</span></li></a>
			</ul>
		</div>
	</div>
	</header>
</body>
</html>