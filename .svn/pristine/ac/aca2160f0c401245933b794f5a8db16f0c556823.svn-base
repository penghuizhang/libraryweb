$(function() {
	addData();
	
	
});
// 添加
function addData() {
	$("#add_btn").on("click", function() {		
		$.ajax({
			url : $("#path").val() + '/book/addData.do',
			dataType:'json',
			type : 'POST',
			data : formData,
			success : function(data) {
				if(data==1){
					layer.msg("添加成功!");
					$("#add_form").find('div').find('div').find(":input").each(function() {
						$(this).val("");
					});
					var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
					parent.layer.close(index);  
					
					// 关闭layer
				}else{
					layer.alert("添加失败!!");
				}
			},
			error : function(data) {
				layer.alert("失败");
			}
		});

	});
}