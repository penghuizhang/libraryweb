
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>登录-实验宝平台后台管理系统</title>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/jsp/common/taglib.jsp"%>
<%@include file="/jsp/common/common.jsp"%>
<link rel="stylesheet" href="${basePath}/css/index.css">
<link rel="stylesheet" href="${basePath}/css/iconfont.css">
<script type="text/javascript" src="${basePath}/modules/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${basePath}/js/login.js"></script>
<script type="text/javascript" src="${basePath}/js/md5.js"></script>
</head>
<body>
	<div class="login-logo">
		<i></i>
	</div>
	<div class="login-middle">
		<div class="content">
			<ul>
				<li><span class="input-label"><i
						class="iconfont icon-yonghu1"></i></span> <span class="input-title">用户名</span>
					<input type="text" class="input-box" placeholder="用户名"
					id="adminname"></li>

				<li><span class="input-label"><i
						class="iconfont icon-suo1"></i></span> <span class="input-title">密
						&nbsp;&nbsp;码</span> <input type="password" class="input-box"
					placeholder="密码" id="adminpwd"></li>
				
				<li class="btn-login" id="loginBtn">登录</li>
			</ul>
		</div>
	</div>
	<input type="hidden" value="${pageContext.request.contextPath}"
		id="path">
	<h5 class="login-footer">
		&nbsp;&nbsp;无微不至的借阅助手</a>&nbsp;&nbsp;@版权所有&nbsp;&nbsp;&nbsp;
	</h5>
</body>
</html>