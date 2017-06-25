<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书借阅平台后台管理系统</title>
<script type="text/javascript" src="../../js/public.js"></script>
<script type="text/javascript" src="../../js/borrow/borrow.js"></script>
<body>
	<!-- 头部 -->
	<div id="header-nav"></div>
	<!--menu 左侧菜单-->
	<div id="left-nav"></div>
		
	<!--内容区域-->
	<div class="lps-module">
		<div class="lps-breadcrumb">
			<span class="layui-breadcrumb" style="visibility: visible;"> <a
				href="../../index.jsp">后台书籍管理<span class="layui-box">&gt;</span></a> <a
				href="select_book.jsp"><cite>借阅查询</cite></a>
			</span>
		</div>
		<div class="lps-content" id="lps-content">
			<section class="lps-list-default">
			<div class="lps-operation-bar">
				<form class="layui-form" id="checkForm">
					<div class="layui-form-item">
						<div class="layui-input-inline">
							<input type="text" name="uname" lay-verify="uname" 
								placeholder="请输入借阅人" autocomplete="off" class="layui-input">
						</div>
					</div>
					
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn btn-yellow" lay-submit="" id="checkBtn"
								type="button">查询</button>
						</div>
					</div>
				</form>
				
			</div>
			<!-- 数据展示 -->
			<table class="layui-table">
				<thead>
					<tr>
						<th>借阅时间</th>
						<th>借阅人</th>
						<th>借阅图书名称</th>
						<th>处理人员</th>
					</tr>
				</thead>
				<tbody id="tbody">
				</tbody>
				<!-- 隐藏的绝对路径，供jquery使用 -->
				<input type="hidden" value="${pageContext.request.contextPath}" id="path">
			</table>
			<!-- 分页 -->
			<div id="pageSystem" style="width: 100%; position: relative; top: 10px;"></div>
			</section>
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
	<div class="index-shade-ban layui-hide"></div>
</body>