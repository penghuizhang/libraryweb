 
$(function() {
	login();
});
function login() {
	$("#loginBtn").on("click", function() {
		var name = $("#adminname").val().trim();
		var pwd = $("#adminpwd").val().trim();
		//alert(pwd)
		var passwd = hexMD5(pwd);
		//alert(passwd)
		if (name == "" || pwd == "") {
			if (name == "") {
				layer.tips('用户名不能为空!', '#adminname');
			} else if (pwd == "") {
				layer.tips('密码不能为空', '#adminpwd');
			}
		} else {
			
			$.ajax({
				url : $("#path").val()+'/login/login.do',
				dataType : 'json',
				type : 'post',
				data : {
					adminname : name,
					adminpwd : passwd
				},
				success : function(data) {
					if (data == 1) {
						layer.msg("登录成功!!");
						window.location.href = "pages/index.jsp";
					} else {
						layer.msg("用户名或密码错误!!");
					}
				}
			});
		}
	});
	
	
	

}
