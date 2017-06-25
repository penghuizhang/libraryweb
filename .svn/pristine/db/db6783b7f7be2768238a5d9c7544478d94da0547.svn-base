<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!--header 导航栏-->
<header class="layui-layout layui-layout-admin">
    <div class="layui-header lps-header header header-demo">
        <div class="layui-main">
            <a class="logo" href="index.jsp">
                <img src="${basePath}/img/logo_7b2df23.png" alt="layui">
            </a>
            <h2 class="title">图书管理后台管理系统</h2>
            <ul class="lps-nav">
                <li>欢迎您，Betty</li>
                <li id="updatePassword-btn"><span><i class="iconfont icon-moban162"></i></span><span>修改密码</span></li>
                <li ><span><i class="iconfont icon-tuichu"></i></span><span>退出登录</span></li>
                <script type="text/javascript">
                    layui.use(['form', 'laypage', 'common'], function () {
                        var form = layui.form()
                            , laypage = layui.laypage
                            , common = layui.common;

                        // 监听禁用按钮
                        $('.icon-tuichu').on('click', function () {
                            layer.confirm('确定退出账户吗？', {
                                btn: ['确定', '取消'] //可以无限个按钮
                            }, function (index, layero) {
                                layer.msg('退出了');
                                window.location.href="logout.html"
                            });
                        });
                    });
                </script>
            </ul>
        </div>
    </div>
</header>
<!--menu 左侧菜单-->
<nav class="lps-menu">
    <ul class="layui-nav layui-nav-tree" lay-filter="menu">
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:;">
                <i class="iconfont icon-suo"></i><span class="menu-title">后台用户管理</span>
            </a>
            <dl class="layui-nav-child">
                <dd lps-menu="pages/backstage-user.html"><a href="${basePath }/jsp/index/backstage-user.jsp">后台用户</a></dd>
                <dd lps-menu="pages/backstage-role.html"><a href="${basePath }/add_admin">后台角色</a></dd>
                <dd lps-menu="pages/rights-management.html"><a href="javascript:;">权限维护</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-yonghu"></i><span class="menu-title">APP用户管理</span>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">APP用户</a></dd>
                <dd><a href="javascript:;">黑名单</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-icon86"></i><span class="menu-title">业务设置</span>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">实验人员角色</a></dd>
                <dd><a href="javascript:;">实验人员权限</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-xiaoxi"></i><span class="menu-title">图书管理</span>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="${basePath }/book/add_book">图书添加</a></dd>
                <dd><a href="${basePath }/book/select_book">借阅查询</a></dd>
            </dl>
        </li>
       
       
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-msnui-operate"></i><span class="menu-title">运营设置</span>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">文档</a></dd>
                <dd><a href="javascript:;">参数设置</a></dd>
                <dd><a href="javascript:;">字典表</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-yifu"></i><span class="menu-title">界面设置</span>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">banner设计</a></dd>
            </dl>
        </li>
    </ul>
</nav>

<!--修改密码弹窗-->
<div id="updatePassword" class="index-updatePassword lps-info-default">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-block lps-input-required">
                <input type="text" name="username" lay-verify="required" autocomplete="off" placeholder="请输入账号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">旧密码</label>
            <div class="layui-input-block lps-input-required">
                <input type="password" name="oldPassword" lay-verify="required" autocomplete="off" placeholder="请输入旧密码"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">新密码</label>
            <div class="layui-input-block lps-input-required">
                <input type="password" name="password" lay-verify="required" autocomplete="off" placeholder="请输入新密码"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-block lps-input-required">
                <input type="password" name="confirmPassword" lay-verify="required" autocomplete="off" placeholder="请确认密码"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="updatePassword">提交</button>
            </div>
        </div>
    </form>
</div>