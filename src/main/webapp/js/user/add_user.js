
$(function() {
	addData();
});


// 添加
function addData() {
	$("#add_btn").on("click", function() {
		//var formData=$("#add_form").serialize();
		var adminname = $("#adminname").val().trim();
		var adminpwd = $("#adminpwd").val().trim();
		var adminphone = $("#adminphone").val().trim();
		var adminaccount = $("#adminaccount").val().trim();
		var adminpwd2 = $("#adminpwd2").val().trim();
		//alert(adminname);
		
		
		
		var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
		if(!myreg.test($("#adminphone").val())) 
		{ 
		    alert('请输入有效的手机号码！'); 
		    return false; 
		}
		
		
		
		if(adminpwd != adminpwd2){
			alert("两次密码不一致");
		}else{
			if(adminpwd.length<6){
				alert("密码长度小于6位");
			}else{
				//alert(adminpwd);
		     	var passwd = hexMD5(adminpwd);
				//alert(formData);
		        //alert(passwd);
				//alert(formData);
				$.ajax({
					url : $("#path").val() + '/admin/addData.do',
					dataType:'json',
					type : 'POST',
					//data : formData,
					data:{
						adminname:adminname,
						adminpwd : passwd,
						adminaccount : adminaccount,
						adminphone : adminphone
					},
					success : function(data) {
						if(data==1){
							layer.msg("添加成功!");
							$("#add_form").find('div').find('div').find(":input").each(function() {
								$(this).val("");
							});
							var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
							parent.layer.close(index);  // 关闭layer
							 parent.location.reload(); 
						}else{
							layer.alert("添加失败!!");
						}
					},
					error : function(data) {
						layer.alert("失败");
					}
				});

			}
			
		}
		
		
	});
}