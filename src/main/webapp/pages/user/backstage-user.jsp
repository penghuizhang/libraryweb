
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/jsp/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书借阅平台后台管理系统</title>

<script type="text/javascript" src="${basePath }/js/public.js"></script>
<script type="text/javascript" src="${basePath }/js/user/backstage-user.js"></script>

</head>
<body>
	<div id="header-nav"></div>
	<!--menu 左侧菜单-->
	<div id="left-nav"></div>
	<input id="adminqx" type="hidden" name="adminqx"
		value="${loginUser.adminqx}">
	<input id="adminname" type="hidden" name="adminname"
		value="${loginUser.adminname}">
	<!--内容区域-->
	<div class="lps-module">
		<div class="lps-breadcrumb">
			<span class="layui-breadcrumb" style="visibility: visible;"> <a
				href="backstage-user.jsp" url="backstage-user.jsp">后台用户管理 <span
					class="layui-box">&gt;</span>
			</a> <a href="backstage-user.jsp" url="backstage-user.jsp"> <cite>后台用户</cite>
			</a>
			</span>
		</div>
		<div class="lps-content" id="lps-content">
			<section class="lps-list-default">
			<div class="lps-operation-bar">
				<div id="top">
					<form class="layui-form" id="checkForm">
						<div class="layui-form-item">
							<div class="layui-input-inline">
								<input type="tel" name="adminaccount" lay-verify="adminaccount"
									placeholder="请输入工号" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button type="button" class="layui-btn btn-yellow" lay-submit=""
									lay-filter="search" id="checkBtn">查询</button>
							</div>
						</div>
					</form>

					<div class="layui-form-item item-right">
						<div class="layui-input-block">
							<button class="layui-btn btn-simple-blue layui-btn-primary"
								id="add" lps-type="add" style="font-weight: bold">
								<i class="iconfont icon-jia"></i>新增
							</button>
						</div>
					</div>
				</div>
			</div>

			<table class="layui-table">
				<thead>
					<tr>
						<th>姓名</th>
						<th>工号</th>
						<th>联系方式</th>
						<th class="table-operation-box">操作</th>
					</tr>
				</thead>
				<tbody id="tbody">
				</tbody>
				<!-- 隐藏的绝对路径，供jquery使用 -->
				<input type="hidden" value="${pageContext.request.contextPath}"
					id="path">
			</table>
			<!-- 分页 -->
			<div id="pageSystem"
				style="width: 100%; position: relative; top: 10px;"></div>
			</section>
		</div>
	</div>
	<!--修改密码弹窗-->
	<div id="updatePassword" class="index-updatePassword lps-info-default">
		<form class="layui-form"
			action="https://xuffy.github.io/labpooSystem/">
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
	<div class="index-shade-ban layui-hide"></div>
	<div class="layui-layer-move"></div>
</body>
</html>