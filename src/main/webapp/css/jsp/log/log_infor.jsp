<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/jsp/common/taglib.jsp"%>
<%@include file="/jsp/common/common.jsp" %>
<!DOCTYPE>
<html lang="en" class="feedback">
  <head>
    <title>My JSP 'log_list.jsp' starting page</title>

	 <style>
        .title {
            margin: 20px 15px 10px;
            color: #6d6d72;
            font-size: 15px;
        }
    </style>
</head>

<body>
<header class="mui-bar mui-bar-nav">
    <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
    <h1 class="mui-title">详细信息</h1>
</header>
<div class="mui-content">


    <ul class="mui-table-view" style="position: relative;top:-10px;">
        <li class="mui-table-view-cell mui-media">
            <a href="javascript:;">
                <img class="mui-media-object mui-pull-left" src="${basePath }/images/shuijiao.jpg">
                <div class="mui-media-body">
                    	用户名${log.userid }
                    <p class='mui-ellipsis'>${time }</p>
                </div>
            </a>
        </li>
    </ul>

    <p style="position: relative;top: 10px;">日志标题</p>
    <div class="mui-input-row" >
        <input id='title' type="text" class="mui-input-clear contact" value="${log.title }" readonly="readonly"/>
    </div>
    <p>日志类型</p>
    <div class="mui-input-row">
        <input id='type' type="text" class="mui-input-clear contact" value="${log.type }" readonly="readonly"/>
    </div>
    <p>工作总结</p>
    <div class="mui-input-row">
        <textarea id="summarize" rows="3" name="summarize" readonly="readonly" >${log.worksummary }</textarea>
    </div>
    <p>工作计划</p>
    <div class="mui-input-row">
        <input id='plan' type="text" class="mui-input-clear contact" value="${log.workprogram }"  />
    </div>
    <p>工作心得</p>
    <div class="mui-input-row">
        <input id='experience' type="text" class="mui-input-clear contact" value="${log.experience }" readonly="readonly" />
    </div>
</div>

</body>
<script src="${basePath }/js/mui.min.js"></script>
<script>
    mui.init({
        swipeBack:true //启用右滑关闭功能
    });
</script>
</html>
