$(function() {
	updateData();

	uppData();
});

// 获取数据
function updateData() {
	var id = $("#id").val();
	//alert("id2 =="+id);
	$.ajax({
		url : $("#path").val() + '/record/getRecord.do',
		dataType : 'json',
		type : 'post',
		data : {
			borrowRecordid : id
		},
		success : function(data) {
			$("#uborrowtime").val(data.borrowtime);
			$("#uuname").val(data.uname);
			$("#uadminname").val(data.adminname);
			$("#utitle").val(data.title);
		
		}
	});
}
// 修改
function uppData() {
	$("#upp_btn").on("click", function() {
		var formData=$("#upp_form").serialize();
		$.ajax({
			url : $("#path").val() + '/book/uppData.do',
			dataType:'json',
			type : 'POST',
			data : formData,
			success : function(data) {
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