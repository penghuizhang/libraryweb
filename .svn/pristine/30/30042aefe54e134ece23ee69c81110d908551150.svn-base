$(function() {
	// 分页
	loadPageDatas(1);
	checkLoadData();
	form();
	
	addForm();
	
});

// 首页加载
function loadPageDatas(index) {
	// 处理后的数据
	firstLoadData($("#path").val() +"/record/selData.do", index);
}

var checkForm = "";
function checkLoadData() {
	$("#checkBtn").on("click", function() {
		checkForm = $("#checkForm").serialize();
		firstLoadData($("#path").val() +"/record/selData.do?"+checkForm, 1);
	});
}
// 数据展示
function loadData(list) {
	$("#tbody").empty();
	$.each(list,function(index, a) {
		$("#tbody").append(
			"<tr><input type='hidden' class='id' value='"+a.borrowRecordid+"'/>"
			+ "<td>"+ a.borrowtime+ "</td>" 
			+ "<td>"+ a.uname+ "</td>"
			+ "<td>"+ a.title+ "</td>"
			+ "<td>"+ a.adminname+ "</td>"
			+ "</tr>"
		);
	});	
	uppForm();
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

//修改
function uppForm(){
	$(".updateBook").on("click",function(){
		var id=$(this).parent().parent().find(".id").val();
		alert(id)
		layer.open({
			  type: 2,
			  title: '查看信息',
			  area: ['600px', '500px'],
			  closeBtn: [0,true],
			  skin: 'layui-layer-rim', //加上边框
			  shadeClose: true,
			  content: '../borrow/upp_record.jsp?borrowRecordid='+id,
			  end:function(){
				  BookListData($("#path").val() +"/record/selData.do?"+checkForm, 1);
			 }
		});
	});
}
