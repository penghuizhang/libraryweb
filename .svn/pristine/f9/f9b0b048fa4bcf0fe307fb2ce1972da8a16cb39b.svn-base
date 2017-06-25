$(function() {
	updateData();

	uppData();
});

// 获取数据
function updateData() {
	var adminid = $("#adminid").val();
	
	$.ajax({
		url : $("#path").val() + '/admin/getAdmin.do',
		dataType : 'json',
		type : 'post',
		data : {
			adminid : adminid
		},
		success : function(data) {
			$("#uadminname").val(data.adminname);
			$("#uadminaccount").val(data.adminaccount);
			$("#uadminpwd").val(data.adminpwd);
			$("#uadminphone").val(data.adminphone);
		}
	});
}
// 修改
function uppData() {
	$("#upp_btn").on("click", function() {
		var formData=$("#upp_form").serialize();
		$.ajax({
			url : $("#path").val() + '/admin/uppData.do',
			dataType:'json',
			type : 'POST',
			data : formData,
			success : function(data) {
				alert(data);
				if (data == 1) {
					alert("修改成功!");
				} else {
					alert("修改失败!!");
				}
				var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
				parent.layer.close(index);  // 关闭layer
			},
			error : function(data) {
				alert("失败");
			}
		});

	});
}