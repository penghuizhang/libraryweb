<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script type="text/javascript" src="/js/public.js"></script> -->
<%@include file="/jsp/common/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="${basePath }/css/layui.css">
<script src="${basePath }/modules/layer.js"></script>
<script src="${basePath }/modules/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${basePath }/js/user/upp_user.js"></script>
</head>
<body>
	<!--内容区域-->
	<div class="lps-module">
		<div class="lps-content" id="lps-content">
			<div class="lps-welcome">
				<form id="upp_form"><!-- enctype="multipart/form-data" role="form"  -->
					<!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
					<input type="hidden" value="<%=request.getParameter("adminid")%>"
					 name="adminid" id="adminid" />
					<div class="layui-form-item">
						<label class="layui-form-label">工号</label>
						<div class="layui-input-block">
							<input type="text" name="adminaccount" id="uadminaccount" placeholder="请输入管理员工号"
								autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">姓名</label>
						<div class="layui-input-block">
							<input type="text" name="adminname" id="uadminname" placeholder="请输入管理员姓名"
								autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">密码</label>
						<div class="layui-input-block">
							<input type="text" name="adminpwd" id="uadminpwd"
								placeholder="请输入管理员密码" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">电话</label>
						<div class="layui-input-block">
							<input type="text" name="adminphone" id="uadminphone"
								placeholder="请输入管理员联系电话" autocomplete="off" class="layui-input">
						</div>
					</div>
				
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button type="button" class="layui-btn" id="upp_btn">修 改</button>
							<!-- <button type="button" class="layui-btn layui-btn-primary">重置</button> -->
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