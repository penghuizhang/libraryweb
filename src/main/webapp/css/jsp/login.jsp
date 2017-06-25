<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/jsp/common/taglib.jsp"%>
<%@include file="/jsp/common/common.jsp" %>
<!DOCTYPE html>
<!-- saved from url=(0058)https://xuffy.github.io/layui-wms/modules/login/index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>登录-实验宝平台后台管理系统</title>
  	<link rel="stylesheet" href="${basePath}/css/index.css">
  	<link rel="stylesheet" href="${basePath}/css/iconfont.css">
  
  
</head>
<body>
<div class="login-logo">
  <i></i>
</div>
<div class="login-middle">
  <div class="content">
    <ul>
      <li>
        <span class="input-label"><i class="iconfont icon-yonghu1"></i></span>
        <span class="input-title">用户名：</span>
        <input type="text" class="input-box" placeholder="">
      </li>
      <li>
        <span class="input-label"><i class="iconfont icon-suo1"></i></span>
        <span class="input-title">密 &nbsp;&nbsp; 码：</span>
        <input type="password" class="input-box" placeholder="">
      </li>
      <li class="code-box">
        <span class="input-label"><i class="iconfont icon-dunpai" style="font-size: 16px"></i></span>
        <span class="input-title">验证码：</span>
        <input type="text" class="input-box" placeholder="">
        <div class="code">
          <img src="img/login-back.jpg">
          <span>换一张</span>
        </div>
      </li>
      <li class="btn-login" >登录</li>
      
    </ul>
  </div>
</div>
	
<h5 class="login-footer">★star&nbsp;&nbsp;<a href="https://github.com/Xuffy/layui-WMS" target="_blank">@github</a>&nbsp;&nbsp;-&nbsp;&nbsp;d.xuffy</h5>
<script type="text/javascript">

layui.use(['form', 'laypage', 'common'], function () {
    var form = layui.form()
        , laypage = layui.laypage
        , common = layui.common;

    // 监听禁用按钮
    $('.btn-login').on('click', function () {
        
            window.location.href="<%=basePath%>/index"
       
    });
});
</script>

</body></html>