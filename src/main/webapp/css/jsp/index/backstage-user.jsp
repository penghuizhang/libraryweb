<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/jsp/common/taglib.jsp"%>
<%@include file="/jsp/common/common.jsp" %>
<!DOCTYPE html>
<!-- saved from url=(0037)https://xuffy.github.io/labpooSystem/ -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>实验宝平台后台管理系统</title>
	<link rel="stylesheet" href="${basePath}/css/index.css">
  	<link rel="stylesheet" href="${basePath}/css/iconfont.css">
  	

<body>
<!-- 将公共部分头文件和侧边选项卡包括进来 -->
<%@include file="/jsp/common/header_meun.jsp" %>

<!--内容区域-->
<div class="lps-module">
    <div class="lps-breadcrumb">
        <span class="layui-breadcrumb" style="visibility: visible;">
            <a href="backstage-user.html" url="backstage-user.html">后台用户管理<span class="layui-box">&gt;</span></a>
            <a href="backstage-user.html" url="backstage-user.html"><cite>后台用户</cite></a>
        </span>
    </div>
    <div class="lps-content" id="lps-content"><section class="lps-list-default">
        <div class="lps-operation-bar">
            <form class="layui-form">

                <div class="layui-form-item">
                    <div class="layui-input-inline">
                        <input type="tel" name="username" lay-verify="username" placeholder="请输入用户名称" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-inline">
                        <input type="tel" name="phone" lay-verify="phone" placeholder="请输入联系方式" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <select name="role">
                            <option value="">请选择角色</option>
                            <option value="1">超级管理员</option>
                            <option value="2">运营</option>
                            <option value="3">客服</option>
                        </select><div class="layui-unselect layui-form-select"><div class="layui-select-title"><input type="text" placeholder="请选择角色" value="" readonly="" class="layui-input layui-unselect"><i class="layui-edge"></i></div><dl class="layui-anim layui-anim-upbit"><dd lay-value="1" class="">超级管理员</dd><dd lay-value="2" class="">运营</dd><dd lay-value="3" class="">客服</dd></dl></div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn btn-yellow" lay-submit="" lay-filter="search">查询</button>
                    </div>
                </div>

            </form>
            <div class="layui-form-item item-right">
                <div class="layui-input-block">
                    <button class="layui-btn btn-simple-blue layui-btn-primary" id="add" lps-type="add" style="font-weight: bold">
                        <i class="iconfont icon-jia"></i>新增
                    </button>
                </div>
            </div>
        </div>

        <table class="layui-table">
            <thead>
            <tr>
                <th>账户名称</th>
                <th>姓名</th>
                <th>角色</th>
                <th>部门</th>
                <th>联系方式</th>
                <th class="table-operation-box">操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>lanchong</td>
                <td>兰冲</td>
                <td>超级管理员</td>
                <td>客服部</td>
                <td>13578899767</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            </tbody>
        </table>

        <div id="lps-page-default" class="lps-page-default">
            <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-0">
                <span class="layui-laypage-curr">
                    <em class="layui-laypage-em"></em>
                    <em>1</em>
                </span>
                <a href="javascript:;" data-page="2">2</a>
                <a href="javascript:;" data-page="3">3</a>
                <a href="javascript:;" data-page="4">4</a>
                <a href="javascript:;" data-page="5">5</a>
                <span>…</span>
                <a href="javascript:;" class="layui-laypage-last" title="尾页" data-page="20">末页</a>
                <a href="javascript:;" class="layui-laypage-next" data-page="2">下一页</a>
            </div>
        </div>
    </section>

        <script type="text/javascript">
            layui.use(['form', 'laypage', 'common'], function () {
                var form = layui.form()
                    , laypage = layui.laypage
                    , common = layui.common
                    , layer = layui.layer;

                // 初始化当前位置
                common.NavTitle(['后台用户管理', '后台用户']);

                // 渲染表单
                form.render();

                // 自定义验证规则
                form.verify({
                    username: function (value) {
                        if (value.length > 20) {
                            return '用户名称过长，请重新输入';
                        }
                    },
                    phone: function (value) {
                        if (value && (value.length > 11 || value.length < 6)) {
                            return '请输入正确的联系方式';
                        }
                    }
                });

                // 分页初始化
                laypage({
                    cont: 'lps-page-default'
                    , pages: 20
                    , first: 1
                    , jump: function (data) {
                        layer.msg('显示第' + data.curr + '页');
                    }
                });


                // 监听增加按钮
                $('#add,.user-info,.user-update').on('click', function () {
                    common.MenuLink('add.html', {type: $(this).attr('lps-type')});
                });


                // 监听禁用按钮
                $('.user-ban').on('click', function () {
                    layer.confirm('确定禁用此账户吗？', {
                        btn: ['确定', '取消'] //可以无限个按钮
                    }, function (index, layero) {
                        layer.msg('禁用了')
                    });
                });


                // 监听提交按钮
                form.on('submit(search)', function (data) {
                    layer.alert(JSON.stringify(data.field), {
                        title: '最终的提交信息'
                    });
                    return false;
                });

                //退出登录
                $('.icon-tuichu').on('click',function () {
                    layer.config('确定退出系统?',{
                        btn:['确定','取消']
                    },function (index,layero) {
                        layer.msg('退出');
                        window.location.href='logout.html'
                    });
                });
            });
        </script></div>

</div>

<!--跳转页面遮罩层-->
<div class="index-shade-ban layui-hide"></div>

<div class="layui-layer-move"></div></body></html>