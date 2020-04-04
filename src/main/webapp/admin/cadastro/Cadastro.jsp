<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="ISO-8859-1">
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/checkout/">
    <title>Cadastro Cliente</title>
    
    
  	<script src="${pageContext.request.contextPath}/assets/admin/js/sweetalert2.all.js"></script>
  	<script src="${pageContext.request.contextPath}/assets/admin/jqueryalert.min.js"></script>

    <link href="${pageContext.request.contextPath}/assets/admin/css/bootstrap.min.css" rel="stylesheet">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    <link href="form-validation.css" rel="stylesheet">
</head>
 <body class="bg-light">
    <div class="container" align="center">
        <div class="py-5 text-center">
          <h2 style="font-style:italic;color: blue; "> CADASTRO </h2> 
        </div>
      <div class="col-md-8 order-md-1">
        <form class="needs-validation">
          <div class="mb-3">
            <label for="email" style="font-style:italic;color: blue; "><span><strong>EMAIL</strong></span></label>
            <div class="input-group-prepend">              
            <input type="email" class="form-control" id="email" placeholder="Digite seu email" required>
            </div>
            <div class="invalid-feedback">
            </div>
          </div>

          <div class="mb-3">
            <label for="address" style="font-style:italic;color: blue; "><strong>SENHA</strong></label>
            <input type="password" class="form-control" id="password" placeholder="Digite sua senha" required>
            <div class="invalid-feedback">
            </div>
          </div>
          
          <div class="mb-3">
            <label for="address" style="font-style:italic;color: blue; "><strong>CONFIRMAR SENHA</strong></label>
            <input type="password" class="form-control" id="senhaConfirmada" placeholder="Confirme sua senha" required>
            <div class="invalid-feedback">
            </div>
          </div>

          <hr class="mb-4">
          <input class="btn btn-primary btn-lg btn-block" name="Registrar" id="Registrar" type="submit" value="REGISTRE-SE">
        </form>
      </div>
    </div>

    <footer class="my-5 pt-5 text-muted text-center text-small"></footer>>

</body>

<script>
	let senha = document.querySelector("#password");
	let email = document.querySelector("#email");
	let confirmarSenha = document.querySelector("#senhaConfirmada");
	
	const cadastro = () =>{
		  
	  let usuarios = {
	                  login: email.value,
	                  password: senha.value
	                };
	
	  if (email.value == "" || senha.value == "" || confirmarSenha.value == ""){  
		  error();
	  }
	  else if (senha.value != confirmarSenha.value || confirmarSenha.value != senha.value){
	      error();
	    }
	    else{
	      localStorage.setItem(usuarios.login, JSON.stringify(usuarios.password));
	      successo();
	      
	    }
	    clear();
	  };
	  
	  const Registrar = document.getElementById("Registrar").addEventListener("click",cadastro);
	  
	  function successo(){
		    swal.fire ( "cadastro realizado com sucesso! ").then((redirecione)=>{
					if(redirecione){
						window.location.assign("${pageContext.request.contextPath}""login.jsp");
				}
		    });
		  }
	  
	  function error(){
	    swal.fire ("erro: Digite corretamente!" );
	  }
</script>

</html>