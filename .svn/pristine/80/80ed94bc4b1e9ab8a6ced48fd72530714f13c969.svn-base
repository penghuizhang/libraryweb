<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/jsp/common/taglib.jsp"%>
<%@include file="/jsp/common/common.jsp" %>
<!DOCTYPE>
<html lang="en" class="feedback">
  <head>
    
    <title>My JSP 'log_list.jsp' starting page</title>
<script type="text/javascript">
		$(document).ready(function(e) {
		
			//添加
			$("#submit").click(function() {
				window.location.href='<%=basePath%>/log/addLogUI';
			});
			
		});
	</script>
  </head>
  
  <body>
   <header class="mui-bar mui-bar-nav">
    <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
    <button id="submit" class="mui-btn mui-btn-blue mui-btn-link mui-pull-right">添加日志</button>
    <h1 class="mui-title">日志列表</h1>
</header>
<div class="mui-content">
    <div class="mui-content-padded">
        <!--
            点击选择类型时，能够动态的切换选择工作报告类型

        -->
        <select class="mui-btn mui-btn-block" id="type" onchange="change1()">
            <option type="radio" value="0">选择类型</option>
            <option type="radio" value="日报" >日报</option>
            <option type="radio" value="周报">周报</option>
            <option type="radio" value="月报">月报</option>
      
        </select>

        <ul class="mui-table-view mui-table-view-chevron">
        
        <c:forEach items="${loglist }" var="l" varStatus="i">
            <li class="mui-table-view-cell mui-media">
                <a class="mui-navigate-right" href="<%=basePath %>/log/loginfor?id=${l.id}">
                    <div class="mui-media-body">
                     	 ${l.title }
                        <p class='mui-ellipsis'>${l.experience }</p>
                    </div>
                </a>
            </li>
			</c:forEach>
            <!-- <li class="mui-table-view-cell mui-media">
                <a class="mui-navigate-right" href="infor.html">
                    <div class="mui-media-body">
                      	  用户2_2016_10_23_周报
                        <p class='mui-ellipsis'>one world，one dream。同一个世界，同一个梦想</p>
                    </div>
                </a>
            </li>

            <li class="mui-table-view-cell mui-media">
                <a class="mui-navigate-right" href="infor.html">
                    <div class="mui-media-body">
                      	  用户3_2016_10_23_周报
                        <p class='mui-ellipsis'>one world，one dream。同一个世界，同一个梦想</p>
                    </div>
                </a>
            </li> -->
        </ul>


    </div>

</div>
<script type="text/javascript">
    mui.init();
    mui('.mui-scroll-wrapper').scroll();
</script>
<script type="text/javascript">

	function change1(){
		var type = $("#type").val();
		window.location.href='<%=basePath%>/log/logList?type='+type;
	
	}
	
	
	

</script>
  </body>
</html>
