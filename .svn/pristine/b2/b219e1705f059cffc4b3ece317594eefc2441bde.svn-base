$(function() {
	updateData();

	uppData();
});

// 获取数据
function updateData() {
	var id = $("#id").val();
	$.ajax({
		url : $("#path").val() + '/book/getBook.do',
		dataType : 'json',
		type : 'post',
		data : {
			id : id
		},
		success : function(data) {
			$("#utitle").val(data.title);
			$("#uauthor").val(data.author);
			$("#upublisher").val(data.publisher);
			$("#ucatalog").val(data.catalog);
			$("#ucount").val(data.count);
			$("#usummary").val(data.summary);
			$("#ubinding").val(data.binding);
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
			ConTentType: 'application/x-www-form-urlencoded;charset=UTF-8',
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