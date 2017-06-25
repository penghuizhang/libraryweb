$(function() {
	var adminqx=$("#adminqx").val();
	if(adminqx!='super'){
		$("#add_qx").hide();
	}
	// 分页
	loadPageDatas(1);
	checkLoadData();
	form();
	
	addForm();
	
});

// 首页加载
function loadPageDatas(index) {
	// 处理后的数据
	firstLoadData($("#path").val() +"/book/selData.do", index);
}

var checkForm = "";
function checkLoadData() {
	$("#checkBtn").on("click", function() {
		checkForm = $("#checkForm").serialize();
		checkForm =encodeURI(checkForm); 
		// var shuju = decodeURIComponent(checkForm,true); //将数据解码
		//    alert(checkForm);
		//alert(checkForm)
		firstLoadData($("#path").val() +"/book/selData.do?"+checkForm, 1);
	});
}
// 数据展示
function loadData(list) {
	$("#tbody").empty();
	var adminqx=$("#adminqx").val();
	$.each(list,function(index, a) {
		$("#tbody").append(
			"<tr>" +
			"<input type='hidden' class='id' value='"+a.id+"'/>"
			+ "<td>"+ a.title+ "</td>" 
			+ "<td>"+ a.author+ "</td>"
			+ "<td>"+ a.publisher+ "</td>"
			+ "<td>"+ (a.count==null?0:a.count)+ "</td>" 
			+ "<td>"+ a.binding+ "</td>"
			+ "<td class='table-operation-box'>"
			+ "<span class='table-operation  updateBook'><i class='iconfont icon-xiugai'></i>修改</span>"
			+ "<span class='table-operation delBook'><i class='iconfont icon-101'></i>删除</span></td>"
			+ "</tr>"
		);
	});	
	uppForm();
	if(adminqx =='super'){
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
		  title: '添加书籍',
		  area: ['600px', '500px'],
		  closeBtn: [0,true],
		  skin: 'layui-layer-rim', //加上边框
		  shadeClose: true,
		  content: '../book/add_book.jsp',
		  end:function(){
			  firstLoadData($("#path").val() +"/book/selData.do?"+checkForm, 1);
		  }
		});
	});
}
//修改
function uppForm(){
	$(".updateBook").on("click",function(){
		var id=$(this).parent().parent().find(".id").val();
		
		layer.open({
			  type: 2,
			  title: '修改图书相关信息',
			  area: ['600px', '500px'],
			  closeBtn: [0,true],
			  skin: 'layui-layer-rim', //加上边框
			  shadeClose: true,
			  content: '../book/upp_book.jsp?id='+id,
			  end:function(){
				  BookListData($("#path").val() +"/book/selData.do?"+checkForm, 1);
			 }
		});
	});
}
//删除--假的后台方法未实现
function delForm(){
	$(".delBook").on("click",function(){
		var id=$(this).parent().parent().find(".id").val();
		layer.confirm('确定要删除此条书籍信息么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				$.ajax({
					url:$("#path").val() +'/book/delData.do',
					dataType:'json',
					type:'post',
					data:{id:id},
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