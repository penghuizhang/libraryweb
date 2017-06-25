<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script type="text/javascript" src="/js/public.js"></script> -->
<link rel="stylesheet" type="text/css" href="../../css/layui.css">
<script src="../../modules/layer.js"></script>
<script src="../../modules/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../../js/borrow/uppborrow.js"></script>
</head>
<body>
	<!--内容区域-->
	<div class="lps-module">
		<div class="lps-content" id="lps-content">
			<div class="lps-welcome">
				<form id="upp_form"><!-- enctype="multipart/form-data" role="form"  -->
					<!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
					<input type="hidden" value="<%=request.getParameter("borrowRecordid")%>"
					 name="id" id="id" />
					<div class="layui-form-item">
						<label class="layui-form-label">借书时间</label>
						<div class="layui-input-block">
							<input type="text" name="borrowtime" id="uborrowtime" placeholder="请输入书名"
								autocomplete="off" class="layui-input" disabled="disabled" >
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">借阅人</label>
						<div class="layui-input-block">
							<input type="text" name="uname" id="uuname" placeholder="请输入作者"
								autocomplete="off" class="layui-input" disabled="disabled">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">处理人员</label>
						<div class="layui-input-block">
							<input type="text" name="adminname" id="uadminname"
								placeholder="请输入出版商" autocomplete="off" class="layui-input" disabled="disabled">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">图书名称</label>
						<div class="layui-input-block">
							<input type="text" name="adminname" id="uadminname"
								placeholder="请输入库存数量" autocomplete="off" class="layui-input" disabled="disabled">
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