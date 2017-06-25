<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!--menu 左侧菜单-->
<nav class="lps-menu">
    <ul class="layui-nav layui-nav-tree" lay-filter="menu">
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:;">
                <i class="iconfont icon-suo"></i><span class="menu-title">后台用户管理</span>
                <span class="layui-nav-more"></span></a>
            <dl class="layui-nav-child">
                <dd lps-menu="pages/backstage-user.html" class="layui-this"><a href="javascript:;">后台用户</a></dd>
                <dd lps-menu="pages/backstage-role.html"><a href="javascript:;">后台角色</a></dd>
                <dd lps-menu="pages/rights-management.html"><a href="javascript:;">权限维护</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-yonghu"></i><span class="menu-title">APP用户管理</span>
                <span class="layui-nav-more"></span></a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">APP用户</a></dd>
                <dd><a href="javascript:;">黑名单</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-icon86"></i><span class="menu-title">业务设置</span>
                <span class="layui-nav-more"></span></a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">实验人员角色</a></dd>
                <dd><a href="javascript:;">实验人员权限</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-xiaoxi"></i><span class="menu-title">消息设置</span>
                <span class="layui-nav-more"></span></a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">消息模板</a></dd>
                <dd><a href="javascript:;">短信模板</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-yuancailiaopandian"></i><span class="menu-title">耗材管理</span>
                <span class="layui-nav-more"></span></a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">耗材库</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-file"></i><span class="menu-title">资源管理</span>
                <span class="layui-nav-more"></span></a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">硬件</a></dd>
                <dd><a href="javascript:;">资料</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-msnui-operate"></i><span class="menu-title">运营设置</span>
                <span class="layui-nav-more"></span></a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">文档</a></dd>
                <dd><a href="javascript:;">参数设置</a></dd>
                <dd><a href="javascript:;">字典表</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="iconfont icon-yifu"></i><span class="menu-title">界面设置</span>
                <span class="layui-nav-more"></span></a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">banner设计</a></dd>
            </dl>
        </li>
        <span class="layui-nav-bar" style="top: 25px; height: 0px; opacity: 0;"></span></ul>
</nav>

<!--内容区域-->
<div class="lps-module">
    <div class="lps-breadcrumb">
        <span class="layui-breadcrumb" style="visibility: visible;">
            <a href="backstage-user.html">后台用户管理<span class="layui-box">&gt;</span></a>
            <a href="backstage-user.html">后台用户<span class="layui-box">&gt;</span></a>
            <a href="add.html"><cite>新增</cite></a>
        </span>
    </div>
    <div class="lps-content" id="lps-content"><section class="lps-info-default">
        <div class="lps-info-box type-add">
            <form class="layui-form" action="https://xuffy.github.io/labpooSystem/">
                <div class="layui-form-item">
                    <label class="layui-form-label">账户名称</label>
                    <div class="layui-input-block lps-input-required">
                        <input type="text" name="user" lay-verify="required" autocomplete="off" placeholder="" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-block lps-input-required">
                        <input type="text" name="name" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-block">
                        <input type="radio" name="sex" value="男" title="男" checked=""><div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon"></i><span>男</span></div>
                        <input type="radio" name="sex" value="女" title="女"><div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i><span>女</span></div>
                    </div>
                </div>
                <br>

                <div class="layui-form-item">
                    <label class="layui-form-label">手机</label>
                    <div class="layui-input-block lps-input-required">
                        <input type="text" name="phone" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">邮箱</label>
                    <div class="layui-input-block">
                        <input type="text" name="email" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <br>

                <div class="layui-form-item">
                    <label class="layui-form-label">所属角色</label>
                    <div class="layui-input-block lps-input-required">
                        <select name="role">
                            <option value="">选择角色</option>
                            <option value="0">角色A</option>
                            <option value="1">角色B</option>
                        </select><div class="layui-unselect layui-form-select"><div class="layui-select-title"><input type="text" placeholder="选择角色" value="" readonly="" class="layui-input layui-unselect"><i class="layui-edge"></i></div><dl class="layui-anim layui-anim-upbit"><dd lay-value="0" class="">角色A</dd><dd lay-value="1" class="">角色B</dd></dl></div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">所属部门</label>
                    <div class="layui-input-block lps-input-required">
                        <input type="text" name="department" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">职务</label>
                    <div class="layui-input-block">
                        <input type="text" name="duties" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <br>

                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-block lps-input-required">
                        <input type="password" name="password" lay-verify="required" autocomplete="off" placeholder="" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">确认密码</label>
                    <div class="layui-input-block lps-input-required">
                        <input type="password" name="confirmPassword" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <br>

                <div class="layui-form-item form-btn-box">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn layui-btn-primary btn-simple-blue add-hide">取消</button>
                        <button type="reset" class="layui-btn layui-btn-primary btn-simple-blue update-hide">重置</button>
                        <button class="layui-btn" lay-submit="" lay-filter="info">提交</button>
                    </div>
                </div>
            </form>
        </div>
    </section>

        <script>
            layui.use(['common', 'form'], function () {
                var common = layui.common
                    , form = layui.form()
                    , curPosition = ''
                    , boxEle = $('.lps-info-box');

                // 状态判断
                switch (common.LinkParams.type) {
                    case 'add':
                        curPosition = '新增';
                        boxEle.addClass('type-add');
                        break;
                    case 'update':
                        curPosition = '修改';
                        boxEle.addClass('type-update');
                        break;
                    case 'info':
                        curPosition = '查看';
                        boxEle.addClass('type-info').find('input,select').attr('disabled', 'disabled');
                        break;
                }

                // 渲染表单
                form.render();

                // 初始化当前位置
                common.NavTitle(['后台用户管理', {url: 'pages/backstage-user.html', name: '后台用户'}, curPosition]);

                // 自定义验证规则
                form.verify({
                    /*title: function (value) {
                     if (value.length < 5) {
                     return '标题至少得5个字符啊';
                     }
                     }
                     , pass: [/(.+){6,12}$/, '密码必须6到12位']
                     , content: function (value) {
                     layedit.sync(editIndex);
                     }*/
                });


                //监听提交
                form.on('submit(info)', function (data) {
                    layer.alert(JSON.stringify(data.field), {
                        title: '最终的提交信息'
                    });
                    return false;
                });


            });
        </script></div>
</div>

