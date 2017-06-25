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
        <span class="layui-breadcrumb" style="visibility: visible;">
            <a href="backstage-user.html" url="backstage-user.html">图书管理<span class="layui-box">&gt;</span></a>
            <a href="backstage-user.html" url="backstage-user.html"><cite>添加图书</cite></a>
        </span>
    </div>
    <div class="lps-content" id="lps-content">
        <div class="lps-welcome">
            <form class="layui-form"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-block">
                        <input type="text" name="adminName" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">账号</label>
                    <div class="layui-input-block">
                        <input type="text" name="adminAccount" placeholder="请输入账号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-block">
                        <input type="text" name="adminPwd" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="info">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
                <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
            </form>
            
            <script type="text/javascript">
                layui.use('form', function(){
                    var form = layui.form();


                    //各种基于事件的操作，下面会有进一步介绍
                    //监听提交
                    form.on('submit(info)', function (data) {
                    	var feilds=$(data.field).serialize();
                    	$.ajax({
                    		"url":<%=basePath%>/submit_addadmin,
                    		"data":feilds,
                    		"type":"POST",
                			success:function(datas){
                    			layer.msg('有表情地提示', {icon: 6});
                    			 layer.alert(JSON.stringify(data.field), {
                                     title: '最终的提交信息'
                                 });
                    		},
                    		error:function(datas){
                    			layer.msg('有表情地提示', {icon: 6});
                    		}
                
                    	});
                    	
                    	
                    	
                    	
                       
                        
                    });
                });
            </script>
        </div>
    </div>
</div>


<!--跳转页面遮罩层-->
<div class="index-shade-ban layui-hide"></div>


</body>
</html>