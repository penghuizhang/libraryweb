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
                    <label class="layui-form-label">书名</label>
                    <div class="layui-input-block">
                        <input type="text" name="bookname" placeholder="请输入书名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">作者</label>
                    <div class="layui-input-block">
                        <input type="text" name="author" placeholder="请输入作者" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">出版商</label>
                    <div class="layui-input-block">
                        <input type="text" name="publish" placeholder="请输入出版商" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">isbn</label>
                    <div class="layui-input-block">
                        <input type="text" name="isbn" placeholder="请输入isbn编号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">下拉选择框</label>
                    <div class="layui-input-block">
                        <select name="interest" lay-filter="aihao">
                            <option value="0">写作</option>
                            <option value="1">阅读</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">复选框</label>
                    <div class="layui-input-block">
                        <input type="checkbox" name="like[write]" title="写作">
                        <input type="checkbox" name="like[read]" title="阅读">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">开关关</label>
                    <div class="layui-input-block">
                        <input type="checkbox" lay-skin="switch">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">开关开</label>
                    <div class="layui-input-block">
                        <input type="checkbox" name="switch1" checked lay-skin="switch">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单选框</label>
                    <div class="layui-input-block">
                        <input type="radio" name="sex" value="0" title="男">
                        <input type="radio" name="sex" value="1" title="女" checked>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">请填写描述</label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入内容" name="description" class="layui-textarea"></textarea>
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
                        layer.alert(JSON.stringify(data.field), {
                            title: '最终的提交信息'
                        });
                        return false;
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










