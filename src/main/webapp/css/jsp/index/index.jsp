<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/jsp/common/taglib.jsp"%>
<%@include file="/jsp/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>图书借阅平台后台管理系统</title>
</head>
<body>

<!-- 将公共部分头文件和侧边选项卡包括进来 -->
<%@include file="/jsp/common/header_meun.jsp" %>


<!--内容区域-->
<div class="lps-module">
    <div class="lps-breadcrumb">
    <span class="layui-breadcrumb">
      <a href="javascript:void(0);">权限管理</a>
      <a><cite>后台管理员</cite></a>
    </span>
    </div>
    <div class="lps-content" id="lps-content">
        <div class="lps-welcome">
            <img src="${basePath}/img/2.jpg" alt="图书馆" style="height: 700px; width: 1170px;position: absolute;left: -260px;top: -150px;">
        </div>
    </div>
</div>


<!--跳转页面遮罩层-->
<div class="index-shade-ban layui-hide"></div>


</body>
</html>