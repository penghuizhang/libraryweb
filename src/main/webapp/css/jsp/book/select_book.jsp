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

    <div class="lps-content" id="lps-content"><section class="lps-list-default">
        <div class="lps-operation-bar">
            <form class="layui-form">

                <div class="layui-form-item">
                    <div class="layui-input-inline">
                        <input type="tel" name="username" lay-verify="username" placeholder="查询书名" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-inline">
                        <input type="tel" name="phone" lay-verify="phone" placeholder="查询作者" autocomplete="off" class="layui-input">
                    </div>
                </div>



                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn btn-yellow" lay-submit="" lay-filter="search">查询</button>
                    </div>
                </div>

            </form>

        </div>

        <table class="layui-table">
            <thead>
            <tr>
                <th>书名</th>
                <th>作者</th>
                <th>出版社</th>
                <th>剩余</th>
                <th>类别</th>
                <th class="table-operation-box">操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
            <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
         
            
            <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
             <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
             <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
                <td class="table-operation-box">
                    <span class="table-operation user-info" lps-type="info"><i class="iconfont icon-chakan"></i></span>
                    <span class="table-operation user-update" lps-type="update"><i class="iconfont icon-xiugai"></i></span>
                    <span class="table-operation user-ban"><i class="iconfont icon-101"></i></span>
                </td>
            </tr>
             <tr>
                <td>笑傲江湖</td>
                <td>金庸</td>
                <td>XX出版社</td>
                <td>10</td>
                <td>武侠</td>
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

            });
        </script></div>

</div>


<!--跳转页面遮罩层-->
<div class="index-shade-ban layui-hide"></div>
</body>
</html>