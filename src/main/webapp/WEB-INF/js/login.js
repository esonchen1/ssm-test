function myFunction(){
	var id0  = document.getElementById("accout").value;
	var passwd0 = document.getElementById("password0").value;
	if(accout==""){
		alert("学号不能为空");
		return false;
	}else if(passwd0==""){
		alert("密码不能为空");
		return false;
	}
}