<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/jsp/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${basePath }/js/layui.js"></script>
</head>
<body>
	<nav class="lps-menu">
	<ul class="layui-nav layui-nav-tree" lay-filter="menu">
		<li class="layui-nav-item layui-nav-itemed"><a
			href="javascript:;"> <i class="iconfont icon-suo"></i><span
				class="menu-title">人员管理</span>
		</a>
			<dl class="layui-nav-child">
				<dd lps-menu="pages/backstage-user.jsp">
					<a href="${basePath }/pages/user/backstage-user.jsp">管理员管理</a>
				</dd>
				<dd lps-menu="${basePath }/pages/user/backstage-role.jsp">
					<a href="${basePath }/pages/showUser/showUsers.jsp">用户管理</a>
				</dd>
				
			</dl></li>
	
		
		<li class="layui-nav-item"><a href="javascript:;"> <i
				class="iconfont icon-xiaoxi"></i><span class="menu-title">图书管理</span>
		</a>
			<dl class="layui-nav-child">
				
				<dd>
					<a href="${basePath }/pages/book/select_book.jsp">图书查询</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="javascript:;"> 
			<i class="iconfont icon-yuancailiaopandian"></i><span class="menu-title">借阅管理</span>
		</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="${basePath }/pages/borrow/borrowRecord.jsp">借阅查询</a>
				</dd>
			</dl></li>
	
		
		
	</ul>
	</nav>
</body>
</html>