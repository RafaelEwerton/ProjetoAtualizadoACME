
	let nome = document.getElementById("#nome");
	let email = document.getElementById("#email");
	let telefone = document.getElementById("#telefone");
	getValorEditar();
	
	
	document.getElementById("btn-SalvarUsuario").addEventListener("click",function(){
		event.preventDefault();
		
		  let usuario = {
	      nome: nome.value,
	      email: email.value,
	      telefone: telefone.value,
	  }
	  
		  setValorBanco(usuario);
	    
	});
	
	
	document.getElementById("btn-ListarUsuario").addEventListener("click",function(){
		
		for(var i = 0; i < localStorage.length;i++){
			
			var usuario = JSON.parse(localStorage.getItem(i));
			if(usuario != null && usuario.edit === true){
				alert(usuario.edit);
			
			 usuario.edicao = false;
			 localStorage.setItem(i,JSON.stringify(usuario));
	
			}
		}location.href= "usuarios.jsp";
		
	});
	
	
	const getEdit = () =>{
		
	
		for(var i = 0; i < localStorage.length;i++){
			
			var usuario = JSON.parse(localStorage.getItem(i));
			if(usuario != null && usuario.edit === true){
			
			nome.value = usuario.nome;
			telefone.value = usuario.telefone;
			email.value = usuario.email;
	
			}
		}
	}
	
		if(verificarEmail){
			localStorage.setItem(localStorage.length,JSON.stringify(usuario));
			//alert("Usuario salvo com sucesso!");
	        location.href= "usuarios.jsp";
	        console.log(usuario.nome+usuario.telefone);
		}else if(verificarEdicao){
			alert("Usuario editado");
			location.href= "usuarios.jsp";
		}else{
			alert("Email já existe");
		}
