$(function() {
	//权限
	var adminqx=$("#adminqx").val();
	var name=$("#adminname").val();
	if(adminqx!="super"){
		$("#top").hide();
	}	
	// 分页
	loadPageDatas(1,adminqx,name);
	checkLoadData();
	form();
	addForm();
});

// 首页加载
function loadPageDatas(index,adminqx,name) {
	// 处理后的数据	
	firstLoadData($("#path").val() +"/admin/selData.do?adminname="+name+"&adminqx="+adminqx, index);
}

var checkForm = "";
function checkLoadData() {
	$("#checkBtn").on("click", function() {
		checkForm = $("#checkForm").serialize();
		firstLoadData($("#path").val() +"/admin/selData.do?"+checkForm, 1);
	});
}
// 数据展示
function loadData(list) {
	$("#tbody").empty();
	var quanxian=$("#adminqx").val();
	$.each(list,function(index, a) {
		$("#tbody").append(
			"<tr>" +
			"<input type='hidden' class='adminid' value='"+a.adminid+"'/>"
			+ "<td>"+ a.adminname+ "</td>" 
			+ "<td>"+ a.adminaccount+ "</td>"
			+ "<td>"+ a.adminphone+ "</td>"
			+ "<td class='table-operation-box'>"
			+ "<span class='table-operation  updateBook'><i class='iconfont icon-xiugai'></i>修改</span>"
			+ "<span class='table-operation delBook'><i class='iconfont icon-101'></i>删除</span></td>"
			+ "</tr>"
		);
	});	
	uppForm();
	if(quanxian=='super'){
		delForm();
	}else{
		$(".delBook").on("click",function(){
			layer.msg("点不动吧,呵呵");
		});
	}
}
function form() {
	layui.use('element', function() {
		var element = layui.element(); // 导航的hover效果、二级菜单等功能，需要依赖element模块
		// 监听导航点击
		element.on('nav(demo)', function(elem) {
			layer.msg(elem.text());
		});
	});
	
	layui.use([ 'form', 'laypage', 'common' ],function() {
		var form = layui.form(), laypage = layui.laypage, common = layui.common, layer = layui.layer;
		// 初始化当前位置
		common.NavTitle([ '后台书籍管理', '借阅查询' ]);//这个路径我没找到在哪封装的
		// 渲染表单
		form.render();
	});
}
//添加
function addForm(){
	$("#add").on("click",function(){
	layer.open({
		  type: 2,
		  title: '添加管理员',
		  area: ['600px', '500px'],
		  closeBtn: [0,true],
		  skin: 'layui-layer-rim', //加上边框
		  shadeClose: true,
		  content: '../user/add_user.jsp',
		  end:function(){
			  firstLoadData($("#path").val() +"/admin/selData.do?"+checkForm, 1);
		  }
		});
	});
}
//修改
function uppForm(){
	$(".updateBook").on("click",function(){
		var adminid=$(this).parent().parent().find(".adminid").val();
		layer.open({
			  type: 2,
			  title: '修改管理员相关信息',
			  area: ['600px', '500px'],
			  closeBtn: [0,true],
			  skin: 'layui-layer-rim', //加上边框
			  shadeClose: true,
			  content: '../user/upp_user.jsp?adminid='+adminid,
			  end:function(){
				  parent.location.reload(); 
				  //firstLoadData($("#path").val() +"/admin/selData.do?"+checkForm, 1);
			 }
		});
	});
}
//删除--假的后台方法未实现
function delForm(){
	$(".delBook").on("click",function(){
		var id=$(this).parent().parent().find(".adminid").val();
		layer.confirm('确定要删除此条信息么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				$.ajax({
					url:$("#path").val() +'/admin/delData.do',
					dataType:'json',
					type:'post',
					data:{adminid:id},
					success:function(data){
						if(data==1){
							layer.msg('删除成功', {icon: 1});
							 parent.location.reload(); 
						}else{
							layer.msg('删除失败',{icon:2});
						}
					},error:function(){
						layer.msg('失败!',{icon:2});
					}
				});
		});
	});
}