<!doctype html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.6">
<title>Login</title>

<link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/sign-in/">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/admin/css/bootstrap.min.css"/>
<meta name="theme-color" content="#563d7c">


<style>

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<link href="${pageContext.request.contextPath}/assets/admin/signin.css"
	rel="stylesheet">

</head>

<body class="text-center">
	<form class="form-signin" method="post" action="/UsuarioController">
	
		<h1 class="h3 mb-3 font-weight-normal" style="font-style: italic;">LOGIN</h1>
		
		<label for="email" class="sr-only">Email</label> <input type="email" name="email"
			id="email" class="form-control" placeholder="login" style="font-style: italic;" required
			autofocus> <br /> 
			
			<label for="senha" class="sr-only" style="font-style: italic;">Senha</label>
			<input type="password" name="senha" id="senha" class="form-control"
			placeholder="Senha" style="font-style: italic;" required> 
			
			<input class="btn btn-lg btn-primary btn-block" type="submit" id='btlogar' style="font-style: italic;" value="Logar">
			
			<input class="btn btn-lg btn-primary btn-block" type="submit" id="recSenha"  style="font-style: italic;" value="Cadastre-se">
		
		
		<p class="mt-5 mb-3 text-muted">&copy; 2019-2020</p>
		<p class="mt-5 mb-3 text-muted"></p>
		
	
	</form>
</body>

<script>

	const validar = (event) => {
	
	let email = document.getElementById("email");
	let senha = document.getElementById("senha");
	
	if(email.value() === "" || senha.value() === ""){
		alert('Campos não preenchidos!')
	} else if (email.value === "rafael@gmail.com" && senha.value === "123"){
		window.location.href = "http://localhost:9090/agenda-acme/admin/dashboard/index.jsp"
	} else {
		alert("Email ou Senha inválido!");
		window.location.href ='http://localhost:8080/agenda-acme/login.jsp';
	}
	}
	document.getElementById("btLogar").addEventListener("click", validar);
		
		
	}
	
	

  
</script>

</html>

