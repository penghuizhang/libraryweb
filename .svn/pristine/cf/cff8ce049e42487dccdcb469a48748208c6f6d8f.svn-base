<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书借阅平台后台管理系统</title>
<script type="text/javascript" src="/layui.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script type="text/javascript">
	$(function(){
		$("#left-nav").load("../pages/left.jsp");
		$("#header-nav").load("../pages/header.jsp");
	});
</script>
</head>
<body>
	<%-- <%@include  file="../pages/header.jsp"%> --%>
	<div id="header-nav"></div>
	<!--menu 左侧菜单-->
	<div id="left-nav">
	<%-- <jsp:include page="../pages/left.jsp"></jsp:include> --%>
	</div>
	<!--内容区域-->
	<div class="lps-module">
		<div class="lps-breadcrumb">
			<span class="layui-breadcrumb"> <a href="javascript:void(0);">权限管理</a>
				<a><cite>后台管理员</cite></a>
			</span>
		</div>
		<div class="lps-content" id="lps-content">
			<div class="lps-welcome">
				<img src="../img/2.jpg" alt="图书馆"
					style="height: 700px; width: 1170px; position: absolute; left: -260px; top: -150px;">
			</div>
		</div>
	</div>

	<!--修改密码弹窗-->
	<div id="updatePassword" class="index-updatePassword lps-info-default">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">账号</label>
				<div class="layui-input-block lps-input-required">
					<input type="text" name="username" lay-verify="required"
						autocomplete="off" placeholder="请输入账号" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">旧密码</label>
				<div class="layui-input-block lps-input-required">
					<input type="password" name="oldPassword" lay-verify="required"
						autocomplete="off" placeholder="请输入旧密码" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">新密码</label>
				<div class="layui-input-block lps-input-required">
					<input type="password" name="password" lay-verify="required"
						autocomplete="off" placeholder="请输入新密码" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">确认密码</label>
				<div class="layui-input-block lps-input-required">
					<input type="password" name="confirmPassword" lay-verify="required"
						autocomplete="off" placeholder="请确认密码" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit="" lay-filter="updatePassword">提交</button>
				</div>
			</div>
		</form>
	</div>

	<!--跳转页面遮罩层-->
	<!-- 	<div class="index-shade-ban layui-hide"></div>-->

</body>
</html>