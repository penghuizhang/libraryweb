$(function() {
	// 分页
	loadPageDatas(1);
	//checkLoadData();
	form();
	
	//addForm();
	
});

// 首页加载
function loadPageDatas(index) {
	// 处理后的数据
	firstLoadData($("#path").val() +"/user/selData.do", index);
}

var checkForm = "";
function checkLoadData() {
	checkForm = $("#checkForm").serialize();
	checkForm =encodeURI(checkForm); 
	//alert(checkForm);
	firstLoadData($("#path").val() +"/user/selData.do?"+checkForm, 1);
}
// 数据展示
function loadData(list) {
	$("#tbody").empty();
	$.each(list,function(index, a) {
		$("#tbody").append(
			"<tr>" +
			"<input type='hidden' class='id' value='"+a.uid+"'/>"
			+ "<td>"+ a.uname+ "</td>" 
			+ "<td>"+ a.age+ "</td>"
			+ "<td>"+ a.gender+ "</td>"
			+ "<td>"+ (a.telephone==null?0:a.telephone)+ "</td>" 
			+ "<td>"+ a.email+ "</td>"
			+ "</tr>"
		);
	});	
	//uppForm();delForm();
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
