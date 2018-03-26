function myfunction(){
	var id1 = document.getElementById("account").value;
	var passwd1 = document.getElementById("password").value;
	var passwd2 = document.getElementById("password1").value;
	var name = document.getElementById("name0").value;
	var sex = document.getElementById("sex0").value;
	if(account==""){
		alert("学号不能为空");
		return false;
	}else if(passwd1==""){
		alert("密码不能为空");
		return false;
	}else if(passwd2==""){
		alert("确认密码不能为空");
		return false;
	}else if(passwd1!=passwd2){
		alert("两次输入密码不一致");
		return false;
	}else if(name==""){
		alert("姓名不能为空");
		return false;
	}else if(sex==""){
		alert("性别不能为空");
		return false;
	}else if(sex!=="男"&&sex!=="女"){
		alert("性别只能为男or女");
		return false;
	}else if(passwd2.length<4&&passwd2.length>12){
		alert("密码要在4-12位之间");
		return false;
	}

}