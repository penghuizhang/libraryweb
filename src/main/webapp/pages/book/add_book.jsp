<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script type="text/javascript" src="/js/public.js"></script> -->
<%@include file="/jsp/common/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="${basePath }/css/layui.css">
<script src="${basePath }/layui.js"></script>
<script src="${basePath }/modules/layer.js"></script>
<script src="${basePath }/modules/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${basePath }/js/book/addBook.js"></script>
</head>
<body>
	<div id="header-nav"></div>
	<!--menu 左侧菜单-->
	<div id="left-nav">
	
	<!--内容区域-->
	<div class="lps-module">
		<div class="lps-content" id="lps-content">
			<div class="lps-welcome">
				<form enctype="multipart/form-data" role="form" id="add_form">
					<!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
					<div class="layui-form-item">
						<label class="layui-form-label">书名</label>
						<div class="layui-input-block">
							<input type="text" name="title" id="title" placeholder="请输入书名"
								autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">作者</label>
						<div class="layui-input-block">
							<input type="text" name="author" id="author" placeholder="请输入作者"
								autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">出版商</label>
						<div class="layui-input-block">
							<input type="text" name="publisher" id="publisher"
								placeholder="请输入出版商" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">库存</label>
						<div class="layui-input-block">
							<input type="text" name="storage" id="storage"
								placeholder="请输入仓储数" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">类别</label>
						<div class="layui-input-block">
							<input type="text" name="binding" id="binding"
								placeholder="请输入类别" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item layui-form-text">
						<label class="layui-form-label">请填写描述</label>
						<div class="layui-input-block">
							<textarea placeholder="请输入内容" name="summary" id="summary"
								class="layui-textarea"></textarea>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button type="button" class="layui-btn" id="btn">立即提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 隐藏的绝对路径，供jquery使用 -->
	<input type="hidden" value="${pageContext.request.contextPath}"
		id="path">

	<!--跳转页面遮罩层-->
	<div class="index-shade-ban layui-hide"></div>

</body>
</html>