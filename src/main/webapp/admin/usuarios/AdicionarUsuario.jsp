<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

	<section class="content">
			
		  <section class="content-header">
			<form class="text-center border border-light p-5" action="#!">
			
			    <p class="h4 mb-4">Novo Usuario</p>
				
				<div class="form-group">
				    <!-- Name -->
				    <input name="nome" type="text" id="nome" class="form-control mb-4" placeholder="Name">
			    </div>
			
				<div class="form-group">
				    <!-- Email -->
				    <input name="email" type="email" id="email" class="form-control mb-4" placeholder="E-mail">
			    </div>
			
			   		 <!-- Enviar -->
			    <button id="btn-SalvarUsuario" class="btn btn-primary" type="submit">Salvar</button>
			    
			    	<!-- Listar -->
			    <button id="btn-ListarUsuario" class="btn btn-secondary" type="button">Usuarios</button>
			
			</form>
	     </section>
     
     </section>