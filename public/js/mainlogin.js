function verpassword(){
	var inputPass = document.getElementById('senha')
	var btnShowPass = document.getElementById('button-password')
	
	if(inputPass.type === 'password'){
		inputPass.setAttribute('type','text')
		btnShowPass.classList.replace('bi-eye','bi-eye-slash')
	}else{
		inputPass.setAttribute('type','password')
		btnShowPass.classList.replace('bi-eye-slash','bi-eye')
	}
}